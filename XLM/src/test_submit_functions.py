from XLM.src.utils import submit_functions, eval_function_output, add_declarations_and_definitions
from XLM.src.evaluation.evaluator import eval_moses_bleu2
import os
from pathlib import Path
if __name__ == '__main__': 
    # fn = ['/home/carl/TransCoder/output/bt_sa/1/hypotheses/hyp149.cpp_sa-llvm_sa.test_beam0.txt']
    # ref = '/home/carl/TransCoder/output/bt_sa/1/hypotheses/ref.cpp_sa-llvm_sa.test.txt'
    # id_path = '/home/carl/TransCoder/output/bt_sa/1/hypotheses/ids.cpp_sa-llvm_sa.test.txt'
    # outfolder = '/home/carl/TransCoder/output/bt_sa/1/eval_scripts/cpp_sa-llvm_sa.test'
    # results_stats, results = eval_function_output(ref, fn, id_path, "llvm_cpp", outfolder)
    # s = 'define internal void @platform_main_end ( i32 %33121236182768726873126381760 , i32 %1 ) #0 { %3 = alloca i32 , align 4 %4 = alloca i32 , align 4 store i32 %0 , i32 * %3 , align 4 store i32 %1 , i32 * %4 , align 4 %5 = load i32 , i32 * %3 , align 4 %6 = call i32 ( i8 * , ... ) @printf ( i8 * getelementptr inbounds ( [ 15 x i8 ] , [ 15 x i8 ] * @".str:checksum ▁" * "I need a string'
    # done = add_declarations_and_definitions(s)
    ref_path = '/home/carl/TransCoder/output/bt_sa/hknqsfyvkz/hypotheses/ref.cpp_sa-llvm_sa.test.txt'
    hyp_path = '/home/carl/TransCoder/output/bt_sa/hknqsfyvkz/hypotheses/hyp70.cpp_sa-llvm_sa.test_beam0.txt'
    src_path = '/home/carl/TransCoder/output/bt_sa/hknqsfyvkz/hypotheses/ref.llvm_sa-cpp_sa.test.txt'
    bleu = eval_moses_bleu2(ref_path, hyp_path, src_path)
    print(bleu)