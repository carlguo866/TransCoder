#!/usr/bin/env python
# -*- coding: utf-8 -*-

# Copyright (c) 2019-present, Facebook, Inc.
# All rights reserved.
#
# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.
#


"""
Example: python data/vocab.txt data/train.txt
vocab.txt: 1stline=word, 2ndline=count
"""

import os
import sys
import torch
from src.logger import create_logger
from src.data.dictionary import Dictionary
import subprocess


def create_symlink(file_path, symlink):
    assert os.path.isfile(file_path)
    assert not os.path.isfile(symlink)
    process = subprocess.run(f"ln -s {file_path} {symlink}",
                             shell=True,
                             stdout=subprocess.PIPE,
                             stderr=subprocess.PIPE)
    assert os.path.isfile(symlink) and process.returncode == 0, f"failed to create symlink {symlink} for file {file_path} "


if __name__ == '__main__':

    dico = Dictionary.read_vocab_dynamorio("/home/carl/TransCoder/Ithemal/sym_dict_new.txt")
    logger = create_logger(None, 0)

    # voc_path = sys.argv[1]
    # txt_path = sys.argv[2]
    # bin_path = sys.argv[2] + '.pth'
    # assert os.path.isfile(voc_path)
    # assert os.path.isfile(txt_path)

    # dico = Dictionary.read_vocab(voc_path)
    # logger.info("")
    raw_data = torch.load('/home/carl/TransCoder/Ithemal/hsw_xlm.data')
    print(f"size {len(raw_data)}")
    split = int((len(raw_data) * 0.8))
    print(f"split {split}")
    split2 = int((len(raw_data) * 0.9))
    print(f"split2 {split2}")
    raw_train = raw_data[:split]
    raw_valid = raw_data[split+1: split2]
    raw_test = raw_data[split2+1:]
    file_dir = os.path.join("/home/carl/TransCoder/Ithemal", "hsw")
    if not os.path.isdir(file_dir):
        os.mkdir(file_dir)

    train = Dictionary.index_data_dynamorio(raw_train, '/home/carl/TransCoder/Ithemal/hsw/train.bb.pth', dico)
    valid = Dictionary.index_data_dynamorio(raw_valid, '/home/carl/TransCoder/Ithemal/hsw/valid.bb.pth', dico)
    test = Dictionary.index_data_dynamorio(raw_test, '/home/carl/TransCoder/Ithemal/hsw/test.bb.pth', dico)
    logger.info("train %i words (%i unique) in %i sentences." % (
        len(train['sentences']) - len(train['positions']),
        len(train['dico']),
        len(train['positions'])
    ))
    logger.info("valid %i words (%i unique) in %i sentences." % (
        len(valid['sentences']) - len(valid['positions']),
        len(valid['dico']),
        len(valid['positions'])
    ))
    logger.info("test %i words (%i unique) in %i sentences." % (
        len(test['sentences']) - len(test['positions']),
        len(test['dico']),
        len(test['positions'])
    ))
    symlink_dir = os.path.join(file_dir, 'symlink')
    if not os.path.isdir(symlink_dir):
            os.mkdir(symlink_dir)
    create_symlink('/home/carl/TransCoder/Ithemal/hsw/train.bb.pth', '/home/carl/TransCoder/Ithemal/hsw/symlink/train.bb.pth')
    create_symlink('/home/carl/TransCoder/Ithemal/hsw/valid.bb.pth', '/home/carl/TransCoder/Ithemal/hsw/symlink/valid.bb.pth')
    create_symlink('/home/carl/TransCoder/Ithemal/hsw/test.bb.pth', '/home/carl/TransCoder/Ithemal/hsw/symlink/test.bb.pth')
    for splt in ['train', 'valid', 'test']:
        data = eval(f"raw_{splt}")
        with open(f'/home/carl/TransCoder/Ithemal/hsw/symlink/{splt}.bb.label','w') as f: 
            for i, (code_id, timing, code_intel, code_xml) in enumerate(data):
                f.write(f'{timing}\n')
    print(test['sentences'][test['positions'][35][0]:test['positions'][35][1]])
    s = [ dico.word(index) for index in test['sentences'][test['positions'][35][0]:test['positions'][35][1]]] 
    print(s)
    # if len(data['unk_words']) > 0:
    #     logger.info("%i unknown words (%i unique), covering %.2f%% of the data." % (
    #         sum(data['unk_words'].values()),
    #         len(data['unk_words']),
    #         sum(data['unk_words'].values()) * 100. /
    #         (len(data['sentences']) - len(data['positions']))
    #     ))
    #     if len(data['unk_words']) < 30000:
    #         for w, c in sorted(data['unk_words'].items(), key=lambda x: x[1])[::-1][:30]:
    #             logger.info("%s: %i" % (w, c))

