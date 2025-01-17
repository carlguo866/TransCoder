from XLM.src.utils import submit_functions, eval_function_output, add_declarations_and_definitions
from XLM.src.evaluation.evaluator import eval_moses_bleu2
import os
from pathlib import Path
if __name__ == '__main__': 
    #fn = ['/home/carl/TransCoder/output/bt_sa/0/hypotheses/hyp128.cpp_sa-llvm_sa.test_beam0.txt']
    fn = ['/home/carl/TransCoder/output/bt_sa/94r5853n7l/hypotheses/ref.cpp_sa-llvm_sa.test.txt']
    ref = '/home/carl/TransCoder/output/bt_sa/94r5853n7l/hypotheses/hyp14.cpp_sa-llvm_sa.test_beam0.txt'
    id_path = '/home/carl/TransCoder/output/bt_sa/94r5853n7l/hypotheses/ids.cpp_sa-llvm_sa.test.txt'
    outfolder = '/home/carl/TransCoder/output/bt_sa/94r5853n7l/eval_scripts/cpp_sa-llvm_sa.test'
    results_stats, results = eval_function_output(ref, fn, id_path, "llvm_sa", outfolder)
    print(results_stats) 


    
    # ref_path = '/home/carl/TransCoder/output/bt_sa/00000/hypotheses/ref.cpp_sa-llvm_sa.test.txt'
    # hyp_path = '/home/carl/TransCoder/output/bt_sa/00000/hypotheses/hyp70.cpp_sa-llvm_sa.test_beam0.txt'
    # src_path = '/home/carl/TransCoder/output/bt_sa/00000/hypotheses/ref.llvm_sa-cpp_sa.test.txt'
    # bleu = eval_moses_bleu2(ref_path, hyp_path, src_path)
    # print(bleu)