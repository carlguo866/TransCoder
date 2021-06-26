	.text
	.file	"detokenized-output.ll"
	.globl	safe_mod_func_int8_t_s_s # -- Begin function safe_mod_func_int8_t_s_s
	.p2align	4, 0x90
	.type	safe_mod_func_int8_t_s_s,@function
safe_mod_func_int8_t_s_s:               # @safe_mod_func_int8_t_s_s
	.cfi_startproc
# %bb.0:
                                        # kill: def $sil killed $sil killed $esi
                                        # kill: def $dil killed $dil killed $edi
	movb	%dil, -1(%rsp)
	movb	%sil, -2(%rsp)
	movsbl	-2(%rsp), %eax
	cmpl	$0, %eax
	je	.LBB0_3
# %bb.1:                                # %I1T
	movsbl	-1(%rsp), %eax
	cmpl	$-128, %eax
	jne	.LBB0_4
# %bb.2:                                # %SB1
	movsbl	-2(%rsp), %eax
	cmpl	$-1, %eax
	jne	.LBB0_4
.LBB0_3:                                # %LXK
	movsbl	-1(%rsp), %eax
	movl	%eax, -8(%rsp)          # 4-byte Spill
	jmp	.LBB0_5
.LBB0_4:                                # %R1N
	movsbl	-1(%rsp), %eax
	movsbl	-2(%rsp), %ecx
	cltd
	idivl	%ecx
	movl	%edx, -8(%rsp)          # 4-byte Spill
.LBB0_5:                                # %GAO
	movl	-8(%rsp), %eax          # 4-byte Reload
                                        # kill: def $al killed $al killed $eax
	retq
.Lfunc_end0:
	.size	safe_mod_func_int8_t_s_s, .Lfunc_end0-safe_mod_func_int8_t_s_s
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
