declare i32  @sshbuf_free ( { i32 } * )  
 
 declare i32  @sshkey_save_private_blob ( { i32 } * , i8 * )  
 
 declare i32  @sshkey_private_to_fileblob ( { i32 } * , { i32 } * , i8 * , i8 * , i32 , i8 * , i32 )  
 
 @SSH_ERR_ALLOC_FAIL = internal global i32 zeroinitializer  
 @sshbuf_new = internal global {i32}* zeroinitializer  
 define dso_local i32 @sshkey_save_private ( { i32 } * %0 , i8 * %1 , i8 * %2 , i8 * %3 , i32 %4 , i8 * %5 , i32 %6 ) #0 { 
 %8 = alloca i32 
 %9 = alloca { i32 } * 
 %10 = alloca i8 * 
 %11 = alloca i8 * 
 %12 = alloca i8 * 
 %13 = alloca i32 
 %14 = alloca i8 * 
 %15 = alloca i32 
 %16 = alloca { i32 } * 
 %17 = alloca i32 
 store { i32 } * %0 , { i32 } * * %9 
 store i8 * %1 , i8 * * %10 
 store i8 * %2 , i8 * * %11 
 store i8 * %3 , i8 * * %12 
 store i32 %4 , i32 * %13 
 store i8 * %5 , i8 * * %14 
 store i32 %6 , i32 * %15 
 store { i32 } * null , { i32 } * * %16 
 %18 = call { i32 } * ( ... ) @sshbuf_new ( ) 
 store { i32 } * %18 , { i32 } * * %16 
 %19 = icmp eq { i32 } * %18 , null 
 br i1 %19 , label %20 , label %22 
 20: 
 %21 = load i32 , i32 * @SSH_ERR_ALLOC_FAIL 
 store i32 %21 , i32 * %8 
 br label %44 
 22: 
 %23 = load { i32 } * , { i32 } * * %9 
 %24 = load { i32 } * , { i32 } * * %16 
 %25 = load i8 * , i8 * * %11 
 %26 = load i8 * , i8 * * %12 
 %27 = load i32 , i32 * %13 
 %28 = load i8 * , i8 * * %14 
 %29 = load i32 , i32 * %15 
 %30 = call i32 @sshkey_private_to_fileblob ( { i32 } * %23 , { i32 } * %24 , i8 * %25 , i8 * %26 , i32 %27 , i8 * %28 , i32 %29 ) 
 store i32 %30 , i32 * %17 
 %31 = icmp ne i32 %30 , 0 
 br i1 %31 , label %32 , label %33 
 32: 
 br label %40 
 33: 
 %34 = load { i32 } * , { i32 } * * %16 
 %35 = load i8 * , i8 * * %10 
 %36 = call i32 @sshkey_save_private_blob ( { i32 } * %34 , i8 * %35 ) 
 store i32 %36 , i32 * %17 
 %37 = icmp ne i32 %36 , 0 
 br i1 %37 , label %38 , label %39 
 38: 
 br label %40 
 39: 
 store i32 0 , i32 * %17 
 br label %40 
 40: 
 %41 = load { i32 } * , { i32 } * * %16 
 %42 = call i32 @sshbuf_free ( { i32 } * %41 ) 
 %43 = load i32 , i32 * %17 
 store i32 %43 , i32 * %8 
 br label %44 
 44: 
 %45 = load i32 , i32 * %8 
 ret i32 %45 
 } 
