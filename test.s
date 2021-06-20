	.text
	.file	"test.ll"
	.p2align	4, 0x90         # -- Begin function platform_main_begin
	.type	platform_main_begin,@function
platform_main_begin:                    # @platform_main_begin
	.cfi_startproc
# %bb.0:
	retq
.Lfunc_end0:
	.size	platform_main_begin, .Lfunc_end0-platform_main_begin
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
