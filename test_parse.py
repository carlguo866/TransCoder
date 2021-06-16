import pyllvm

if __name__ == "__main__": 
    s =  "@llvm.fabs.f32 ( float %9 )" 
    t = pyllvm.parseType(s)
    print(t)