# Copyright (c) 2019-present, Facebook, Inc.
# All rights reserved.
#
# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.
#

import os
import numpy as np
import torch
from logging import getLogger
import json
import ast
import xml.etree.ElementTree as ET
import itertools
logger = getLogger()


BOS_WORD = '<s>'
EOS_WORD = '</s>'
PAD_WORD = '<pad>'
UNK_WORD = '<unk>'
SRCS_WORD = '<SRCS>'
DSTS_WORD ='<DSTS>'
MEM_START_WORD = '<MEM>'
MEM_END_WORD = '</MEM>'
END_WORD = '<END>'
special_dict = {0: BOS_WORD, 1:EOS_WORD,2:PAD_WORD, 
                3: UNK_WORD, 4:SRCS_WORD, 5:DSTS_WORD,
                6: MEM_START_WORD, 7: MEM_END_WORD, 8: END_WORD}


SPECIAL_WORD = '<special%i>'
SPECIAL_WORDS = 10

SEP_WORD = SPECIAL_WORD % 0
MASK_WORD = SPECIAL_WORD % 1


class Dictionary(object):

    def __init__(self, id2word, word2id, counts, dict_end=0):
        assert len(id2word) == len(word2id) == len(counts)
        self.id2word = id2word
        self.word2id = word2id
        self.counts = counts
        self.dict_end = dict_end
        self.bos_index = word2id[BOS_WORD]
        self.eos_index = word2id[EOS_WORD]
        self.pad_index = word2id[PAD_WORD]
        self.unk_index = word2id[UNK_WORD]
        self.check_valid()

    def __len__(self):
        """
        Returns the number of words in the dictionary.
        """
        return len(self.id2word)

    def __getitem__(self, i):
        """
        Returns the word of the specified index.
        """
        return self.id2word[i]

    def __contains__(self, w):
        """
        Returns whether a word is in the dictionary.
        """
        return w in self.word2id

    def __eq__(self, y):
        """
        Compare this dictionary with another one.
        """
        self.check_valid()
        y.check_valid()
        if len(self.id2word) != len(y):
            return False
        return all(self.id2word[i] == y[i] for i in range(len(y)))

    def compare_sanity_check(self, other):
        self.check_valid()
        other.check_valid()
        if self.id2word != other.id2word: 
            print("id2word is different")
        if self.word2id != other.word2id: 
            print("word2id is different")
        if self.counts != other.counts: 
            print("counts are different")
        assert self.bos_index == other.bos_index
        assert self.eos_index == other.eos_index
        assert self.pad_index == other.pad_index
        assert self.unk_index == other.unk_index 
        
    def check_valid(self):
        """
        Check that the dictionary is valid.
        """
        assert self.bos_index == self.dict_end+0
        assert self.eos_index == self.dict_end+1
        assert self.pad_index == self.dict_end+2
        assert self.unk_index == self.dict_end+3
        for i in range(SPECIAL_WORDS):
            # print(self.id2word[self.dict_end + len(special_dict) + i])
            # print(SPECIAL_WORD % i)
            assert (self.id2word[self.dict_end + len(special_dict) + i]) == \
                        SPECIAL_WORD % i 
        assert len(self.id2word) == len(self.word2id) == len(self.counts)
        assert set(self.word2id.keys()) == set(self.counts.keys())
        for i in range(len(self.id2word)):
            assert self.word2id[self.id2word[i]] == i
        # last_count = 1e18
        # for i in range(0, self.dict_end):
        #     count = self.counts[self.id2word[i]]
        #     assert count <= last_count
        #     last_count = count

    def index(self, word, no_unk=False):
        """
        Returns the index of the specified word.
        """
        if no_unk:
            return self.word2id[word]
        else:
            return self.word2id.get(word, self.unk_index)

    def word(self, index, no_unk=False):
        """
        Returns the word of the specified index.
        """
        if no_unk:
            return self.id2word[index]
        else:
            return self.id2word.get(index, self.unk_index)

    def max_vocab(self, max_vocab):
        """
        Limit the vocabulary size.
        """
        assert max_vocab >= 1
        init_size = len(self)
        self.id2word = {k: v for k, v in self.id2word.items() if k < max_vocab}
        self.word2id = {v: k for k, v in self.id2word.items()}
        self.counts = {k: v for k, v in self.counts.items()
                       if k in self.word2id}
        self.check_valid()
        logger.info("Maximum vocabulary size: %i. Dictionary size: %i -> %i (removed %i words)."
                    % (max_vocab, init_size, len(self), init_size - len(self)))

    def min_count(self, min_count):
        """
        Threshold on the word frequency counts.
        """
        assert min_count >= 0
        init_size = len(self)
        self.id2word = {k: v for k, v in self.id2word.items() 
                        if self.counts[self.id2word[k]] >= min_count or k < 4 + SPECIAL_WORDS}
        self.word2id = {v: k for k, v in self.id2word.items()}
        self.counts = {k: v for k, v in self.counts.items()
                       if k in self.word2id}
        self.check_valid()
        logger.info("Minimum frequency count: %i. Dictionary size: %i -> %i (removed %i words)."
                    % (min_count, init_size, len(self), init_size - len(self)))

    @staticmethod
    def read_vocab(vocab_path):
        """
        Create a dictionary from a vocabulary file.
        """
        skipped = 0
        assert os.path.isfile(vocab_path), vocab_path
        word2id = {BOS_WORD: 0, EOS_WORD: 1, PAD_WORD: 2, UNK_WORD: 3}
        for i in range(SPECIAL_WORDS):
            word2id[SPECIAL_WORD % i] = 4 + i
        counts = {k: 0 for k in word2id.keys()}
        f = open(vocab_path, 'r', encoding='utf-8')
        for i, line in enumerate(f):
            if '\u2028' in line:
                skipped += 1
                continue
            line = line.rstrip().split()
            if len(line) != 2:
                skipped += 1
                continue
            assert len(line) == 2, (i, line)
            # assert line[0] not in word2id and line[1].isdigit(), (i, line)
            assert line[1].isdigit(), (i, line)
            if line[0] in word2id:
                skipped += 1
                print('%s already in vocab' % line[0])
                continue
            if not line[1].isdigit():
                skipped += 1
                print('Empty word at line %s with count %s' % (i, line))
                continue
            word2id[line[0]] = 4 + SPECIAL_WORDS + i - skipped  # shift because of extra words
            counts[line[0]] = int(line[1])
        f.close()
        id2word = {v: k for k, v in word2id.items()}
        dico = Dictionary(id2word, word2id, counts)
        logger.info("Read %i words from the vocabulary file." % len(dico))
        if skipped > 0:
            logger.warning("Skipped %i empty lines!" % skipped)
        return dico

    @staticmethod
    def read_vocab_dynamorio(vocab_path):
        f = open(vocab_path).read()
        id2word = ast.literal_eval(f)
        i = 0
        while(True):
            if i in id2word.keys() : 
                i+=1
            else: 
                break
        dict_end = i
        for k,v in special_dict.items():
            id2word[i+k] = v
        i+= len(special_dict)
        for j in range(SPECIAL_WORDS):
            id2word[i+j] = SPECIAL_WORD % j

        word2id = {}
        for k, v in id2word.items():
            if v not in word2id.keys():
                word2id[v] = k
            else: 
                print(f"problem in converting to word2id {k, v}")
       # word2id = {v: k for k, v in id2word.items()}
        counts = {k: 0 for k in word2id.keys()}
        # print(f"len(word2id){len(word2id)}")
        # print(f"len(id2word){len(id2word)}")
        # print(f"len(counts){len(counts)}")
        # for k,v in counts.items():
        #     print(k,v)
        dico = Dictionary(id2word, word2id, counts, dict_end=dict_end)
        logger.info("Read %i words from the vocabulary file." % len(dico))
        return dico

    @staticmethod
    def index_data(path, bin_path, dico):
        """
        Index sentences with a dictionary.
        """
        if bin_path is not None and os.path.isfile(bin_path):
            print("Loading data from %s ..." % bin_path)
            data = torch.load(bin_path)
            assert dico == data['dico']
            return data

        positions = []
        sentences = []
        unk_words = {}

        # index sentences
        f = open(path, 'r', encoding='utf-8')
        for i, line in enumerate(f):
            if i % 1000000 == 0 and i > 0:
                print(i)
            s = line.rstrip().split()
            # skip empty sentences
            if len(s) == 0:
                print("Empty sentence in line %i." % i)
            # index sentence words
            count_unk = 0
            indexed = []
            for w in s:
                word_id = dico.index(w, no_unk=False)
                # if we find a special word which is not an unknown word, skip the sentence
                if 0 <= word_id < 4 + SPECIAL_WORDS and word_id != 3:
                    logger.warning(
                        'Found unexpected special word "%s" (%i)!!' % (w, word_id))
                    continue
                assert word_id >= 0
                indexed.append(word_id)
                if word_id == dico.unk_index:
                    unk_words[w] = unk_words.get(w, 0) + 1
                    count_unk += 1
            # add sentence
            positions.append([len(sentences), len(sentences) + len(indexed)])
            sentences.extend(indexed)
            sentences.append(1)  # EOS index
        f.close()

        # tensorize data
        positions = np.int64(positions)
        if len(dico) < 1 << 16:
            sentences = np.uint16(sentences)
        elif len(dico) < 1 << 31:
            sentences = np.int32(sentences)
        else:
            raise Exception("Dictionary is too big.")
        assert sentences.min() >= 0
        data = {
            'dico': dico,
            'positions': positions,
            'sentences': sentences,
            'unk_words': unk_words,
        }
        if bin_path is not None:
            print("Saving the data to %s ..." % bin_path)
            torch.save(data, bin_path, pickle_protocol=4)

        return data

    @staticmethod
    def index_data_dynamorio(raw_data, bin_path, dico):
        """
        Index sentences with a dictionary.
        """
        if bin_path is not None and os.path.isfile(bin_path):
            print("Loading data from %s ..." % bin_path)
            data = torch.load(bin_path)
            assert dico == data['dico']
            return data

        positions = []
        sentences = []
        unk_words = {}
        # index sentences
        
        for i, (code_id, timing, code_intel, code_xml) in enumerate(raw_data):
            block_root = ET.fromstring(code_xml)
            raw_instrs = []
            for _ in range(1): # repeat for duplicated blocks
                # handle missing or incomplete code_intel

                split_code_intel = itertools.chain((code_intel or '').split('\n'), itertools.repeat(''))
                for (instr, m_code_intel) in zip(block_root, split_code_intel):
                    raw_instr = []
                    opcode = int(instr.find('opcode').text)
                    raw_instr.extend([opcode, dico.index('<SRCS>')])
                    for src in instr.find('srcs'):
                        if src.find('mem') is not None:
                            raw_instr.append(dico.index('<MEM>'))
                            for mem_op in src.find('mem'):
                                raw_instr.append(int(mem_op.text))
                            raw_instr.append(dico.index('</MEM>'))
                        else:
                            raw_instr.append(int(src.text))

                    raw_instr.append(dico.index('<DSTS>'))
                    for dst in instr.find('dsts'):
                        if dst.find('mem') is not None:
                            raw_instr.append(dico.index('<MEM>'))
                            for mem_op in dst.find('mem'):
                                raw_instr.append(int(mem_op.text))
                            raw_instr.append(dico.index('</MEM>'))
                        else:
                            raw_instr.append(int(dst.text))

                    raw_instr.append(dico.index('<END>'))
                    raw_instrs.extend(raw_instr)
                if i < 5: 
                    print(code_intel)
                    print(code_xml,flush=True)
                    print(raw_instrs)
                
                # add sentence
                positions.append([len(sentences), len(sentences) + len(raw_instrs)])
                sentences.extend(raw_instrs)
                sentences.append(dico.eos_index)  # EOS index

        # tensorize data
        positions = np.int64(positions)
        if len(dico) < 1 << 16:
            sentences = np.uint16(sentences)
        elif len(dico) < 1 << 31:
            sentences = np.int32(sentences)
        else:
            raise Exception("Dictionary is too big.")
        assert sentences.min() >= 0
        data = {
            'dico': dico,
            'positions': positions,
            'sentences': sentences,
            'unk_words': unk_words,
        }
        if bin_path is not None:
            print("Saving the data to %s ..." % bin_path)
            torch.save(data, bin_path, pickle_protocol=4)

        return data
