define i64 @func_13 ( i8 zeroext %0 , i8 signext %1 ) { 
    %3 = alloca i8 
    %4 = alloca i8 
    %5 = alloca i8 
    store i8 %0 , i8 * %3 
    store i8 %1 , i8 * %4 
    store i8 4 , i8 * %5 
    %6 = load i8 , i8 * %3 
    %7 = zext i8 %6 to i32 
    %8 = load i32 * * * , i32 * * * * @g_3527 
    %9 = load i32 * * , i32 * * * %8 
    %10 = load i32 * , i32 * * %9 
    store i32 %7 , i32 * %10 
    %11 = load i8 , i8 * %5 
    %12 = zext i8 %11 to i64 
    ret i64 %12 
}
        


                 