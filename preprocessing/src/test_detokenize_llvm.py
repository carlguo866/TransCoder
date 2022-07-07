from preprocessing.src.code_tokenizer import name_variables, get_llvm_type, detokenize_llvm, get_llvm_tokens_and_types, tokenize_cpp, extract_functions_cpp, tokenize_llvm, extract_functions_llvm, extract_arguments_llvm
import pyllvm
import re
import subprocess

if __name__ == '__main__':
    # file = '/home/carl/TransCoder/output/bt_sa/jydrihumj5/hypotheses/ref.cpp_sa-llvm_sa.test.txt'
    # fn = open(file,'r').readlines()
    # count = 0 
    # for j, string in enumerate(fn): 
    #     s = detokenize_llvm(string)
    #     if not (s == '' and s == []): 
    #         if isinstance(s, list): 
    #             s = " ".join(s)
    #         output_name = f'/home/carl/TransCoder/tmp/detokenize/{file[file.rindex("/")+1:-3]}{j}.ll'
    #         outF = open(output_name,'w')
    #         outF.write(s)
    #         outF.close()
    #         result = subprocess.run(f"clang {output_name} -S", shell=True, 
    #                             stdout=subprocess.PIPE, stderr=subprocess.PIPE, executable='/bin/bash')
    #         if result.stderr.decode('UTF-8').find("error:") != -1: 
    #             print(result.stderr.decode('UTF-8')[:result.stderr.decode('UTF-8').index('\n')], flush=True)
    #         else:  
    #             count += 1
        
    # print(count)
    # print(count/len(fn))


    fn = open('/home/carl/TransCoder/tokenized-output.txt', 'r').read()
    # fn = 'define dso_local i64 @mysignal ( i32 %0 , i64 %1 ) #0 { NEW_LINE %3 = alloca i32 NEW_LINE %4 = alloca i64 NEW_LINE store i32 %0 %3 NEW_LINE store i64 %1 %4 NEW_LINE %5 = load i32 %3 NEW_LINE %6 = load i64 %4 NEW_LINE %7 = call i64 @signal ( i32 %5 , i64 %6 ) NEW_LINE ret i64 %7 NEW_LINE }'
    s = detokenize_llvm(fn)
    outF = open('detokenized-output.ll', 'w')
    outF.write(s)
    outF.close()
    
    # s = ['define', 'dso_local', 'i8', '*', '@CTLOG_get0_name', '(', '%struct.TYPE_3__', '*', '%0', ')', '#0', '{', 'NEW_LINE', '%2', '=', 'alloca', '%struct.TYPE_3__', '*', 'NEW_LINE', 'store', '%struct.TYPE_3__', '*', '%0', ',', '%struct.TYPE_3__', '*', '*', '%2', 'NEW_LINE', '%3', '=', 'load', '%struct.TYPE_3__', '*', ',', '%struct.TYPE_3__', '*', '*', '%2', 'NEW_LINE', '%4', '=', 'getelementptr', 'inbounds', '%struct.TYPE_3__', ',', '%struct.TYPE_3__', '*', '%3', ',', 'i32', '0', ',', 'i32', '0', 'NEW_LINE', '%5', '=', 'load', 'i8', '*', ',', 'i8', '*', '*', '%4', 'NEW_LINE', 'ret', 'i8', '*', '%5', 'NEW_LINE', '}', 'NEW_LINE']
    # s = name_variables(s)
    # print(s)\
    # s = 'define dso_local i32 @main ( i32 %0 , * * i8 %1 ) #0 { NEW_LINE %3 = alloca i32 NEW_LINE %4 = alloca i32 NEW_LINE %5 = alloca * * i8 NEW_LINE store i32 0 %3 NEW_LINE store i32 %0 %4 NEW_LINE store * * i8 %1 %5 NEW_LINE br label %6 NEW_LINE 6: NEW_LINE %7 = call i32 ( ... ) @getpid ( ) NEW_LINE br label %6 NEW_LINE }'
    # s = 'define dso_local i32 @SSL_get_max_early_data ( * %struct.TYPE_3__ %0 ) #0 { NEW_LINE %2 = alloca * %struct.TYPE_3__ NEW_LINE store * %struct.TYPE_3__ %0 %2 NEW_LINE %3 = load * %struct.TYPE_3__ %2 NEW_LINE %4 = getelementptr inbounds %struct.TYPE_3__ %3 , i32 0 , i32 0 NEW_LINE %5 = load i32 %4 NEW_LINE ret i32 %5 NEW_LINE }'
    # #s = 'store * i8 getelementptr inbounds ( ARR 3 1 x i8 @.str.1 , i64 0 , i64 0 ) %1'
    # s = 'define dso_local i32 @EC_GROUP_get_point_conversion_form ( * %struct.TYPE_3__ %0 ) #0 { NEW_LINE %2 = alloca * %struct.TYPE_3__ NEW_LINE store * %struct.TYPE_3__ %0 %2 NEW_LINE %3 = load * %struct.TYPE_3__ %2 NEW_LINE %4 = getelementptr inbounds %struct.TYPE_3__ %3 , i32 0 , i32 0 NEW_LINE %5 = load i32 %4 NEW_LINE ret i32 %5 NEW_LINE }'
    # s = 'define dso_local * i8 @UI_get0_output_string ( * %struct.TYPE_3__ %0 ) #0 { NEW_LINE %2 = alloca * %struct.TYPE_3__ NEW_LINE store * %struct.TYPE_3__ %0 %2 NEW_LINE %3 = load * %struct.TYPE_3__ %2 NEW_LINE %4 = getelementptr inbounds %struct.TYPE_3__ %3 , i32 0 , i32 0 NEW_LINE %5 = load * i8 %4 NEW_LINE ret * i8 %5 NEW_LINE }'
    # s = 'define dso_local void @CRYPTO_gcm128_release ( * i32 %0 ) #0 { NEW_LINE %2 = alloca * i32 NEW_LINE store * i32 %0 %2 NEW_LINE %3 = load * i32 %2 NEW_LINE %4 = call i32 @OPENSSL_clear_free ( * i32 %3 , i32 4 ) NEW_LINE ret void NEW_LINE }'
    # s = detokenize_llvm(s)
    # print(s)