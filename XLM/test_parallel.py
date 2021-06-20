import torch

if __name__ == '__main__':
    data1 = torch.load("/home/carl/TransCoder/data/data_try5/cpp-llvm-.XLM-syml/test.cpp.pth")
    data2 = torch.load("/home/carl/TransCoder/data/data_try4/cpp-llvm-.XLM-syml/test.cpp.pth")
    dico1 = data1['dico']
    dico2 = data2['dico']
    print(data1['sentences'])
    print(type(data1['sentences']) )
    dico1.compare_sanity_check(dico2)
    print("len of dico1.word2id" + str(len(dico1.word2id)))
    print("len of dico2.word2id" + str(len(dico2.word2id)))
    for j in range(1,5):
        for i in range(30): 
            print(dico1.id2word[data1['sentences'][j*i]], end =" ")
        print()
    print()
    for j in range(1,5):
        for i in range(30): 
            print(dico2.id2word[data2['sentences'][j*i]], end =" ")
        print()