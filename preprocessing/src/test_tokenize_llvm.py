from preprocessing.src.code_tokenizer import detokenize_llvm, get_llvm_tokens_and_types, tokenize_llvm, infix_to_prefix, remove_globals
import pyllvm
import re
from time import time

def main():
    # s = '{ [ 4 x i8 ] , i32 , i8 , { i8 , i32 } , i64 }'
    # s = infix_to_prefix(s)
    # print(" ".join(s))
    fn = open('/home/carl/TransCoder/temp.ll','r').read()

    fn = """
; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_packet.c_ssh_packet_get_bytes.c'\nsource_filename = \"/home/carl/AnghaBench/freebsd/crypto/openssh/extr_packet.c_ssh_packet_get_bytes.c\"\ntarget datalayout = \"e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128\"\ntarget triple = \"x86_64-unknown-linux-gnu\"\n\n%struct.ssh = type { %struct.TYPE_6__* }\n%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }\n%struct.TYPE_5__ = type { i32 }\n%struct.TYPE_4__ = type { i32 }\n\n; Function Attrs: noinline nounwind optnone uwtable\ndefine dso_local void @ssh_packet_get_bytes(%struct.ssh* %0, i32* %1, i32* %2) #0 {\n  %4 = alloca %struct.ssh*, align 8\n  %5 = alloca i32*, align 8\n  %6 = alloca i32*, align 8\n  store %struct.ssh* %0, %struct.ssh** %4, align 8\n  store i32* %1, i32** %5, align 8\n  store i32* %2, i32** %6, align 8\n  %7 = load i32*, i32** %5, align 8\n  %8 = icmp ne i32* %7, null\n  br i1 %8, label %9, label %17\n\n9:                                                ; preds = %3\n  %10 = load %struct.ssh*, %struct.ssh** %4, align 8\n  %11 = getelementptr inbounds %struct.ssh, %struct.ssh* %10, i32 0, i32 0\n  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8\n  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1\n  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0\n  %15 = load i32, i32* %14, align 4\n  %16 = load i32*, i32** %5, align 8\n  store i32 %15, i32* %16, align 4\n  br label %17\n\n17:                                               ; preds = %9, %3\n  %18 = load i32*, i32** %6, align 8\n  %19 = icmp ne i32* %18, null\n  br i1 %19, label %20, label %28\n\n20:                                               ; preds = %17\n  %21 = load %struct.ssh*, %struct.ssh** %4, align 8\n  %22 = getelementptr inbounds %struct.ssh, %struct.ssh* %21, i32 0, i32 0\n  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8\n  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0\n  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0\n  %26 = load i32, i32* %25, align 4\n  %27 = load i32*, i32** %6, align 8\n  store i32 %26, i32* %27, align 4\n  br label %28\n\n28:                                               ; preds = %20, %17\n  ret void\n}\n\nattributes #0 = { noinline nounwind optnone uwtable \"correctly-rounded-divide-sqrt-fp-math\"=\"false\" \"disable-tail-calls\"=\"false\" \"frame-pointer\"=\"all\" \"less-precise-fpmad\"=\"false\" \"min-legal-vector-width\"=\"0\" \"no-infs-fp-math\"=\"false\" \"no-jump-tables\"=\"false\" \"no-nans-fp-math\"=\"false\" \"no-signed-zeros-fp-math\"=\"false\" \"no-trapping-math\"=\"false\" \"stack-protector-buffer-size\"=\"8\" \"target-cpu\"=\"x86-64\" \"target-features\"=\"+cx8,+fxsr,+mmx,+sse,+sse2,+x87\" \"unsafe-fp-math\"=\"false\" \"use-soft-float\"=\"false\" }\n\n!llvm.module.flags = !{!0}\n!llvm.ident = !{!1}\n\n!0 = !{i32 1, !\"wchar_size\", i32 4}\n!1 = !{!\"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)\"}\n
    """
    tokenized = tokenize_llvm(fn)
    # tokenized= tokenize_llvm(fn)
    # end = time()
    # print(f"time {end-start}")
    # # # print(tokenized)
    # print(f"len{len(tokenized)}")
    outF = open("tokenized-output.txt", "w")
    # comma_dict = dict()
    tokens = ' '.join(tokenized) 
    print(len(tokens))
    outF.write(' '.join(tokenized))
    # outF.write("\n".join(" ".join(tokenized).split("NEW_LINE")))
    # # outF.write(str(comma_dict_problems))
    # string  = ' '.join(tokenized)
    # detokenized = detokenize_llvm(string)
    # outF = open("detokenized-output.ll", "w")
    # outF.write(detokenized)
    outF.close()

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