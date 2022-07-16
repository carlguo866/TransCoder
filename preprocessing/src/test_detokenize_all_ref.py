from preprocessing.src.code_tokenizer import name_variables, get_llvm_type, detokenize_llvm, get_llvm_tokens_and_types, tokenize_cpp, extract_functions_cpp, tokenize_llvm, extract_functions_llvm, extract_arguments_llvm
import pyllvm
import re
import subprocess

if __name__ == '__main__':
    file = '/home/carl/TransCoder/output/mt_sa_angha/5kykqqgj0s/hypotheses/ref.cpp_sa-llvm_sa.test.txt'
    fn = open(file,'r').readlines()
    count = 0 
    for j, string in enumerate(fn): 
        s = detokenize_llvm(string)
        if not (s == '' and s == []): 
            if isinstance(s, list): 
                s = " ".join(s)
            output_name = f'/home/carl/TransCoder/tmp/detokenize/{file[file.rindex("/")+1:-3]}{j}.ll'
            outF = open(output_name,'w')
            outF.write(s)
            outF.close()
            result = subprocess.run(f"clang {output_name} -S", shell=True, 
                                stdout=subprocess.PIPE, stderr=subprocess.PIPE, executable='/bin/bash')
            if result.stderr.decode('UTF-8').find("error:") != -1: 
                print(result.stderr.decode('UTF-8')[:result.stderr.decode('UTF-8').index('\n')], flush=True)
            else:  
                count += 1
        
    print(count)
    print(count/len(fn))