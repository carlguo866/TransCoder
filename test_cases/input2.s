	.text
	.file	"input2.ll"
	.globl	func_69                 # -- Begin function func_69
	.p2align	4, 0x90
	.type	func_69,@function
func_69:                                # @func_69
	.cfi_startproc
# %bb.0:
	movl	%edi, -4(%rsp)
	movl	%esi, -8(%rsp)
	movabsq	$g_57, %rax
	retq
.Lfunc_end0:
	.size	func_69, .Lfunc_end0-func_69
	.cfi_endproc
                                        # -- End function
	.type	g_57,@object            # @g_57
	.local	g_57
	.comm	g_57,4,4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym g_57
