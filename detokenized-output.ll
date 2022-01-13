%struct.TYPE_4__ = type { i8 * } 
 %struct.fuse_args = type { i32 , i32 } 
 @options = common dso_local global { i8 * } zeroinitializer 
 @pifs_opts = common dso_local global i32 0 
 @stderr = common dso_local global i32 0 
 @.str = private unnamed_addr constant [ 66 x i8 ] c "%s: Metadata directory must be specified with -o mdd=<directory>\0A\00" 
 @R_OK = common dso_local global i32 0 
 @W_OK = common dso_local global i32 0 
 @X_OK = common dso_local global i32 0 
 @.str.1 = private unnamed_addr constant [ 47 x i8 ] c "%s: Cannot access metadata directory '%s': %s\0A\00" 
 @errno = common dso_local global i32 0 
 @pifs_ops = common dso_local global i32 0 
 define dso_local i32 @main ( i32 %vsaiv , i8 * * %nnljm ) #0 { 
 %lneiq = alloca i32 
 %rkour = alloca i32 
 %fqegk = alloca i8 * * 
 %lctod = alloca i32 
 %gwqmp = alloca { i32 , i32 } 
 store i32 0 , i32 * %lneiq 
 store i32 %vsaiv , i32 * %rkour 
 store i8 * * %nnljm , i8 * * * %fqegk 
 %hyprt = load i32 , i32 * %rkour 
 %pskck = load i8 * * , i8 * * * %fqegk 
 %nqcit = call i64 @FUSE_ARGS_INIT ( i32 %hyprt , i8 * * %pskck ) 
 %aikhh = bitcast { i32 , i32 } * %gwqmp to i64 * 
 store i64 %nqcit , i64 * %aikhh 
 %exhpl = call i32 @memset ( { i8 * } * @options , i32 0 , i32 4 ) 
 %euick = load i32 , i32 * @pifs_opts 
 %vidpd = call i32 @fuse_opt_parse ( { i32 , i32 } * %gwqmp , { i8 * } * @options , i32 %euick , i32 * null ) 
 %ysuqr = icmp eq i32 %vidpd , -1 
 br i1 %ysuqr , label %zpnfr , label %cfkin 
 16: 
 store i32 -1 , i32 * %lneiq 
 br label %mllre 
 17: 
 %aazyn = load i8 * , i8 * * getelementptr inbounds ( { i8 * } , { i8 * } * @options , i32 0 , i32 0 ) 
 %wsaiz = icmp ne i8 * %aazyn , null 
 br i1 %wsaiz , label %kgrxr , label %vizqh 
 20: 
 %aqkjl = load i32 , i32 * @stderr 
 %yunxl = load i8 * * , i8 * * * %fqegk 
 %diulk = getelementptr inbounds i8 * , i8 * * %yunxl , i64 0 
 %saokp = load i8 * , i8 * * %diulk 
 %vfjeb = call i32 ( i32 , i8 * , i8 * , ... ) @fprintf ( i32 %aqkjl , i8 * getelementptr inbounds ( [ 66 x i8 ] , [ 66 x i8 ] * @.str , i64 0 , i64 0 ) , i8 * %saokp ) 
 store i32 -1 , i32 * %lneiq 
 br label %mllre 
 26: 
 %dlwsf = load i8 * , i8 * * getelementptr inbounds ( { i8 * } , { i8 * } * @options , i32 0 , i32 0 ) 
 %vhlcn = load i32 , i32 * @R_OK 
 %vehbs = load i32 , i32 * @W_OK 
 %uqyug = or i32 %vhlcn , %vehbs 
 %vqzyp = load i32 , i32 * @X_OK 
 %llndx = or i32 %uqyug , %vqzyp 
 %xppyq = call i32 @access ( i8 * %dlwsf , i32 %llndx ) 
 %exfrr = icmp eq i32 %xppyq , -1 
 br i1 %exfrr , label %tvfhj , label %ynveq 
 35: 
 %abgkd = load i32 , i32 * @stderr 
 %kqang = load i8 * * , i8 * * * %fqegk 
 %hwoua = getelementptr inbounds i8 * , i8 * * %kqang , i64 0 
 %bnalk = load i8 * , i8 * * %hwoua 
 %elnqi = load i8 * , i8 * * getelementptr inbounds ( { i8 * } , { i8 * } * @options , i32 0 , i32 0 ) 
 %finkx = load i32 , i32 * @errno 
 %rgxqw = call i8 * @strerror ( i32 %finkx ) 
 %jminr = call i32 ( i32 , i8 * , i8 * , ... ) @fprintf ( i32 %abgkd , i8 * getelementptr inbounds ( [ 47 x i8 ] , [ 47 x i8 ] * @.str.1 , i64 0 , i64 0 ) , i8 * %bnalk , i8 * %elnqi , i8 * %rgxqw ) 
 store i32 -1 , i32 * %lneiq 
 br label %mllre 
 44: 
 %uenmw = getelementptr inbounds { i32 , i32 } , { i32 , i32 } * %gwqmp , i32 0 , i32 1 
 %rvnfw = load i32 , i32 * %uenmw 
 %owish = getelementptr inbounds { i32 , i32 } , { i32 , i32 } * %gwqmp , i32 0 , i32 0 
 %fpede = load i32 , i32 * %owish 
 %wzaiz = call i32 @fuse_main ( i32 %rvnfw , i32 %fpede , i32 * @pifs_ops , i32 * null ) 
 store i32 %wzaiz , i32 * %lctod 
 %hkprw = call i32 @fuse_opt_free_args ( { i32 , i32 } * %gwqmp ) 
 %sewau = load i32 , i32 * %lctod 
 store i32 %sewau , i32 * %lneiq 
 br label %mllre 
 52: 
 %kpcee = load i32 , i32 * %lneiq 
 ret i32 %kpcee 
 } 
 declare dso_local i64 @FUSE_ARGS_INIT ( i32 , i8 * * ) #1 
 declare dso_local i32 @memset ( { i8 * } * , i32 , i32 ) #1 
 declare dso_local i32 @fuse_opt_parse ( { i32 , i32 } * , { i8 * } * , i32 , i32 * ) #1 
 declare dso_local i32 @fprintf ( i32 , i8 * , i8 * , ... ) #1 
 declare dso_local i32 @access ( i8 * , i32 ) #1 
 declare dso_local i8 * @strerror ( i32 ) #1 
 declare dso_local i32 @fuse_main ( i32 , i32 , i32 * , i32 * ) #1 
 declare dso_local i32 @fuse_opt_free_args ( { i32 , i32 } * ) #1 
 
