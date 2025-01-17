# Copyright (c) 2019-present, Facebook, Inc.
# All rights reserved.
#
# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.
#
import re
import itertools
import subprocess
from pathlib import Path
import os
import numpy as np
from preprocessing.src.utils import shuf_file, apply_bpe_file, get_vocab_file, learn_bpe_file, regroup_and_select_data, LocalExecutor, binarize_for_XLM_file, truncate_files, \
    get_nlines, process_and_tokenize_json_file, extract_functions_file, extract_functions_parallel, process_and_tokenize_json_file_parallel
import shutil

class Language:

    def __init__(self, root, lang):
        self.folder = Path(str(root)).joinpath(lang)
        assert self.folder.is_dir(
        ), f"failed to initalize Language {self.l}, there is no directory {str(self.folder)}"
        self.l = lang

    def process_json_and_tok(self, keep_comments, executor=None):
        if executor is None:
            executor = LocalExecutor()
        suffix = '.with_comments' if keep_comments else ''
        assert len(list(self.folder.glob('*.json.gz'))
                   ) > 0, f"there is no json in {str(self.folder)}"
        jsons = [json for json in self.folder.glob(
            '*.json.gz') if not Path(str(json).replace('.json.gz', suffix + '.tok')).is_file()]
        print(f"{self.l}: tokenizing {len(jsons)} json files ...",flush=True) 
        if len(jsons) > 0:
            jobs = executor.map_array(process_and_tokenize_json_file, jsons, itertools.repeat(
                self.l), itertools.repeat(keep_comments))
            for job in jobs:
                job.result()
        else:
            return

    def split_train_test_valid(self, keep_comments, parallel_size=0, test_size=1000, other_langs=None):
        suffix = '.with_comments' if keep_comments else ''
        # split train-test-valid
        # regroup
        all_tok = self.folder.joinpath(f'all{suffix}.tok')
        command = f"cd {self.folder}; cat *[0-4][0-9][0-9]{suffix}.tok > {all_tok}"
        proc = subprocess.run(command, shell=True, stdout=subprocess.PIPE,
                              stderr=subprocess.PIPE, executable='/bin/bash')
        print(os.getcwd())
        if not all_tok.exists(): 
            print("nothing exist for all.tok why??")
        size_gb = all_tok.stat().st_size
        n_lines = get_nlines(all_tok)
        print(f"all tok n_lines {self.l} {n_lines}",flush=True)
        
        # shuf
        # shuf_file(all_tok)

        # select test/valid/train and split train in 8
        subprocess.run(f"cat {all_tok} | head -n {test_size} > {self.folder.joinpath(f'valid{suffix}.tok')}",
                    shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        command = f"cat {all_tok} | head -n {2 * test_size} | tail -n {test_size}  > {self.folder.joinpath(f'test{suffix}.tok')}"
        subprocess.run(command, shell=True, stdout=subprocess.PIPE,
                    stderr=subprocess.PIPE)
        
        #parallel but historical overdue that shouldn't be used
        # if parallel_size !=0:
        #     for i, lang2 in enumerate(other_langs): 
        #         lang1_, lang2_ = (self.l, lang2) if self.l < lang2 else (lang2, self.l)
        #         subprocess.run(f"cat {all_tok} | head -n {(2+i)*test_size+parallel_size} | tail -n {parallel_size}> {self.folder.joinpath(f'valid.{lang1_}_sa-{lang2_}_sa.{self.l}.tok')}",
        #                     shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        #         print("test_size" + str(test_size))
        #         print("Head " + str((2+i)*test_size) + " Tail " +str((2+i)*test_size+parallel_size))
        #         subprocess.run(f"cat {all_tok} | head -n {(2+i)*(test_size+parallel_size)} | tail -n {parallel_size}> {self.folder.joinpath(f'test.{lang1_}_sa-{lang2_}_sa.{self.l}.tok')}",
        #                     shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        #         print("Head " + str((2+i)*test_size+parallel_size) + " Tail " +str((2+i)*(test_size+parallel_size)))
        #     subprocess.run(f"cat {all_tok} | tail -n {n_lines-(2+len(other_langs)-1)*(test_size+parallel_size)}  > {self.folder.joinpath(f'train{suffix}.tok')}",
        #                 shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        #     print("Head" + str((2+i)*(test_size+parallel_size))+ " Tail " + str(n_lines))
        # else: 
        subprocess.run(f"cat {all_tok} | tail -n {n_lines-2*test_size}  > {self.folder.joinpath(f'train{suffix}.tok')}",
                        shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        
        for i, lang2 in enumerate(other_langs): 
            lang1_, lang2_ = (self.l, lang2) if self.l < lang2 else (lang2, self.l)
            shutil.copyfile(self.folder.joinpath(f'test.tok'), self.folder.joinpath(f'test.{lang1_}_sa-{lang2_}_sa.{self.l}.tok'))
            shutil.copyfile(self.folder.joinpath(f'valid.tok'), self.folder.joinpath(f'valid.{lang1_}_sa-{lang2_}_sa.{self.l}.tok'))
            shutil.copyfile(self.folder.joinpath(f'train.tok'), self.folder.joinpath(f'train.{lang1_}_sa-{lang2_}_sa.{self.l}.tok'))
    
        subprocess.run(f'rm {all_tok}', shell=True, stdout=subprocess.PIPE,
                    stderr=subprocess.PIPE)
        #shufs 
        # shuf_file(all_tok)
        # shuf_file(self.folder.joinpath(f'test{suffix}.tok'))
        # shuf_file(self.folder.joinpath(f'valid{suffix}.tok'))
        # shuf_file(self.folder.joinpath(f'test{suffix}.tok'))
        return n_lines, size_gb

    def process(self, keep_comments, tok_executor=None, test_size=1000, parallel_size=0, split_executor=None, langs=None):
        suffix = '.with_comments' if keep_comments else ''
        print(f"{self.l}: process ...")
        other_langs = [lang.l for lang in langs if lang.l != self.l]
        #print("other_langs" + str(other_langs))
        #self.process_json_and_tok(keep_comments, tok_executor)
        if (self.folder.joinpath(f'train{suffix}.tok').is_file() and
            self.folder.joinpath(f'test{suffix}.tok').is_file() and
            self.folder.joinpath(f'valid{suffix}.tok').is_file()):
            print(f"{self.l}: train, test and valid for already exist. ")
            nlines = get_nlines(self.folder.joinpath(f'train{suffix}.tok'))
            size_gb = self.folder.joinpath(f'train{suffix}.tok').stat().st_size
        else:
            print(f"{self.l}: split train, test and valid ... ", flush=True)
            if split_executor is None:
                split_executor = LocalExecutor()
            job = split_executor.submit(
                self.split_train_test_valid, keep_comments, test_size=test_size, parallel_size=parallel_size, other_langs=other_langs)
            nlines, size_gb = job.result()
        print(f"{self.l}: train for is {nlines} lines and {size_gb / (1024 ** 3)} Go. ")
        # nlines, size = self.split_train_test_valid(keep_comments, test_size)
        return nlines, size_gb

    def extract_functions(self, keep_comments, test_size=1000, executor=None):
        if executor is None:
            executor = LocalExecutor()
        suffix = '.with_comments' if keep_comments else ''
        files = list(self.folder.glob(f'train{suffix}.tok'))
        files.append(self.folder.joinpath(f'test{suffix}.tok'))
        files.append(self.folder.joinpath(f'valid{suffix}.tok'))
        # files.extend(list(self.folder.glob(f'valid.*.{self.l}.tok')))
        # files.extend(list(self.folder.glob(f'test.*.{self.l}.tok')))
        # files.extend(list(self.folder.glob(f'train.*.{self.l}.tok')))
        print("files" + str(files))
        toks = [tok for tok in files if not tok.with_suffix('.functions_standalone.tok').is_file() ] # and tok.with_suffix('.functions_class.tok').is_file())
        if len(toks) > 0:
            jobs = executor.map_array(
                extract_functions_file, toks, itertools.repeat(self.l))
            for job in jobs:
                job.result()

    def extract_docstrings(self, keep_comments, test_size=1000, executor=None):
        if executor is None:
            executor = LocalExecutor()
        suffix = '.with_comments' if keep_comments else ''
        # files = list(self.folder.glob(
        #     f'train{suffix}.functions_class.tok'))
        files = list(self.folder.glob(
            f'train{suffix}.functions_standalone.tok'))
        # files.append(self.folder.joinpath(f'test{suffix}.functions_class.tok'))
        files.append(self.folder.joinpath(
            f'test{suffix}.functions_standalone.tok'))
        # files.append(self.folder.joinpath(
        #     f'valid{suffix}.functions_class.tok'))
        files.append(self.folder.joinpath(
            f'valid{suffix}.functions_standalone.tok'))
        toks = [tok for tok in files if not (tok.with_suffix(
            '.DS-f.ds.tok').is_file() and tok.with_suffix('.DS-f.f.tok').is_file())]
        if len(toks) > 0:
            jobs = executor.map_array(
                extract_docstrings, toks, itertools.repeat(self.l))
            for job in jobs:
                job.result()


class Dataset:

    def __init__(self, root, lang1, lang2, keep_comments, test_size=1000, parallel_size=0, lang3=None):
        self.test_size = test_size
        self.parallel_size=parallel_size
        self.root = Path(root)
        assert self.root.is_dir(
        ), f"failed to build the dataset, there is no directory {str(root)}"
        langs = [lang1, lang2]
        if lang3 is None:
            lang1, lang2 = sorted([lang1, lang2])
        else:
            lang1, lang2, lang3 = sorted([lang1, lang2, lang3])
        self.lang1 = Language(root, lang1)
        self.lang2 = Language(root, lang2)
        self.langs = [self.lang1, self.lang2]
        if lang3 is not None:
            self.lang3 = Language(root, lang3)
            self.langs.append(self.lang3)

        self.keep_comments = keep_comments
        self.suffix = ".with_comments" if keep_comments else ''
        self.folder = self.root.joinpath(
            f"{lang1}-{lang2}-{'' if lang3 is None else lang3}{self.suffix}")
        self.codes = self.folder.joinpath("codes")
        self.vocab = self.folder.joinpath("vocab")
        print(f"vocab {self.vocab}")
        self.sizes = {l.l: [] for l in self.langs}
        if not self.folder.is_dir():
            self.folder.mkdir()

    def process_languages(self, lang_executor=None, tok_executor=None, split_executor=None):
        if lang_executor is None:
            lang_executor = LocalExecutor()
        print("self.test_size" + str(self.test_size))
        langs = self.langs
        if langs[1].l == 'cpp' and langs[0].l == 'llvm': 
            langs = [langs[1], langs[0]]
        assert ( langs[0].l == 'cpp' and langs[1].l == 'llvm' ), f"process_languages_parallel self.langs problem {langs}"
        if tok_executor is None:
            tok_executor = LocalExecutor()
        for lang in langs:
            assert len(list(lang.folder.glob('*.json.gz'))
                    ) > 0, f"there is no json in {str(self.folder)}" 
        cpp_jsons = [json for json in langs[0].folder.glob(
                '*.json.gz') if not Path(str(json).replace('.json.gz', '.tok')).is_file() ]
        cpp_jsons = sorted([str(json) for json in cpp_jsons])
        print(f"cpp_jsons {cpp_jsons}")
        llvm_jsons = [json for json in langs[1].folder.glob(
                '*.json.gz') if not Path(str(json).replace('.json.gz', '.tok')).is_file() ]
        llvm_jsons = sorted([str(json) for json in llvm_jsons])
        if len(cpp_jsons)==len(llvm_jsons) and len(llvm_jsons) > 0:
            jobs = tok_executor.map_array(process_and_tokenize_json_file_parallel, cpp_jsons, llvm_jsons, itertools.repeat(
                langs[0].l), itertools.repeat(langs[1].l))
            for job in jobs:
                job.result()

        jobs = [lang_executor.submit(lang.process, self.keep_comments, tok_executor=tok_executor,
                                 test_size=self.test_size, split_executor=split_executor, parallel_size=self.parallel_size, langs=self.langs)
                for lang in self.langs]
        for i, lang in enumerate(self.langs):
            self.sizes[lang.l] = jobs[i].result()
        # jobs = lang_executor.submit(self.process_languages_parallel, self.langs, self.keep_comments, tok_executor=tok_executor,
        #                          test_size=self.test_size, split_executor=split_executor, parallel_size=self.parallel_size)
        # # for lang in self.langs:
        #      self.sizes[lang.l] = jobs.result()

    # def process_languages_parallel(self, langs, keep_comments, tok_executor=None, test_size=1000, parallel_size=0, split_executor=None):

        
    def train_bpe(self, ncodes, size_gb=None):

        if self.codes.is_file():
            print("bpe codes already exists.")
            return

        print("train bpe ...", flush=True)
        if size_gb is None:
            nlines = None
        else:
            size_gb_ = size_gb / len(self.langs)
            nlines = [int(self.sizes[l.l][0] * size_gb_ * 1024 **
                          3 / self.sizes[l.l][1]) for l in self.langs]
            print(
                f"we need to regroup {nlines} lines for {self.langs[0].l} and {self.langs[1].l} to gather {size_gb} Go")
        # train bpe on only 50 GB (25 each lang) of the tokenized train set
        data_train_bpe = self.folder.joinpath(
            f'train{self.suffix}.tok.{size_gb}GB')
        print(
            f"regroup and select data for training bpe in {data_train_bpe} ...",flush=True) 
        regroup_and_select_data(
            files=[l.folder.glob(
                f'train{self.suffix}.tok') for l in self.langs],
            nlines=nlines,
            output=data_train_bpe)

        print(f"training bpe on {data_train_bpe}...", flush=True)
        learn_bpe_file(data_train_bpe, ncodes, self.codes)

    def get_vocab(self, size_gb=None):

        if self.vocab.is_file():
            print("vocab already exists.")
            return

        print("get vocab ...")
        if size_gb is None:
            nlines = None
        else:
            size_gb_ = size_gb / len(self.langs)
            nlines = [int(self.sizes[l.l][0] * size_gb_ * 1024 **
                          3 / self.sizes[l.l][1]) for l in self.langs]
        # get vocab only from a subset of 40GB (20 each lang) of the bpe-ed train set
        data_get_vocab = self.folder.joinpath(
            f'train{self.suffix}.bpe.{size_gb}GB')
        print(f"regroup and select data in {data_get_vocab} to get vocab ...")
        regroup_and_select_data(
            files=[self.folder.glob(
                f'{l.l}.train{self.suffix}.bpe') for l in self.langs],
            nlines=nlines,
            output=data_get_vocab)
        print(f"computing vocab on {data_get_vocab}...")
        get_vocab_file(data_get_vocab, self.vocab)

    def apply_bpe(self, files_regex, use_vocab=False, executor=None):
        vocab = '' if use_vocab is False else self.vocab
        if executor is None:
            executor = LocalExecutor()
        jobs = []
        for l in self.langs:
            for f in l.folder.glob(files_regex):
                print("folder glob" + str(f),flush=True) 
                out = self.folder.joinpath(
                    f"{l.l}.{f.name}").with_suffix('.bpe')
                if not out.is_file():
                    print(f'apply bpe on {f} ...',flush=True) 
                    jobs.append(executor.submit(
                        apply_bpe_file, f, out, self.codes, vocab))
        for job in jobs:
            job.result()

    def binarize_for_XLM(self, files_regex, executor=None):
        print(f"binarize {files_regex} ...", flush=True)
        if executor is None:
            executor = LocalExecutor()
        jobs = []
        for l in self.langs:
            for f in self.folder.glob(f'{l.l}.{files_regex}'):
                if not Path(str(f) + '.pth').is_file():
                    print(f"binarizing {f} ...")
                    jobs.append(executor.submit(
                        binarize_for_XLM_file, f, self.vocab))
        for job in jobs:
            job.result()
    
    def extract_functions_and_apply_bpe(self, lang_executor=None, function_executor=None, bpe_executor=None):
        print("extract functions ... ", flush=True)
        if lang_executor is None:
            lang_executor = LocalExecutor()
        jobs = [lang_executor.submit(lang.extract_functions, self.keep_comments,
                                      self.test_size, function_executor) for lang in self.langs]
        lang1 = self.langs[0]
        lang2 = self.langs[1]
        assert lang1.l == "cpp" and lang2.l =='llvm'
        src_paths = list(lang1.folder.glob(f'valid.*.{lang1.l}.tok'))
        src_paths.extend(list(lang1.folder.glob(f'test.*.{lang1.l}.tok')))
        src_paths.extend(list(lang1.folder.glob(f'train.*.{lang1.l}.tok')))
        tgt_paths = list(lang2.folder.glob(f'valid.*.{lang2.l}.tok'))
        tgt_paths.extend(list(lang2.folder.glob(f'test.*.{lang2.l}.tok')))
        tgt_paths.extend(list(lang2.folder.glob(f'train.*.{lang2.l}.tok')))
        print("src_paths" + str(src_paths), flush=True)             
        print("tgt_paths" + str(tgt_paths), flush=True)   
        assert len(src_paths) == len(tgt_paths), f"len(src_paths){len(src_paths)} != len(tgt_paths){len(tgt_paths)}"                            
        for i in range(len(src_paths)): 
            jobs.append(lang_executor.submit(extract_functions_parallel, src_paths[i], tgt_paths[i], 'cpp', 'llvm'))
        for job in jobs:
            job.result()
        
        # #why do i need to truncate the files??
        # for split in ['test', 'valid']:
        #     truncate_files(l.folder.glob(
        #         f'{split}{self.suffix}.functions_standalone.tok') for l in self.langs)
        #     truncate_files(l.folder.glob(
        #         f'{split}.*.{l.l}.functions_standalone.tok') for l in self.langs)

        print("apply bpe on train ... ", flush=True)
        self.apply_bpe(
            f'train{self.suffix}.functions_*.tok', use_vocab=False, executor=bpe_executor)
        print("apply bpe on test and valid ...",flush=True)
        self.apply_bpe(f'test{self.suffix}.functions_*.tok',
                       use_vocab=False, executor=bpe_executor)
        self.apply_bpe(f'valid{self.suffix}.functions_*.tok',
                       use_vocab=False, executor=bpe_executor)
        print("apply bpe on parallel data ...",flush=True)
        self.apply_bpe(f'valid.*.*.functions_*.tok',
                       use_vocab=False, executor=bpe_executor)
        self.apply_bpe(f'test.*.*.functions_*.tok',
                       use_vocab=False, executor=bpe_executor)
        self.apply_bpe(f'train.*.*.functions_*.tok',
                       use_vocab=False, executor=bpe_executor)
