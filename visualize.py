from preprocessing.src.code_tokenizer import detokenize_llvm
import os
if __name__ == '__main__': 
    hyp = open('/home/carl/TransCoder/output/bt_sa/6nnpikz5s1/hypotheses/hyp15.cpp_sa-llvm_sa.valid_beam0.txt', 'r')
    ref = open('/home/carl/TransCoder/output/bt_sa/6nnpikz5s1/hypotheses/ref.cpp_sa-llvm_sa.test.txt', 'r')
    directory = ['/home/carl/TransCoder/test/hyp','/home/carl/TransCoder/test/ref']
    for d in directory: 
        if not os.path.exists(d):
            os.makedirs(d)
    for i in range(1375): 
        hyp_file_name = f"/home/carl/TransCoder/test/hyp/{i}.txt"
        hyp_output = hyp.readline()
        with open(hyp_file_name, 'w') as f: 
            hyp_output = detokenize_llvm(hyp_output)
            f.write(hyp_output)

        ref_file_name = f"/home/carl/TransCoder/test/ref/{i}.txt"
        ref_output = ref.readline()
        with open(ref_file_name, 'w') as f: 
            ref_output = detokenize_llvm(ref_output)
            f.write(ref_output)