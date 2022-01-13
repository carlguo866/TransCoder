from preprocessing.src.code_tokenizer import detokenize_llvm, get_llvm_tokens_and_types, tokenize_llvm
import pyllvm
import re
from time import time

def main():
    #fn = open("/home/carl/TransCoder/input.ll", 'r').read()
    #fn = open("/home/carl/TransCoder/input_test.ll", 'r').read()
    #test tokenizer
    fn ="; ModuleID = '/home/carl/AnghaBench/pifs/src/extr_\u03c0fs.c_main.c'\nsource_filename = \"/home/carl/AnghaBench/pifs/src/extr_\\CF\\80fs.c_main.c\"\ntarget datalayout = \"e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128\"\ntarget triple = \"x86_64-unknown-linux-gnu\"\n\n%struct.TYPE_4__ = type { i8* }\n%struct.fuse_args = type { i32, i32 }\n\n@options = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8\n@pifs_opts = common dso_local global i32 0, align 4\n@stderr = common dso_local global i32 0, align 4\n@.str = private unnamed_addr constant [66 x i8] c\"%s: Metadata directory must be specified with -o mdd=<directory>\\0A\\00\", align 1\n@R_OK = common dso_local global i32 0, align 4\n@W_OK = common dso_local global i32 0, align 4\n@X_OK = common dso_local global i32 0, align 4\n@.str.1 = private unnamed_addr constant [47 x i8] c\"%s: Cannot access metadata directory '%s': %s\\0A\\00\", align 1\n@errno = common dso_local global i32 0, align 4\n@pifs_ops = common dso_local global i32 0, align 4\n\n; Function Attrs: noinline nounwind optnone uwtable\ndefine dso_local i32 @main(i32 %0, i8** %1) #0 {\n  %3 = alloca i32, align 4\n  %4 = alloca i32, align 4\n  %5 = alloca i8**, align 8\n  %6 = alloca i32, align 4\n  %7 = alloca %struct.fuse_args, align 4\n  store i32 0, i32* %3, align 4\n  store i32 %0, i32* %4, align 4\n  store i8** %1, i8*** %5, align 8\n  %8 = load i32, i32* %4, align 4\n  %9 = load i8**, i8*** %5, align 8\n  %10 = call i64 @FUSE_ARGS_INIT(i32 %8, i8** %9)\n  %11 = bitcast %struct.fuse_args* %7 to i64*\n  store i64 %10, i64* %11, align 4\n  %12 = call i32 @memset(%struct.TYPE_4__* @options, i32 0, i32 4)\n  %13 = load i32, i32* @pifs_opts, align 4\n  %14 = call i32 @fuse_opt_parse(%struct.fuse_args* %7, %struct.TYPE_4__* @options, i32 %13, i32* null)\n  %15 = icmp eq i32 %14, -1\n  br i1 %15, label %16, label %17\n\n16:                                               ; preds = %2\n  store i32 -1, i32* %3, align 4\n  br label %52\n\n17:                                               ; preds = %2\n  %18 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @options, i32 0, i32 0), align 8\n  %19 = icmp ne i8* %18, null\n  br i1 %19, label %26, label %20\n\n20:                                               ; preds = %17\n  %21 = load i32, i32* @stderr, align 4\n  %22 = load i8**, i8*** %5, align 8\n  %23 = getelementptr inbounds i8*, i8** %22, i64 0\n  %24 = load i8*, i8** %23, align 8\n  %25 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %21, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i8* %24)\n  store i32 -1, i32* %3, align 4\n  br label %52\n\n26:                                               ; preds = %17\n  %27 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @options, i32 0, i32 0), align 8\n  %28 = load i32, i32* @R_OK, align 4\n  %29 = load i32, i32* @W_OK, align 4\n  %30 = or i32 %28, %29\n  %31 = load i32, i32* @X_OK, align 4\n  %32 = or i32 %30, %31\n  %33 = call i32 @access(i8* %27, i32 %32)\n  %34 = icmp eq i32 %33, -1\n  br i1 %34, label %35, label %44\n\n35:                                               ; preds = %26\n  %36 = load i32, i32* @stderr, align 4\n  %37 = load i8**, i8*** %5, align 8\n  %38 = getelementptr inbounds i8*, i8** %37, i64 0\n  %39 = load i8*, i8** %38, align 8\n  %40 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @options, i32 0, i32 0), align 8\n  %41 = load i32, i32* @errno, align 4\n  %42 = call i8* @strerror(i32 %41)\n  %43 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %36, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i8* %39, i8* %40, i8* %42)\n  store i32 -1, i32* %3, align 4\n  br label %52\n\n44:                                               ; preds = %26\n  %45 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %7, i32 0, i32 1\n  %46 = load i32, i32* %45, align 4\n  %47 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %7, i32 0, i32 0\n  %48 = load i32, i32* %47, align 4\n  %49 = call i32 @fuse_main(i32 %46, i32 %48, i32* @pifs_ops, i32* null)\n  store i32 %49, i32* %6, align 4\n  %50 = call i32 @fuse_opt_free_args(%struct.fuse_args* %7)\n  %51 = load i32, i32* %6, align 4\n  store i32 %51, i32* %3, align 4\n  br label %52\n\n52:                                               ; preds = %44, %35, %20, %16\n  %53 = load i32, i32* %3, align 4\n  ret i32 %53\n}\n\ndeclare dso_local i64 @FUSE_ARGS_INIT(i32, i8**) #1\n\ndeclare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1\n\ndeclare dso_local i32 @fuse_opt_parse(%struct.fuse_args*, %struct.TYPE_4__*, i32, i32*) #1\n\ndeclare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1\n\ndeclare dso_local i32 @access(i8*, i32) #1\n\ndeclare dso_local i8* @strerror(i32) #1\n\ndeclare dso_local i32 @fuse_main(i32, i32, i32*, i32*) #1\n\ndeclare dso_local i32 @fuse_opt_free_args(%struct.fuse_args*) #1\n\nattributes #0 = { noinline nounwind optnone uwtable \"correctly-rounded-divide-sqrt-fp-math\"=\"false\" \"disable-tail-calls\"=\"false\" \"frame-pointer\"=\"all\" \"less-precise-fpmad\"=\"false\" \"min-legal-vector-width\"=\"0\" \"no-infs-fp-math\"=\"false\" \"no-jump-tables\"=\"false\" \"no-nans-fp-math\"=\"false\" \"no-signed-zeros-fp-math\"=\"false\" \"no-trapping-math\"=\"false\" \"stack-protector-buffer-size\"=\"8\" \"target-cpu\"=\"x86-64\" \"target-features\"=\"+cx8,+fxsr,+mmx,+sse,+sse2,+x87\" \"unsafe-fp-math\"=\"false\" \"use-soft-float\"=\"false\" }\nattributes #1 = { \"correctly-rounded-divide-sqrt-fp-math\"=\"false\" \"disable-tail-calls\"=\"false\" \"frame-pointer\"=\"all\" \"less-precise-fpmad\"=\"false\" \"no-infs-fp-math\"=\"false\" \"no-nans-fp-math\"=\"false\" \"no-signed-zeros-fp-math\"=\"false\" \"no-trapping-math\"=\"false\" \"stack-protector-buffer-size\"=\"8\" \"target-cpu\"=\"x86-64\" \"target-features\"=\"+cx8,+fxsr,+mmx,+sse,+sse2,+x87\" \"unsafe-fp-math\"=\"false\" \"use-soft-float\"=\"false\" }\n\n!llvm.module.flags = !{!0}\n!llvm.ident = !{!1}\n\n!0 = !{i32 1, !\"wchar_size\", i32 4}\n!1 = !{!\"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)\"}\n"
    start = time()
    tokenized= tokenize_llvm(fn)
    end = time()
    print(f"time {end-start}")
    # # print(tokenized)
    print(f"len{len(tokenized)}")
    outF = open("tokenized-output.txt", "w")
    comma_dict = dict()
    outF.write("\n".join(" ".join(tokenized).split("NEW_LINE")) )
    # outF.write(str(comma_dict_problems))
    outF.close()
    # string  = ' '.join(tokenized)
    # detokenized = detokenize_llvm(string)
    # outF = open("detokenized-output.ll", "w")
    # outF.write(detokenized)
    # outF.close()

    # detokenized = detokenized.split(" ")
    # tokenized, _ = get_llvm_tokens_and_types(fn)
    # #assert len(tokenized) == len(detokenized), f"{len(tokenized)} is different from {len(detokenized)}"
    # print(tokenized[60:65])
    # print(detokenized[60:65])
    # for i in range(len(tokenized)):
    #     assert(tokenized[i] == detokenized[i]), f"at {i}, {tokenized[i]} is different from {detokenized[i]}"

    
# import cProfile

if __name__ == '__main__':
    # cProfile.run("main()")
    main()