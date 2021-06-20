import pyllvm

if __name__ == "__main__": 
    s =  "(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.898, i64 0, i64 0), i32 %5)" 
    t = pyllvm.parseArgList(s)
    print(t)