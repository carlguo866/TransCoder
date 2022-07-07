from preprocessing.src.code_tokenizer import name_variables, get_llvm_type, detokenize_llvm, get_llvm_tokens_and_types, tokenize_cpp, extract_functions_cpp, tokenize_llvm, extract_functions_llvm, extract_arguments_llvm
import pyllvm
import re
import os
from multiprocessing import Pool, cpu_count
import subprocess 
from pathlib import Path
ref = open('/home/carl/TransCoder/output/bt_sa/nv2f045fpp/hypotheses/ref.cpp_sa-llvm_sa.test.txt','r').readlines()
def execute(i, file): 
    count = 0 
    file = str(file)
    fn = open(file,'r').readlines()
    print(file,flush=True)
    assert len(ref) == len(fn)
    for pred, exp in zip(fn, ref) : 
        if pred == exp: 
            count += 1
        # s = detokenize_llvm(string)
        # if not (s == '' and s == []): 
        #     if isinstance(s, list): 
        #         s = " ".join(s)
        #     output_name = f'/home/carl/TransCoder/temp/{file[file.rindex("/")+1:-3]}{j}.ll'
        #     outF = open(output_name,'w')
        #     outF.write(s)
        #     outF.close()
        #     result = subprocess.run(f"clang {output_name} -S", shell=True, 
        #                         stdout=subprocess.PIPE, stderr=subprocess.PIPE, executable='/bin/bash')
        #     if result.stderr.decode('UTF-8').find("error:") != -1: 
        #         print(result.stderr.decode('UTF-8')[:result.stderr.decode('UTF-8').index('\n')], flush=True)
        #     else:
        #         count += 1
    print( f"count {count}/{len(fn)}={count/len(fn)} {i}", flush=True)
    return i, count/len(fn)

if __name__ == '__main__': 
    if not os.path.isdir("/home/carl/TransCoder/temp"): 
        os.mkdir("/home/carl/TransCoder/temp")
    files = Path('/home/carl/TransCoder/output/bt_sa/nv2f045fpp/hypotheses').rglob('hyp*.cpp_sa-llvm_sa.test_beam0.txt')
    with Pool(cpu_count()) as pool:
        print('here')
        results = pool.starmap(execute,enumerate(files))
        
        for k, v in results: 
            print(k, v)
        results = [v for k, v in results] 
        print(max(results))
        # results = { k: v for k, v in results}
        # results = sorted(results.items(), key=lambda x: x[1], reverse=True) 
        # print(results)


