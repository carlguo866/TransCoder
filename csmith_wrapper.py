if __name__ == '__main__': 
    fn = open("/home/carl/TransCoder/input.c", 'r').read()
    fn = fn.replace("int ", "int32_t ")
    outF = open("input.c", "w")
    outF.write(fn)
    outF.close()
