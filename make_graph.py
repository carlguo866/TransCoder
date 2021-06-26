import matplotlib.pyplot as plt
from itertools import chain
if __name__ == '__main__': 
    log_reader = open("/home/carl/TransCoder/myoutput/train7.log" , 'r')
    log_reader2 = open("/home/carl/TransCoder/myoutput/train8.log" , 'r')
    scores = None 
    for log in log_reader: 
        if (log.find('__log__:') != -1): 
            the_dict = eval(log[log.index('__log__:')+8:])
            if scores == None: 
                scores = dict ( (k , []) for k, _ in the_dict.items() ) 
            for k,v in the_dict.items(): 
                scores[k].append(round(v,2))
    prev_epoch = len(scores['epoch'])
    for log in log_reader2: 
        if (log.find('__log__:') != -1): 
            the_dict = eval(log[log.index('__log__:')+8:])
            for k,v in the_dict.items(): 
                if k == 'epoch':
                    scores[k].append(prev_epoch+ v)
                else: 
                    scores[k].append(round(v,2))
    print(scores)
    plt.plot(scores['epoch'],scores['valid_cpp_sa-llvm_sa_mt_acc'], label='validation accuracy')
    plt.plot(scores['epoch'],scores['test_cpp_sa-llvm_sa_mt_acc'], label='test accuracy')
    plt.xlabel("epoch")
    plt.ylabel('translation accuracy')
    plt.title("C to LLVM Translation Accuracy")
    plt.legend()
    plt.savefig("c_llvm_acc.png")
    plt.clf()
    plt.plot(scores['epoch'],scores['valid_cpp_sa-llvm_sa_mt_comp_acc'], label='validation computation accuracy')
    plt.plot(scores['epoch'],scores['test_cpp_sa-llvm_sa_mt_comp_acc'], label='test computation accuracy')
    plt.xlabel("epoch")
    plt.ylabel('translation computation accuracy')
    plt.title("C to LLVM Translation Computation Accuracy")
    plt.savefig("c_llvm_comp_acc.png")
    plt.legend()
    plt.clf()

    plt.plot(scores['epoch'],scores['valid_cpp_sa-llvm_sa_mt_bleu'], label='validation bleu')
    plt.plot(scores['epoch'],scores['test_cpp_sa-llvm_sa_mt_bleu'], label='test bleu')
    plt.xlabel("epoch")
    plt.ylabel('translation bleu')
    plt.title("C to LLVM Translation BLEU Score")
    plt.legend()
    plt.savefig("c_llvm_bleu.png")
    plt.clf()

    plt.plot(scores['epoch'],scores['valid_cpp_sa-llvm_sa_mt_ppl'], label='validation perplexity')
    plt.plot(scores['epoch'],scores['test_cpp_sa-llvm_sa_mt_ppl'], label='test perplexity')
    plt.xlabel("epoch")
    plt.ylabel('translation perplexity')
    plt.title("C to LLVM Translation Perplexity")
    plt.legend()
    plt.savefig("c_llvm_ppl.png")