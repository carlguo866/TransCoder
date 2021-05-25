import torch

if __name__ == '__main__':
    data1 = torch.load("/home/carl/TransCoder/data/XLM-cpp-java-python-with-comments/test.cpp_sa-java_sa.cpp_sa.pth")
    data2 = torch.load("/home/carl/TransCoder/data/XLM-cpp-java-python-with-comments/test.cpp_sa-java_sa.java_sa.pth")
    dico1 = data1['dico']
    dico2 = data2['dico']
    print(data1['sentences'])
    print(type(data1['sentences']) )
    for i in range(30): 
        print(dico1.id2word[data1['sentences'][i]], end =" ")
    print()
    for i in range(30): 
        print(dico2.id2word[data2['sentences'][i]], end =" ")