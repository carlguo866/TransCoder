# Copyright (c) 2019-present, Facebook, Inc.
# All rights reserved.
#
# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.
#
import re
import subprocess
import typing as tp
from pathlib import Path
import json
import fileinput
import os
import random
from multiprocessing import Pool, cpu_count
import tqdm
import gzip
import itertools
from preprocessing.src import code_tokenizer as code_tokenizer
from preprocessing.src.timeout import timeout, TimeoutError

FAST = str(Path(__file__).parents[2].joinpath("XLM/tools/fastBPE/fast"))
XLM_PP = str(Path(__file__).parents[2].joinpath("XLM/preprocess.py"))

FALSY_STRINGS = {'off', 'false', '0'}
TRUTHY_STRINGS = {'on', 'true', '1'}


def bool_flag(s):
    """
    Parse boolean arguments from the command line.
    """
    if s.lower() in FALSY_STRINGS:
        return False
    elif s.lower() in TRUTHY_STRINGS:
        return True
    else:
        raise argparse.ArgumentTypeError("Invalid value for a boolean flag!")


def tokenize_json_helper(inpt):
    tokenizer, content, path, keep_comments = inpt
    content_tokenized = tokenizer(content, keep_comments)
    assert content_tokenized != '', f"{content} has no tokenization result"
    return content_tokenized, path

def tokenize_json_helper_parallel(inpt1, inpt2):
    tokenizer1, content1, path1, keep_comments1 = inpt1
    tokenizer2, content2, path2, keep_comments2 = inpt2
    content_tokenized1 = tokenizer1(content1, keep_comments1)
    content_tokenized2 = tokenizer2(content2, keep_comments2)
    # assert content_tokenized1 != '', f"{content1} has no tokenization result"
    return content_tokenized1, path1, content_tokenized2, path2


@timeout(3600)
def output_all_tokenized_results(docs, language, f_tok):
    pool = Pool(cpu_count())
    result_content_tokenized = tqdm.tqdm(pool.imap(
        tokenize_json_helper, docs), total=len(docs))
    for content_tokenized, path in result_content_tokenized:
        if len(content_tokenized) == 0:
            continue
        else:
            content_tokenized = ' '.join(content_tokenized)
            # if(language != "llvm"): 
            #     s = f"<DOCUMENT_ID=\"{path}\"> {content_tokenized} </DOCUMENT>"
            # else: 
            s = content_tokenized
            # s = f"<DOCUMENT_ID=\"{path}\"> {content_tokenized} </DOCUMENT>"
            # for some reason sometimes, some caracters of s
            # cannot be encoded into utf-8 and it failed to print, so use try/catch
            try:
                f_tok.write(s)
                f_tok.write('\n')
            except:
                continue

@timeout(3600)
def output_all_tokenized_results_parallel(lang1_docs, lang1, f_tok1, lang2_docs, lang2, f_tok2):
    assert len(lang1_docs) == len(lang2_docs)
    pool = Pool(cpu_count())
    result_content_tokenized = tqdm.tqdm(pool.starmap(
        tokenize_json_helper_parallel, zip(lang1_docs, lang2_docs)), total=len(lang1_docs))
    for content_tokenized1, path1, content_tokenized2, path2 in result_content_tokenized:
        if len(content_tokenized1) == 0 or len(content_tokenized2) == 0:
            continue
        else:
            content_tokenized1 = ' '.join(content_tokenized1)
            content_tokenized2 = ' '.join(content_tokenized2)
            # if(language != "llvm"): 
            #     s = f"<DOCUMENT_ID=\"{path}\"> {content_tokenized} </DOCUMENT>"
            # else: 
            # s = content_tokenized1
            # s = f"<DOCUMENT_ID=\"{path}\"> {content_tokenized} </DOCUMENT>"
            # for some reason sometimes, some caracters of s
            # cannot be encoded into utf-8 and it failed to print, so use try/catch
            try:
                f_tok1.write(content_tokenized1+'\n')
                f_tok2.write(content_tokenized2+'\n')
            except:
                continue


def process_and_tokenize_json_file(input_path, language, keep_comments):
    suffix = '.with_comments' if keep_comments else ''
    output_path = str(input_path).replace('.json.gz', suffix + '.tok')
    tokenizer = getattr(code_tokenizer, f"tokenize_{language}")
    docs = []
    #print(f"json input_path { input_path}", flush=True)
    for line in fileinput.input(str(input_path), openhook=fileinput.hook_compressed):
        x = json.loads(line)
        content = x['content']
        path = f"{x['repo_name']}/tree/master/{x['path']}"
        docs.append((tokenizer, content, path, keep_comments))
    f_tok = open(output_path, 'w', encoding='utf-8')
    try:
        output_all_tokenized_results(docs,language, f_tok)
    except TimeoutError:
        # The tokenization process is sometimes killed and it makes the multiprocessing hang forever
        f_tok.close()
        print('Program closed automatically after one hour')
        os._exit(0)

def process_and_tokenize_json_file_parallel(lang1_input, lang2_input, lang1, lang2):
    lang1_output = str(lang1_input).replace('.json.gz', '.tok') 
    lang2_output = str(lang2_input).replace('.json.gz', '.tok') 
    lang1_tokenizer = getattr(code_tokenizer, f"tokenize_{lang1}")
    lang2_tokenizer = getattr(code_tokenizer, f"tokenize_{lang2}")
    lang1_docs = []
    lang2_docs = []

    print(f"input path {lang1_input} {lang2_input}")
    count = 0
    lang2_possible_matches = list(gzip.open(str(lang2_input), 'r'))
    for i, x_line in enumerate(fileinput.input(str(lang1_input), openhook=fileinput.hook_compressed)):
        x = json.loads(x_line)
        x_content = x['content']
        x_path = f"{x['repo_name']}/tree/master/{x['path']}"
        

        isDone = False
        y = json.loads(lang2_possible_matches[i])
        if y['path'] == x['path'][:-2]+'.ll':
            y_content = y['content']
            y_path = f"{y['repo_name']}/tree/master/{y['path']}" 
            lang2_docs.append((lang2_tokenizer, y_content, y_path, False))
            isDone = True
            
        if not isDone: 
            count += 1
            if i < 5: 
                arr = lang2_possible_matches[0:i+10]
            else: 
                arr = lang2_possible_matches[i-5:i+5]
            for j, y_line in enumerate(arr): 
                y = json.loads(y_line)
                if y['path'] == x['path'][:-2]+'.ll':
                    y_content = y['content']
                    y_path = f"{y['repo_name']}/tree/master/{y['path']}" 
                    lang2_docs.append((lang2_tokenizer, y_content, y_path, False))
                    isDone = True
                    break 
        #  if i % 100 == 0: 
        #     print(f"x {x['path']} y {y['path']} \n x_content {x} \n y_content {y} \n")
        assert isDone, f"error, did not find found match i {i} {lang1_input} "
        lang1_docs.append((lang1_tokenizer, x_content, x_path, False))
    print(f"cpp to llvm not at position count {count}")
    f_tok1 = open(lang1_output, 'w', encoding='utf-8')
    f_tok2 = open(lang2_output, 'w', encoding='utf-8')
    try:
        output_all_tokenized_results_parallel(lang1_docs,lang1, f_tok1, lang2_docs,lang2, f_tok2)
    except TimeoutError:
        # The tokenization process is sometimes killed and it makes the multiprocessing hang forever
        f_tok1.close()
        f_tok2.close()
        print('Program closed automatically after one hour')
        os._exit(0)

def extract_functions_file(input_path, language, test_size=None):
    print(f"extacting functions for {str(input_path)}")
    output_path_sa = input_path.with_suffix('.functions_standalone.tok')
    # output_path_class = input_path.with_suffix('.functions_class.tok')

    if output_path_sa.is_file(): #and output_path_class.is_file()
        return
    with input_path.open('r', encoding="utf-8") as f:
        # print(f"{language}input_path{input_path}")
        lines = f.readlines()
        # print(f"input lines{lines}")
    extract_auto_code = getattr(
        code_tokenizer, f"extract_functions_{language}")
    get_function_name = getattr(
        code_tokenizer, f"get_function_name_{language}")
    defs = dict()
    with output_path_sa.open('w', encoding='utf-8') as f_sa:
            pool = Pool(cpu_count())
            result_functions = tqdm.tqdm(pool.imap(
                extract_auto_code, lines), total=len(lines))
            print("printing extracted functions to file " + str(output_path_sa))
            for func_standalone, _ in result_functions:
                # for i in range(5):
                #     print("func_standalone[i][5]"+func_standalone[i][5])
                for func in func_standalone:
                    if language == 'llvm':  
                        name = get_function_name(func)
                        if name not in defs.keys(): 
                            f_sa.write(str(func))
                            f_sa.write('\n')
                            if re.fullmatch("@main", name) == None:  # re.fullmatch("@func_\d+", name) == None and
                                defs[name] = str(func)
                            # else: 
                            #     # print("name for func func" + name)
                    else:
                        f_sa.write(str(func))
                        f_sa.write('\n')
                    # print("nammmmme" + str(name))              
                # for func in func_class:
                #     f_class.write(func)
                #     f_class.write('\n')

def extract_functions_parallel(src_path, tgt_path, src_lang, tgt_lang , test_size=None):
    print(f"extacting parallel functions for {str(src_path)} and {str(tgt_path)} ")
    src_output_path_sa = src_path.with_suffix('.functions_standalone.tok')
    tgt_output_path_sa = tgt_path.with_suffix('.functions_standalone.tok')

    if src_output_path_sa.is_file() or tgt_output_path_sa.is_file(): 
        return
    with src_path.open('r', encoding="utf-8") as f:
        src_lines = f.readlines()
    with tgt_path.open('r', encoding="utf-8") as f:
        tgt_lines = f.readlines()
    src_extract_func = getattr(
        code_tokenizer, f"extract_functions_{src_lang}")
    tgt_extract_func = getattr(
        code_tokenizer, f"extract_functions_{tgt_lang}")
    src_function_name = getattr(
        code_tokenizer, f"get_function_name_{src_lang}")
    tgt_function_name = getattr(
        code_tokenizer, f"get_function_name_{tgt_lang}")
    
    print(f"extracting parallel functions to {src_output_path_sa} and {tgt_output_path_sa}", flush=True)
    assert len(src_lines) == len(tgt_lines), f"src_lines and tgt_lines not the same length len(src_lines) {len(src_lines)} len(tgt_lines) {len(tgt_lines)}"
    for i in range(len(src_lines)): 
        src_functions = src_extract_func(src_lines[i])
        # print("src_functions[0][0]" + str(src_functions[0][0]))
        src_dict = {src_function_name(func) != "" and src_function_name(func) : func for func in src_functions[0] }
        tgt_functions = tgt_extract_func(tgt_lines[i]) 
        tgt_dict = {tgt_function_name(func) != "" and tgt_function_name(func) : func for func in tgt_functions[0] }
        if i <5:print(src_dict.keys()) 
        with src_output_path_sa.open('a+', encoding='utf-8') as src_sa:
            with tgt_output_path_sa.open('a+', encoding='utf-8') as tgt_sa:
                for k, v in src_dict.items(): 
                    if '@'+k in tgt_dict.keys(): 
                        chars = 'abcdefghijklmnopqrstuvwxyz'
                        name = k + ''.join(random.choice(chars) for _ in range(5)) 
                        #print("type(name)" + str(type(name)))
                        # print("nameeeee " + name)
                        #print("type(src_dict[k])" + str(type(src_dict[k])))
                        
                        src_sa.write(name + " | " + src_dict[k])
                        src_sa.write('\n')
                        tgt_sa.write(name + " | " + tgt_dict['@'+k])
                        tgt_sa.write('\n')


def get_nlines(file_path):
    assert file_path.is_file()
    process = subprocess.run(
        f"wc -l {file_path}", shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    if process.returncode == 0:
        return int(process.stdout.decode().split(' ')[0])
    else:
        return None


def head(file_path, n):
    n = int(n)
    with file_path.open('r', encoding='utf-8') as f:
        h = [next(f) for i in range(n)]
    return h


def truncate_files(file_paths):
    all_lines = []
    # print("file_paths" + str(file_paths))
    for paths in file_paths:
        # print("path" + str(paths))
        for f in paths: 
            with f.open('r', encoding='utf-8') as f:
                lines = f.readlines()
                all_lines.append(lines)
        # print(all_lines)
    mini = min([len(lines) for lines in all_lines])
    for paths in file_paths:
        for f, i in enumerate(paths):
            if len(all_lines[i]) > mini:
                with f.open('w', encoding='utf-8') as f:
                    for j in range(mini):
                        f.write(all_lines[i][j])


def write_head(file_path, n):
    n = int(n)
    with file_path.open('r', encoding='utf-8') as f:
        h = [next(f) for i in range(n)]
    with file_path.open('w', encoding='utf-8') as f:
        f.write(''.join(h))
    return h


def shuf_file(file_path):
    process = subprocess.run(f"shuf {file_path} -o {file_path}",
                             shell=True,
                             stdout=subprocess.PIPE,
                             stderr=subprocess.PIPE)
    assert process.returncode == 0, f"failed to shuffle {file_path}"


def apply_bpe_file(file_path, output, codes, vocab=None):
    if vocab is None:
        vocab = ''
    process = subprocess.run(f"{FAST} applybpe {output} {file_path} {codes} {vocab}",
                             shell=True,
                             stdout=subprocess.PIPE,
                             stderr=subprocess.PIPE)
    
    assert Path(
        output).is_file and process.returncode == 0, f"failed to apply bpe on {file_path}, command: \n {FAST} applybpe {output} {file_path} {codes} {vocab}"


def learn_bpe_file(file_path, ncodes, codes):
    process = subprocess.run(f"{FAST} learnbpe {ncodes} {file_path} > {str(codes)} ",
                             shell=True,
                             stdout=subprocess.PIPE,
                             stderr=subprocess.PIPE)
    assert process.returncode == 0, f"failed to learn bpe on {str(file_path)}"
    assert Path(
        f"{str(codes)}").is_file, f"failed to output codes, cannot find codes {str(codes)}"
    if ncodes > 50000:
        codes.write_text(''.join(head(codes, 50000)), encoding='utf-8')


def get_vocab_file(file_path, vocab):
    process = subprocess.run(f"{FAST} getvocab {file_path} > {str(vocab)}.all",
                             shell=True,
                             stdout=subprocess.PIPE,
                             stderr=subprocess.PIPE)
    process2 = subprocess.run(f"head -n 45000 {str(vocab)}.all > {str(vocab)}",
                              shell=True,
                              stdout=subprocess.PIPE,
                              stderr=subprocess.PIPE)
    assert vocab.is_file and process.returncode == 0 and process2.returncode == 0, f"failed to get vocab for {file_path}"


def binarize_for_XLM_file(file_path, vocab):
    print("the command" + f"python {XLM_PP} {vocab} {file_path}")
    process = subprocess.run(f"python {XLM_PP} {vocab} {file_path}",
                             shell=True,
                             stdout=subprocess.PIPE,
                             stderr=subprocess.PIPE)
    assert Path(f'{file_path}.pth').is_file and process.returncode == 0, f"failed to binarize for XLM the file {file_path} \n command: python {XLM_PP} {vocab} {file_path} "


def regroup_and_select_data(files, output, nlines=None):
    """
        files : [files] or [[files1],[files2]]
        nlines : [n1]
        if files = [files] it will regroup files, shuffle them and select nlines[0] of itselfself. write the res in output.
        if files = [[files1],[files2]] it will regroup, shuffle and select nlines[0] lines files1 (resp. files2),
        and concat these res in ouput.
    """
    if output.is_file():
        return
        
    print(str(files))

    assert nlines is None or len(files) == len(nlines)
    if nlines is None:
        nlines = [float('Inf') for i in range(len(files))]

    for files_, nlines_ in zip(files, nlines):
        missing_lines = nlines_
        for f in files_:
            n = get_nlines(f)
            if n < missing_lines:
                print(f"adding {n} lines of {f}")
                proc = subprocess.run(
                    f"cat {f} >> {output}", shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE, executable='/bin/bash')
                missing_lines = missing_lines - n
            else:
                print(f"adding {missing_lines} lines of {f}")
                proc = subprocess.run(f"cat {f} | head -n {missing_lines} >> {output}", shell=True,
                                      stdout=subprocess.PIPE, stderr=subprocess.PIPE, executable='/bin/bash')
                break


def create_symlink(file_path, symlink):
    assert file_path.is_file()
    assert not symlink.is_file()
    process = subprocess.run(f"ln -s {file_path} {symlink}",
                             shell=True,
                             stdout=subprocess.PIPE,
                             stderr=subprocess.PIPE)
    assert symlink.is_file(
    ) and process.returncode == 0, f"failed to create symlink {symlink} for file {file_path} "


class DelayedJob:
    """Future-like object which delays computation
    """

    def __init__(self, func: tp.Callable[..., tp.Any], *args: tp.Any, **kwargs: tp.Any) -> None:
        self.func = func
        self.args = args
        self.kwargs = kwargs
        self._result: tp.Optional[tp.Any] = None
        self._computed = False

    def done(self) -> bool:
        return True

    def result(self) -> tp.Any:
        if not self._computed:
            self._result = self.func(*self.args, **self.kwargs)
            self._computed = True
        return self._result


class LocalExecutor:
    """Executor which run sequentially and locally
    (just calls the function and returns a FinishedJob)
    """

    def submit(self, fn: tp.Callable[..., tp.Any], *args: tp.Any, **kwargs: tp.Any) -> DelayedJob:
        return DelayedJob(fn, *args, **kwargs)

    def map_array(self, fn, *arg_iterators):
        grouped_args = zip(*arg_iterators)
        return [self.submit(fn, *g) for g in grouped_args]
