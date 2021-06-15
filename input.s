	.text
	.file	"input.c"
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -32(%rbp)
	cmpl	$2, -8(%rbp)
	jne	.LBB0_3
# %bb.1:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movl	$.L.str, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_3
# %bb.2:
	movl	$1, -32(%rbp)
.LBB0_3:
	callq	platform_main_begin
	callq	crc32_gentab
	callq	func_1
	movl	$0, -20(%rbp)
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	cmpl	$10, -20(%rbp)
	jge	.LBB0_9
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	movslq	-20(%rbp), %rax
	movl	g_4(,%rax,4), %ecx
	movslq	%ecx, %rdi
	movl	-32(%rbp), %edx
	movabsq	$.L.str.1, %rsi
	callq	transparent_crc
	cmpl	$0, -32(%rbp)
	je	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_4 Depth=1
	movl	-20(%rbp), %esi
	movabsq	$.L.str.2, %rdi
	movb	$0, %al
	callq	printf
.LBB0_7:                                #   in Loop: Header=BB0_4 Depth=1
	jmp	.LBB0_8
.LBB0_8:                                #   in Loop: Header=BB0_4 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_4
.LBB0_9:
	movq	g_17, %rdi
	movl	-32(%rbp), %edx
	movabsq	$.L.str.3, %rsi
	callq	transparent_crc
	movzwl	g_45, %eax
	movl	%eax, %edi
	movl	-32(%rbp), %edx
	movabsq	$.L.str.4, %rsi
	callq	transparent_crc
	movslq	g_58, %rdi
	movl	-32(%rbp), %edx
	movabsq	$.L.str.5, %rsi
	callq	transparent_crc
	movl	$0, -20(%rbp)
.LBB0_10:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_12 Depth 2
	cmpl	$7, -20(%rbp)
	jge	.LBB0_19
# %bb.11:                               #   in Loop: Header=BB0_10 Depth=1
	movl	$0, -24(%rbp)
.LBB0_12:                               #   Parent Loop BB0_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$10, -24(%rbp)
	jge	.LBB0_17
# %bb.13:                               #   in Loop: Header=BB0_12 Depth=2
	movslq	-20(%rbp), %rax
	imulq	$40, %rax, %rax
	movabsq	$g_73, %rcx
	addq	%rax, %rcx
	movslq	-24(%rbp), %rax
	movl	(%rcx,%rax,4), %edx
	movl	%edx, %edi
	movl	-32(%rbp), %edx
	movabsq	$.L.str.6, %rsi
	callq	transparent_crc
	cmpl	$0, -32(%rbp)
	je	.LBB0_15
# %bb.14:                               #   in Loop: Header=BB0_12 Depth=2
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movabsq	$.L.str.7, %rdi
	movb	$0, %al
	callq	printf
.LBB0_15:                               #   in Loop: Header=BB0_12 Depth=2
	jmp	.LBB0_16
.LBB0_16:                               #   in Loop: Header=BB0_12 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_12
.LBB0_17:                               #   in Loop: Header=BB0_10 Depth=1
	jmp	.LBB0_18
.LBB0_18:                               #   in Loop: Header=BB0_10 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_10
.LBB0_19:
	movl	g_96, %eax
	movl	%eax, %edi
	movl	-32(%rbp), %edx
	movabsq	$.L.str.8, %rsi
	callq	transparent_crc
	movl	-32(%rbp), %edx
	movl	$5, %edi
	movabsq	$.L.str.9, %rsi
	callq	transparent_crc
	movl	g_108, %eax
	movl	%eax, %edi
	movl	-32(%rbp), %edx
	movabsq	$.L.str.10, %rsi
	callq	transparent_crc
	movl	$0, -20(%rbp)
.LBB0_20:                               # =>This Inner Loop Header: Depth=1
	cmpl	$1, -20(%rbp)
	jge	.LBB0_25
# %bb.21:                               #   in Loop: Header=BB0_20 Depth=1
	movslq	-20(%rbp), %rax
	movswq	g_111(,%rax,2), %rdi
	movl	-32(%rbp), %edx
	movabsq	$.L.str.11, %rsi
	callq	transparent_crc
	cmpl	$0, -32(%rbp)
	je	.LBB0_23
# %bb.22:                               #   in Loop: Header=BB0_20 Depth=1
	movl	-20(%rbp), %esi
	movabsq	$.L.str.2, %rdi
	movb	$0, %al
	callq	printf
.LBB0_23:                               #   in Loop: Header=BB0_20 Depth=1
	jmp	.LBB0_24
.LBB0_24:                               #   in Loop: Header=BB0_20 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_20
.LBB0_25:
	movl	$0, -20(%rbp)
.LBB0_26:                               # =>This Inner Loop Header: Depth=1
	cmpl	$7, -20(%rbp)
	jge	.LBB0_31
# %bb.27:                               #   in Loop: Header=BB0_26 Depth=1
	movslq	-20(%rbp), %rax
	movslq	g_112(,%rax,4), %rdi
	movl	-32(%rbp), %edx
	movabsq	$.L.str.12, %rsi
	callq	transparent_crc
	cmpl	$0, -32(%rbp)
	je	.LBB0_29
# %bb.28:                               #   in Loop: Header=BB0_26 Depth=1
	movl	-20(%rbp), %esi
	movabsq	$.L.str.2, %rdi
	movb	$0, %al
	callq	printf
.LBB0_29:                               #   in Loop: Header=BB0_26 Depth=1
	jmp	.LBB0_30
.LBB0_30:                               #   in Loop: Header=BB0_26 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_26
.LBB0_31:
	movl	g_115, %eax
	movl	%eax, %edi
	movl	-32(%rbp), %edx
	movabsq	$.L.str.13, %rsi
	callq	transparent_crc
	movslq	g_118, %rdi
	movl	-32(%rbp), %edx
	movabsq	$.L.str.14, %rsi
	callq	transparent_crc
	movq	g_119, %rdi
	movl	-32(%rbp), %edx
	movabsq	$.L.str.15, %rsi
	callq	transparent_crc
	movslq	g_129, %rdi
	movl	-32(%rbp), %edx
	movabsq	$.L.str.16, %rsi
	callq	transparent_crc
	movl	$0, -20(%rbp)
.LBB0_32:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_34 Depth 2
                                        #       Child Loop BB0_36 Depth 3
	cmpl	$8, -20(%rbp)
	jge	.LBB0_45
# %bb.33:                               #   in Loop: Header=BB0_32 Depth=1
	movl	$0, -24(%rbp)
.LBB0_34:                               #   Parent Loop BB0_32 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_36 Depth 3
	cmpl	$4, -24(%rbp)
	jge	.LBB0_43
# %bb.35:                               #   in Loop: Header=BB0_34 Depth=2
	movl	$0, -28(%rbp)
.LBB0_36:                               #   Parent Loop BB0_32 Depth=1
                                        #     Parent Loop BB0_34 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$8, -28(%rbp)
	jge	.LBB0_41
# %bb.37:                               #   in Loop: Header=BB0_36 Depth=3
	movslq	-20(%rbp), %rax
	shlq	$5, %rax
	movabsq	$g_161, %rcx
	addq	%rax, %rcx
	movslq	-24(%rbp), %rax
	shlq	$3, %rax
	addq	%rax, %rcx
	movslq	-28(%rbp), %rax
	movsbq	(%rcx,%rax), %rdi
	movl	-32(%rbp), %edx
	movabsq	$.L.str.17, %rsi
	callq	transparent_crc
	cmpl	$0, -32(%rbp)
	je	.LBB0_39
# %bb.38:                               #   in Loop: Header=BB0_36 Depth=3
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %ecx
	movabsq	$.L.str.18, %rdi
	movb	$0, %al
	callq	printf
.LBB0_39:                               #   in Loop: Header=BB0_36 Depth=3
	jmp	.LBB0_40
.LBB0_40:                               #   in Loop: Header=BB0_36 Depth=3
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_36
.LBB0_41:                               #   in Loop: Header=BB0_34 Depth=2
	jmp	.LBB0_42
.LBB0_42:                               #   in Loop: Header=BB0_34 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_34
.LBB0_43:                               #   in Loop: Header=BB0_32 Depth=1
	jmp	.LBB0_44
.LBB0_44:                               #   in Loop: Header=BB0_32 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_32
.LBB0_45:
	movq	g_187, %rdi
	movl	-32(%rbp), %edx
	movabsq	$.L.str.19, %rsi
	callq	transparent_crc
	movslq	g_205, %rdi
	movl	-32(%rbp), %edx
	movabsq	$.L.str.20, %rsi
	callq	transparent_crc
	movzwl	g_242, %eax
	movl	%eax, %edi
	movl	-32(%rbp), %edx
	movabsq	$.L.str.21, %rsi
	callq	transparent_crc
	movzbl	g_265, %eax
	movl	%eax, %edi
	movl	-32(%rbp), %edx
	movabsq	$.L.str.22, %rsi
	callq	transparent_crc
	movq	g_307, %rdi
	movl	-32(%rbp), %edx
	movabsq	$.L.str.23, %rsi
	callq	transparent_crc
	movl	$0, -20(%rbp)
.LBB0_46:                               # =>This Inner Loop Header: Depth=1
	cmpl	$10, -20(%rbp)
	jge	.LBB0_51
# %bb.47:                               #   in Loop: Header=BB0_46 Depth=1
	movslq	-20(%rbp), %rax
	movq	g_442(,%rax,8), %rdi
	movl	-32(%rbp), %edx
	movabsq	$.L.str.24, %rsi
	callq	transparent_crc
	cmpl	$0, -32(%rbp)
	je	.LBB0_49
# %bb.48:                               #   in Loop: Header=BB0_46 Depth=1
	movl	-20(%rbp), %esi
	movabsq	$.L.str.2, %rdi
	movb	$0, %al
	callq	printf
.LBB0_49:                               #   in Loop: Header=BB0_46 Depth=1
	jmp	.LBB0_50
.LBB0_50:                               #   in Loop: Header=BB0_46 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_46
.LBB0_51:
	movq	g_894, %rdi
	movl	-32(%rbp), %edx
	movabsq	$.L.str.25, %rsi
	callq	transparent_crc
	movslq	g_895, %rdi
	movl	-32(%rbp), %edx
	movabsq	$.L.str.26, %rsi
	callq	transparent_crc
	movswq	g_1036, %rdi
	movl	-32(%rbp), %edx
	movabsq	$.L.str.27, %rsi
	callq	transparent_crc
	movzbl	g_1131, %eax
	movl	%eax, %edi
	movl	-32(%rbp), %edx
	movabsq	$.L.str.28, %rsi
	callq	transparent_crc
	movslq	g_1143, %rdi
	movl	-32(%rbp), %edx
	movabsq	$.L.str.29, %rsi
	callq	transparent_crc
	movl	$0, -20(%rbp)
.LBB0_52:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_54 Depth 2
	cmpl	$5, -20(%rbp)
	jge	.LBB0_61
# %bb.53:                               #   in Loop: Header=BB0_52 Depth=1
	movl	$0, -24(%rbp)
.LBB0_54:                               #   Parent Loop BB0_52 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$2, -24(%rbp)
	jge	.LBB0_59
# %bb.55:                               #   in Loop: Header=BB0_54 Depth=2
	movslq	-20(%rbp), %rax
	shlq	$2, %rax
	movabsq	$g_1196, %rcx
	addq	%rax, %rcx
	movslq	-24(%rbp), %rax
	movswq	(%rcx,%rax,2), %rdi
	movl	-32(%rbp), %edx
	movabsq	$.L.str.30, %rsi
	callq	transparent_crc
	cmpl	$0, -32(%rbp)
	je	.LBB0_57
# %bb.56:                               #   in Loop: Header=BB0_54 Depth=2
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movabsq	$.L.str.7, %rdi
	movb	$0, %al
	callq	printf
.LBB0_57:                               #   in Loop: Header=BB0_54 Depth=2
	jmp	.LBB0_58
.LBB0_58:                               #   in Loop: Header=BB0_54 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_54
.LBB0_59:                               #   in Loop: Header=BB0_52 Depth=1
	jmp	.LBB0_60
.LBB0_60:                               #   in Loop: Header=BB0_52 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_52
.LBB0_61:
	movl	g_1295, %eax
	movl	%eax, %edi
	movl	-32(%rbp), %edx
	movabsq	$.L.str.31, %rsi
	callq	transparent_crc
	movsbq	g_1299, %rdi
	movl	-32(%rbp), %edx
	movabsq	$.L.str.32, %rsi
	callq	transparent_crc
	movl	g_1362, %eax
	movl	%eax, %edi
	movl	-32(%rbp), %edx
	movabsq	$.L.str.33, %rsi
	callq	transparent_crc
	movq	g_1399, %rdi
	movl	-32(%rbp), %edx
	movabsq	$.L.str.34, %rsi
	callq	transparent_crc
	movq	g_1633, %rdi
	movl	-32(%rbp), %edx
	movabsq	$.L.str.35, %rsi
	callq	transparent_crc
	movw	g_1642, %cx
	movzwl	%cx, %eax
	movl	%eax, %edi
	movl	-32(%rbp), %edx
	movabsq	$.L.str.36, %rsi
	callq	transparent_crc
	movl	crc32_context, %eax
	movl	%eax, %esi
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	xorq	%rdi, %rsi
                                        # kill: def $esi killed $esi killed $rsi
	movl	-32(%rbp), %eax
	movl	%esi, %edi
	movl	%eax, %esi
	callq	platform_main_end
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function platform_main_begin
	.type	platform_main_begin,@function
platform_main_begin:                    # @platform_main_begin
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	platform_main_begin, .Lfunc_end1-platform_main_begin
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function crc32_gentab
	.type	crc32_gentab,@function
crc32_gentab:                           # @crc32_gentab
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	$-306674912, -8(%rbp)   # imm = 0xEDB88320
	movl	$0, -12(%rbp)
.LBB2_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_3 Depth 2
	cmpl	$256, -12(%rbp)         # imm = 0x100
	jge	.LBB2_11
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
	movl	-12(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	$8, -16(%rbp)
.LBB2_3:                                #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -16(%rbp)
	jle	.LBB2_9
# %bb.4:                                #   in Loop: Header=BB2_3 Depth=2
	movl	-4(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB2_6
# %bb.5:                                #   in Loop: Header=BB2_3 Depth=2
	movl	-4(%rbp), %eax
	shrl	$1, %eax
	xorl	$-306674912, %eax       # imm = 0xEDB88320
	movl	%eax, -4(%rbp)
	jmp	.LBB2_7
.LBB2_6:                                #   in Loop: Header=BB2_3 Depth=2
	movl	-4(%rbp), %eax
	shrl	$1, %eax
	movl	%eax, -4(%rbp)
.LBB2_7:                                #   in Loop: Header=BB2_3 Depth=2
	jmp	.LBB2_8
.LBB2_8:                                #   in Loop: Header=BB2_3 Depth=2
	movl	-16(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB2_3
.LBB2_9:                                #   in Loop: Header=BB2_1 Depth=1
	movl	-4(%rbp), %eax
	movslq	-12(%rbp), %rcx
	movl	%eax, crc32_tab(,%rcx,4)
# %bb.10:                               #   in Loop: Header=BB2_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB2_1
.LBB2_11:
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	crc32_gentab, .Lfunc_end2-crc32_gentab
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function func_1
	.type	func_1,@function
func_1:                                 # @func_1
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$272, %rsp              # imm = 0x110
	xorl	%esi, %esi
	movabsq	$.L__const.func_1.l_18, %rax
	leaq	-192(%rbp), %rcx
	movq	%rcx, %rdi
	movl	%esi, -236(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movl	$192, %edx
	callq	memcpy
	movabsq	$-3175899432184205809, %rax # imm = 0xD3ECF04B064BAE0F
	movq	%rax, -200(%rbp)
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	movl	-236(%rbp), %esi        # 4-byte Reload
	movl	$16, %edx
	callq	memset
	movl	g_4+24, %esi
	movslq	%esi, %rax
	movl	$1, %ecx
	cmpq	%rax, %rcx
	setae	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %esi
                                        # kill: def $si killed $si killed $esi
	movq	g_17, %rax
                                        # kill: def $al killed $al killed $rax
	movl	-192(%rbp), %r9d
	movq	-200(%rbp), %rcx
	movq	g_17, %rdi
	movq	g_17, %rdx
	movw	%si, -238(%rbp)         # 2-byte Spill
	movq	%rdx, %rsi
	movb	%al, -239(%rbp)         # 1-byte Spill
	movl	%r9d, -244(%rbp)        # 4-byte Spill
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	callq	safe_mod_func_uint64_t_u_u
	movq	-256(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	movb	$1, %r8b
	movb	%r8b, -257(%rbp)        # 1-byte Spill
	jne	.LBB3_4
# %bb.1:
	movl	-192(%rbp), %edi
	movq	-200(%rbp), %rax
                                        # kill: def $ax killed $ax killed $rax
	movzwl	%ax, %ecx
	movl	%edi, -264(%rbp)        # 4-byte Spill
	movl	%ecx, %edi
	movl	$14, %esi
	callq	safe_lshift_func_uint16_t_u_u
	movzwl	%ax, %esi
	movq	-200(%rbp), %rdx
                                        # kill: def $edx killed $edx killed $rdx
	movq	g_17, %rcx
	movq	g_17, %r8
                                        # kill: def $r8w killed $r8w killed $r8
	movl	-264(%rbp), %edi        # 4-byte Reload
	movzwl	%r8w, %r8d
	callq	func_24
	movzwl	%ax, %edi
	movl	$43086, %esi            # imm = 0xA84E
	callq	safe_mod_func_uint16_t_u_u
	movzwl	%ax, %edx
	cmpl	$0, %edx
	movb	$1, %r9b
	movb	%r9b, -265(%rbp)        # 1-byte Spill
	jne	.LBB3_3
# %bb.2:
	movb	$1, %al
	movb	%al, -265(%rbp)         # 1-byte Spill
	jmp	.LBB3_3
.LBB3_3:
	movb	-265(%rbp), %al         # 1-byte Reload
	movb	%al, -257(%rbp)         # 1-byte Spill
.LBB3_4:
	movb	-257(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %edx
	movb	-239(%rbp), %al         # 1-byte Reload
	movzbl	%al, %edi
	movl	-244(%rbp), %esi        # 4-byte Reload
	callq	func_13
	movzwl	%ax, %ecx
	movl	%ecx, %r8d
	cmpq	$1, %r8
	setbe	%r9b
	andb	$1, %r9b
	movzbl	%r9b, %ecx
	movq	g_1622, %r8
	movl	%ecx, (%r8)
	movslq	%ecx, %r8
	cmpq	$173396396, %r8         # imm = 0xA55D1AC
	setne	%r9b
	andb	$1, %r9b
	movzbl	%r9b, %ecx
                                        # kill: def $cl killed $cl killed $ecx
	movq	g_1129, %r8
	movq	(%r8), %r8
	movb	%cl, (%r8)
	movl	-64(%rbp), %edx
	movl	%edx, %r8d
	andq	$0, %r8
                                        # kill: def $r8b killed $r8b killed $r8
	movl	-192(%rbp), %esi
	movzbl	%r8b, %edi
	callq	safe_lshift_func_uint8_t_u_u
	movzbl	%al, %edi
	movl	-68(%rbp), %esi
	callq	safe_mod_func_uint32_t_u_u
	movl	%eax, %edi
	movl	$1208540603, %esi       # imm = 0x4808DDBB
	callq	safe_sub_func_int32_t_s_s
                                        # kill: def $ax killed $ax killed $eax
	movw	-238(%rbp), %r10w       # 2-byte Reload
	movzwl	%r10w, %edi
	movzwl	%ax, %esi
	callq	safe_mul_func_uint16_t_u_u
	movzwl	%ax, %edx
	andl	-212(%rbp), %edx
	movl	%edx, -212(%rbp)
	movl	-192(%rbp), %edx
                                        # kill: def $dl killed $dl killed $edx
	movsbl	%dl, %eax
	addq	$272, %rsp              # imm = 0x110
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end3:
	.size	func_1, .Lfunc_end3-func_1
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function transparent_crc
	.type	transparent_crc,@function
transparent_crc:                        # @transparent_crc
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rdi
	callq	crc32_8bytes
	cmpl	$0, -20(%rbp)
	je	.LBB4_2
# %bb.1:
	movq	-16(%rbp), %rsi
	movl	crc32_context, %eax
	movl	%eax, %ecx
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	xorq	%rdx, %rcx
	movabsq	$.L.str.45, %rdi
	movq	%rcx, %rdx
	movb	$0, %al
	callq	printf
.LBB4_2:
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end4:
	.size	transparent_crc, .Lfunc_end4-transparent_crc
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function safe_mul_func_uint16_t_u_u
	.type	safe_mul_func_uint16_t_u_u,@function
safe_mul_func_uint16_t_u_u:             # @safe_mul_func_uint16_t_u_u
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
                                        # kill: def $si killed $si killed $esi
                                        # kill: def $di killed $di killed $edi
	movw	%di, -2(%rbp)
	movw	%si, -4(%rbp)
	movzwl	-2(%rbp), %eax
	movzwl	-4(%rbp), %ecx
	imull	%ecx, %eax
                                        # kill: def $ax killed $ax killed $eax
	movzwl	%ax, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end5:
	.size	safe_mul_func_uint16_t_u_u, .Lfunc_end5-safe_mul_func_uint16_t_u_u
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function safe_sub_func_int32_t_s_s
	.type	safe_sub_func_int32_t_s_s,@function
safe_sub_func_int32_t_s_s:              # @safe_sub_func_int32_t_s_s
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	xorl	-8(%rbp), %eax
	movl	-4(%rbp), %ecx
	movl	-4(%rbp), %edx
	xorl	-8(%rbp), %edx
	andl	$-2147483648, %edx      # imm = 0x80000000
	xorl	%edx, %ecx
	subl	-8(%rbp), %ecx
	xorl	-8(%rbp), %ecx
	andl	%ecx, %eax
	cmpl	$0, %eax
	jge	.LBB6_2
# %bb.1:
	movl	-4(%rbp), %eax
	movl	%eax, -12(%rbp)         # 4-byte Spill
	jmp	.LBB6_3
.LBB6_2:
	movl	-4(%rbp), %eax
	subl	-8(%rbp), %eax
	movl	%eax, -12(%rbp)         # 4-byte Spill
.LBB6_3:
	movl	-12(%rbp), %eax         # 4-byte Reload
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end6:
	.size	safe_sub_func_int32_t_s_s, .Lfunc_end6-safe_sub_func_int32_t_s_s
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function safe_mod_func_uint32_t_u_u
	.type	safe_mod_func_uint32_t_u_u,@function
safe_mod_func_uint32_t_u_u:             # @safe_mod_func_uint32_t_u_u
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jne	.LBB7_2
# %bb.1:
	movl	-4(%rbp), %eax
	movl	%eax, -12(%rbp)         # 4-byte Spill
	jmp	.LBB7_3
.LBB7_2:
	movl	-4(%rbp), %eax
	xorl	%edx, %edx
	divl	-8(%rbp)
	movl	%edx, -12(%rbp)         # 4-byte Spill
.LBB7_3:
	movl	-12(%rbp), %eax         # 4-byte Reload
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end7:
	.size	safe_mod_func_uint32_t_u_u, .Lfunc_end7-safe_mod_func_uint32_t_u_u
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function safe_lshift_func_uint8_t_u_u
	.type	safe_lshift_func_uint8_t_u_u,@function
safe_lshift_func_uint8_t_u_u:           # @safe_lshift_func_uint8_t_u_u
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
                                        # kill: def $dil killed $dil killed $edi
	movb	%dil, -1(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$32, -8(%rbp)
	jae	.LBB8_2
# %bb.1:
	movzbl	-1(%rbp), %eax
	movl	-8(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	movl	$255, %edx
	sarl	%cl, %edx
	cmpl	%edx, %eax
	jle	.LBB8_3
.LBB8_2:
	movzbl	-1(%rbp), %eax
	movl	%eax, -12(%rbp)         # 4-byte Spill
	jmp	.LBB8_4
.LBB8_3:
	movzbl	-1(%rbp), %eax
	movl	-8(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	shll	%cl, %eax
	movl	%eax, -12(%rbp)         # 4-byte Spill
.LBB8_4:
	movl	-12(%rbp), %eax         # 4-byte Reload
                                        # kill: def $al killed $al killed $eax
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end8:
	.size	safe_lshift_func_uint8_t_u_u, .Lfunc_end8-safe_lshift_func_uint8_t_u_u
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function func_13
	.type	func_13,@function
func_13:                                # @func_13
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$3824, %rsp             # imm = 0xEF0
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
                                        # kill: def $dil killed $dil killed $edi
	movabsq	$.L__const.func_13.l_1889, %rax
	movb	%dil, -19(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	leaq	-112(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movl	$80, %edx
	callq	memcpy
	movl	$1140134092, -116(%rbp) # imm = 0x43F510CC
	movabsq	$g_201, %rax
	movq	%rax, -128(%rbp)
	movw	$2, -130(%rbp)
	movabsq	$g_45, %rax
	movq	%rax, -144(%rbp)
	movl	$9, -148(%rbp)
	movl	$-67288578, -152(%rbp)  # imm = 0xFBFD41FE
	movl	$-1, -156(%rbp)
	movl	$-1836133574, -160(%rbp) # imm = 0x928ED33A
	movl	$1321207676, -164(%rbp) # imm = 0x4EC0077C
	movl	$0, -168(%rbp)
	movl	$1, -172(%rbp)
	movb	$69, -181(%rbp)
	movl	$-2114619075, -188(%rbp) # imm = 0x81F5793D
	movq	$0, -200(%rbp)
	movw	$4, -202(%rbp)
	movabsq	$g_170, %rax
	movq	%rax, -216(%rbp)
	leaq	-216(%rbp), %rcx
	movq	%rcx, -224(%rbp)
	movabsq	$g_669, %rcx
	movq	%rcx, -232(%rbp)
	movq	%rax, -240(%rbp)
	movl	$0, -244(%rbp)
.LBB9_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$2, -244(%rbp)
	jge	.LBB9_4
# %bb.2:                                #   in Loop: Header=BB9_1 Depth=1
	movslq	-244(%rbp), %rax
	movl	$477845022, -180(%rbp,%rax,4) # imm = 0x1C7B561E
# %bb.3:                                #   in Loop: Header=BB9_1 Depth=1
	movl	-244(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -244(%rbp)
	jmp	.LBB9_1
.LBB9_4:
	jmp	.LBB9_5
.LBB9_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_11 Depth 2
                                        #       Child Loop BB9_36 Depth 3
                                        #         Child Loop BB9_38 Depth 4
                                        #     Child Loop BB9_55 Depth 2
                                        #       Child Loop BB9_57 Depth 3
	movslq	-24(%rbp), %rax
	andq	$-8, %rax
	cmpq	$0, %rax
	movb	$1, %cl
	movb	%cl, -3649(%rbp)        # 1-byte Spill
	jne	.LBB9_7
# %bb.6:                                #   in Loop: Header=BB9_5 Depth=1
	cmpq	$0, g_187
	setne	%al
	movb	%al, -3649(%rbp)        # 1-byte Spill
.LBB9_7:                                #   in Loop: Header=BB9_5 Depth=1
	movb	-3649(%rbp), %al        # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movabsq	$g_731, %rdx
	cmpq	-96(%rbp), %rdx
	setne	%al
	andb	$1, %al
	movzbl	%al, %esi
                                        # kill: def $sil killed $sil killed $esi
	movzbl	-19(%rbp), %edi
	movl	%edi, %edx
	andq	$1, %rdx
                                        # kill: def $dx killed $dx killed $rdx
	movswl	%dx, %edi
	movl	$4294967291, %r8d       # imm = 0xFFFFFFFB
	movb	%sil, -3650(%rbp)       # 1-byte Spill
	movl	%r8d, %esi
	movl	%ecx, -3656(%rbp)       # 4-byte Spill
	callq	safe_mul_func_int16_t_s_s
	movswl	%ax, %ecx
	movzbl	g_1131, %esi
	cmpl	%esi, %ecx
	sete	%r9b
	andb	$1, %r9b
	movzbl	%r9b, %ecx
	movslq	%ecx, %rdi
	movabsq	$-6661085234308845259, %rsi # imm = 0xA38F1245766BF135
	callq	safe_sub_func_int64_t_s_s
                                        # kill: def $al killed $al killed $rax
	movl	-116(%rbp), %esi
	movzbl	%al, %edi
	callq	safe_lshift_func_uint8_t_u_s
	movb	-3650(%rbp), %r9b       # 1-byte Reload
	movzbl	%r9b, %edi
	movl	$250, %esi
	movb	%al, -3657(%rbp)        # 1-byte Spill
	callq	safe_mod_func_uint8_t_u_u
	movzbl	%al, %ecx
	movl	-3656(%rbp), %esi       # 4-byte Reload
	cmpl	%ecx, %esi
	setl	%al
	andb	$1, %al
	movzbl	%al, %edi
	movl	-116(%rbp), %esi
	callq	func_36
	movq	g_201, %r10
	movq	%rax, (%r10)
	movq	g_731, %rax
	movw	$-3626, (%rax)          # imm = 0xF1D6
	movl	-116(%rbp), %ecx
                                        # kill: def $cx killed $cx killed $ecx
	movl	$4294963670, %edi       # imm = 0xFFFFF1D6
	movswl	%cx, %esi
	callq	safe_add_func_int16_t_s_s
	xorl	%esi, %esi
	movl	%esi, %r10d
                                        # kill: def $al killed $al killed $ax
	movq	g_1370, %r11
	movq	(%r11), %r11
	cmpq	(%r11), %r10
	setne	%r9b
	andb	$1, %r9b
	movzbl	%r9b, %esi
                                        # kill: def $si killed $si killed $esi
	movslq	-28(%rbp), %r11
	cmpq	-128(%rbp), %r10
	movb	$1, %r9b
	movb	%al, -3658(%rbp)        # 1-byte Spill
	movw	%si, -3660(%rbp)        # 2-byte Spill
	movq	%r11, -3672(%rbp)       # 8-byte Spill
	movb	%r9b, -3673(%rbp)       # 1-byte Spill
	jne	.LBB9_9
# %bb.8:                                #   in Loop: Header=BB9_5 Depth=1
	movq	g_1700, %rax
	movq	(%rax), %rax
	movq	g_1700, %rcx
	movq	%rax, (%rcx)
	cmpq	$0, %rax
	setne	%dl
	movb	%dl, -3673(%rbp)        # 1-byte Spill
.LBB9_9:                                #   in Loop: Header=BB9_5 Depth=1
	movb	-3673(%rbp), %al        # 1-byte Reload
	movq	-3672(%rbp), %rcx       # 8-byte Reload
	cmpq	$1572, %rcx             # imm = 0x624
	setge	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
                                        # kill: def $si killed $si killed $esi
	movw	-3660(%rbp), %di        # 2-byte Reload
	movzwl	%di, %r8d
	movl	%r8d, %edi
	movzwl	%si, %esi
	movb	%al, -3674(%rbp)        # 1-byte Spill
	callq	safe_mul_func_uint16_t_u_u
	movzwl	%ax, %esi
	cmpl	-28(%rbp), %esi
	setg	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	cmpl	-28(%rbp), %esi
	setl	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movzwl	-130(%rbp), %edi
	cmpl	%edi, %esi
	setg	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movzbl	-19(%rbp), %edi
	cmpl	%edi, %esi
	setg	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movq	-144(%rbp), %rcx
	movzwl	(%rcx), %edi
	xorl	%esi, %edi
                                        # kill: def $di killed $di killed $edi
	movw	%di, (%rcx)
	movzwl	%di, %esi
	movzbl	-19(%rbp), %r8d
	xorl	%r8d, %esi
	movb	-3658(%rbp), %dl        # 1-byte Reload
	movzbl	%dl, %edi
	callq	safe_lshift_func_uint8_t_u_s
	movzbl	%al, %esi
	cmpl	$5, %esi
	setl	%al
	andb	$1, %al
	movzbl	%al, %esi
                                        # kill: def $si killed $si killed $esi
	movl	-116(%rbp), %edi
                                        # kill: def $di killed $di killed $edi
	movswl	%si, %r8d
	movw	%di, -3676(%rbp)        # 2-byte Spill
	movl	%r8d, %edi
	movw	-3676(%rbp), %si        # 2-byte Reload
	movswl	%si, %r8d
	movl	%r8d, %esi
	callq	safe_mod_func_int16_t_s_s
	cmpw	$0, %ax
	je	.LBB9_74
# %bb.10:                               #   in Loop: Header=BB9_5 Depth=1
	movabsq	$.L__const.func_13.l_1908, %rax
	leaq	-448(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movl	$192, %edx
	callq	memcpy
	movabsq	$g_669, %rax
	movq	%rax, -456(%rbp)
	movw	$-21642, -458(%rbp)     # imm = 0xAB76
	movw	-202(%rbp), %r8w
	addw	$-1, %r8w
	movw	%r8w, -202(%rbp)
	movq	$0, g_119
.LBB9_11:                               #   Parent Loop BB9_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_36 Depth 3
                                        #         Child Loop BB9_38 Depth 4
	cmpq	$11, g_119
	jne	.LBB9_54
# %bb.12:                               #   in Loop: Header=BB9_11 Depth=2
	movb	$20, -469(%rbp)
	movabsq	$g_1295, %rax
	movq	%rax, -480(%rbp)
	movq	$0, -488(%rbp)
	leaq	-488(%rbp), %rax
	movq	%rax, -496(%rbp)
	leaq	-496(%rbp), %rax
	movq	%rax, -504(%rbp)
	movl	$0, -508(%rbp)
	movl	$-9, -512(%rbp)
	movabsq	$g_307, %rax
	movq	%rax, -520(%rbp)
	cmpl	$0, -28(%rbp)
	movb	$1, %cl
	movb	%cl, -3677(%rbp)        # 1-byte Spill
	jne	.LBB9_14
# %bb.13:                               #   in Loop: Header=BB9_11 Depth=2
	movzbl	-19(%rbp), %eax
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -3677(%rbp)        # 1-byte Spill
.LBB9_14:                               #   in Loop: Header=BB9_11 Depth=2
	movb	-3677(%rbp), %al        # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	andl	$1, %ecx
	movl	-28(%rbp), %edx
	movzbl	-469(%rbp), %esi
	movq	-480(%rbp), %rdi
	movl	%esi, (%rdi)
	movl	%esi, %esi
	movl	%esi, %edi
	movl	$4294967293, %r8d       # imm = 0xFFFFFFFD
	cmpq	%rdi, %r8
	sete	%al
	andb	$1, %al
	movzbl	%al, %esi
	movslq	%esi, %rdi
	movl	$1, %esi
	movq	%rdi, -3688(%rbp)       # 8-byte Spill
	movl	%esi, %edi
	movl	$14, %esi
	movl	%ecx, -3692(%rbp)       # 4-byte Spill
	movl	%edx, -3696(%rbp)       # 4-byte Spill
	callq	safe_rshift_func_int16_t_s_s
	movzwl	%ax, %edi
	movl	$34231, %esi            # imm = 0x85B7
	callq	safe_sub_func_uint16_t_u_u
	xorl	%ecx, %ecx
                                        # kill: def $cl killed $cl killed $ecx
	movzwl	%ax, %edx
	movl	%edx, %r8d
	movq	g_1700, %r9
	andq	(%r9), %r8
	movq	%r8, (%r9)
	movq	-3688(%rbp), %r9        # 8-byte Reload
	cmpq	%r8, %r9
	setne	%r10b
	andb	$1, %r10b
	movzbl	%r10b, %edx
	movslq	%edx, %r8
	cmpq	$-1, %r8
	movb	%cl, -3697(%rbp)        # 1-byte Spill
	jle	.LBB9_16
# %bb.15:                               #   in Loop: Header=BB9_11 Depth=2
	movb	$1, %al
	movb	%al, -3697(%rbp)        # 1-byte Spill
	jmp	.LBB9_16
.LBB9_16:                               #   in Loop: Header=BB9_11 Depth=2
	movb	-3697(%rbp), %al        # 1-byte Reload
	movl	g_112+24, %ecx
                                        # kill: def $cx killed $cx killed $ecx
	movzbl	-19(%rbp), %edx
                                        # kill: def $dx killed $dx killed $edx
	movzwl	%cx, %edi
	movzwl	%dx, %esi
	movb	%al, -3698(%rbp)        # 1-byte Spill
	callq	safe_sub_func_uint16_t_u_u
	movzwl	%ax, %esi
	movq	g_731, %r8
	movswl	(%r8), %edi
	andl	%esi, %edi
                                        # kill: def $di killed $di killed $edi
	movw	%di, (%r8)
	movswl	%di, %esi
	movl	-3696(%rbp), %r9d       # 4-byte Reload
	cmpl	%esi, %r9d
	sete	%r10b
	andb	$1, %r10b
	movzbl	%r10b, %esi
                                        # kill: def $sil killed $sil killed $esi
	movl	-24(%rbp), %r11d
                                        # kill: def $r11b killed $r11b killed $r11d
	movsbl	%sil, %edi
	movsbl	%r11b, %esi
	callq	safe_div_func_int8_t_s_s
	movq	g_1622, %r8
	movl	$0, (%r8)
	movq	g_201, %r8
	movq	(%r8), %r8
	movq	g_201, %rbx
	movq	%r8, (%rbx)
	cmpb	$0, -469(%rbp)
	je	.LBB9_26
# %bb.17:
	movabsq	$-7557907766252687672, %rax # imm = 0x971CEAEE1B57AEC8
	movq	%rax, -528(%rbp)
	movabsq	$g_1295, %rax
	movq	%rax, -536(%rbp)
	leaq	-536(%rbp), %rax
	movq	%rax, -560(%rbp)
	movq	%rax, -552(%rbp)
	movq	%rax, -544(%rbp)
	leaq	-640(%rbp), %rax
	addq	$48, %rax
	movq	%rax, -648(%rbp)
	leaq	-648(%rbp), %rax
	movq	%rax, -656(%rbp)
	movabsq	$-6343774828087433677, %rax # imm = 0xA7F6626794C8A633
	movq	%rax, -664(%rbp)
	movl	$0, -668(%rbp)
.LBB9_18:                               # =>This Inner Loop Header: Depth=1
	cmpl	$9, -668(%rbp)
	jge	.LBB9_21
# %bb.19:                               #   in Loop: Header=BB9_18 Depth=1
	leaq	-560(%rbp), %rax
	movslq	-668(%rbp), %rcx
	movq	%rax, -640(%rbp,%rcx,8)
# %bb.20:                               #   in Loop: Header=BB9_18 Depth=1
	movl	-668(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -668(%rbp)
	jmp	.LBB9_18
.LBB9_21:
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	-24(%rbp), %ecx
                                        # kill: def $cl killed $cl killed $ecx
	movq	-656(%rbp), %rsi
	movq	$0, (%rsi)
	cmpq	-224(%rbp), %rdx
	movb	%cl, -3699(%rbp)        # 1-byte Spill
	movb	%al, -3700(%rbp)        # 1-byte Spill
	je	.LBB9_25
# %bb.22:
	movq	g_1700, %rax
	movq	(%rax), %rax
	movq	g_1029, %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	xorq	(%rcx), %rax
	movabsq	$4204320086856736329, %rcx # imm = 0x3A58BED7F3229E49
	cmpq	%rcx, %rax
	setbe	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
                                        # kill: def $sil killed $sil killed $esi
	movzbl	%sil, %edi
	movl	$247, %esi
	callq	safe_sub_func_uint8_t_u_u
	movzbl	%al, %esi
                                        # kill: def $si killed $si killed $esi
	movswl	%si, %edi
	movl	$7, %esi
	callq	safe_lshift_func_int16_t_s_u
	xorl	%esi, %esi
                                        # kill: def $sil killed $sil killed $esi
	movswq	%ax, %rcx
	cmpq	-664(%rbp), %rcx
	movb	%sil, -3701(%rbp)       # 1-byte Spill
	jbe	.LBB9_24
# %bb.23:
	movb	$1, %al
	movb	%al, -3701(%rbp)        # 1-byte Spill
	jmp	.LBB9_24
.LBB9_24:
	movb	-3701(%rbp), %al        # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
                                        # kill: def $cl killed $cl killed $ecx
	movzbl	%cl, %edi
	movl	$255, %esi
	callq	safe_add_func_uint8_t_u_u
	movzbl	%al, %edx
	xorl	$-1, %edx
	movl	%edx, -508(%rbp)
	movq	-456(%rbp), %r8
	cmpq	-456(%rbp), %r8
	sete	%al
	andb	$1, %al
	movzbl	%al, %edx
	movslq	%edx, %r8
	movabsq	$7933386411778289907, %r9 # imm = 0x6E190CE89BF4B0F3
	cmpq	%r8, %r9
	setne	%al
	movb	%al, -3700(%rbp)        # 1-byte Spill
.LBB9_25:
	movb	-3700(%rbp), %al        # 1-byte Reload
	cmpq	$0, -664(%rbp)
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	andl	-28(%rbp), %edx
	cmpl	$0, %edx
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	movl	$1, %edi
	cmpq	%rsi, %rdi
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %esi
	movb	-3699(%rbp), %cl        # 1-byte Reload
	movzbl	%cl, %edi
	movb	%al, -3702(%rbp)        # 1-byte Spill
	callq	safe_lshift_func_uint8_t_u_s
	movzbl	%al, %edi
	movl	$231, %esi
	callq	safe_mul_func_uint8_t_u_u
	movzbl	%al, %edx
                                        # kill: def $dx killed $dx killed $edx
	movq	g_731, %r8
	movzwl	%dx, %edi
	movzwl	(%r8), %esi
	callq	safe_mul_func_uint16_t_u_u
	movl	-28(%rbp), %esi
	orl	-512(%rbp), %esi
	movl	%esi, -512(%rbp)
	movzbl	-469(%rbp), %esi
                                        # kill: def $si killed $si killed $esi
	movw	%si, -18(%rbp)
	jmp	.LBB9_81
.LBB9_26:                               #   in Loop: Header=BB9_11 Depth=2
	movabsq	$.L__const.func_13.l_2004, %rax
	movl	$-1822384054, -672(%rbp) # imm = 0x9360A04A
	leaq	-1680(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movl	$1008, %edx             # imm = 0x3F0
	callq	memcpy
	movl	$0, g_108
# %bb.27:                               #   in Loop: Header=BB9_11 Depth=2
	cmpl	$36, g_108
	jbe	.LBB9_33
# %bb.28:                               #   in Loop: Header=BB9_11 Depth=2
	movq	g_1622, %rax
	cmpl	$0, (%rax)
	je	.LBB9_30
# %bb.29:                               #   in Loop: Header=BB9_11 Depth=2
	jmp	.LBB9_33
.LBB9_30:                               #   in Loop: Header=BB9_11 Depth=2
	cmpl	$0, -24(%rbp)
	je	.LBB9_32
# %bb.31:                               #   in Loop: Header=BB9_11 Depth=2
	jmp	.LBB9_33
.LBB9_32:
	movl	-28(%rbp), %eax
                                        # kill: def $ax killed $ax killed $eax
	movw	%ax, -18(%rbp)
	jmp	.LBB9_81
.LBB9_33:                               #   in Loop: Header=BB9_11 Depth=2
	cmpb	$0, -469(%rbp)
	je	.LBB9_35
# %bb.34:                               #   in Loop: Header=BB9_5 Depth=1
	jmp	.LBB9_5
.LBB9_35:                               #   in Loop: Header=BB9_11 Depth=2
	movl	-672(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -672(%rbp)
	movq	$22, g_1399
.LBB9_36:                               #   Parent Loop BB9_5 Depth=1
                                        #     Parent Loop BB9_11 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB9_38 Depth 4
	cmpq	$11, g_1399
	jb	.LBB9_51
# %bb.37:                               #   in Loop: Header=BB9_36 Depth=3
	leaq	-520(%rbp), %rax
	movq	%rax, -1704(%rbp)
	movabsq	$g_1143, %rax
	movq	%rax, -1712(%rbp)
	movl	$1275094820, -1716(%rbp) # imm = 0x4C006724
	movl	$-5, -1720(%rbp)
	movl	$0, -1764(%rbp)
.LBB9_38:                               #   Parent Loop BB9_5 Depth=1
                                        #     Parent Loop BB9_11 Depth=2
                                        #       Parent Loop BB9_36 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpl	$9, -1764(%rbp)
	jge	.LBB9_41
# %bb.39:                               #   in Loop: Header=BB9_38 Depth=4
	movslq	-1764(%rbp), %rax
	movl	$-2078997991, -1760(%rbp,%rax,4) # imm = 0x84150219
# %bb.40:                               #   in Loop: Header=BB9_38 Depth=4
	movl	-1764(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1764(%rbp)
	jmp	.LBB9_38
.LBB9_41:                               #   in Loop: Header=BB9_36 Depth=3
	movq	-520(%rbp), %rax
	movq	-1704(%rbp), %rcx
	movq	%rax, (%rcx)
	movabsq	$g_1633, %rcx
	cmpq	%rax, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
                                        # kill: def $si killed $si killed $esi
	movabsq	$g_205, %rax
	cmpq	-1712(%rbp), %rax
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %edi
	movl	-24(%rbp), %r8d
	movl	%r8d, -176(%rbp)
	cmpl	%r8d, %edi
	setl	%dl
	andb	$1, %dl
	movzbl	%dl, %edi
                                        # kill: def $di killed $di killed $edi
	movswl	%si, %r8d
	movw	%di, -3704(%rbp)        # 2-byte Spill
	movl	%r8d, %edi
	movw	-3704(%rbp), %si        # 2-byte Reload
	movswl	%si, %r8d
	movl	%r8d, %esi
	callq	safe_mul_func_int16_t_s_s
	movl	-28(%rbp), %esi
	movq	g_731, %rcx
	movswl	(%rcx), %edi
	orl	%esi, %edi
                                        # kill: def $di killed $di killed $edi
	movw	%di, (%rcx)
	movq	-144(%rbp), %rcx
	movw	(%rcx), %r9w
	addw	$-1, %r9w
	movw	%r9w, (%rcx)
	movswl	%di, %edi
	movswl	%r9w, %esi
	movw	%ax, -3706(%rbp)        # 2-byte Spill
	callq	safe_mul_func_int16_t_s_s
	movswl	%ax, %esi
	cmpl	$0, %esi
	movb	$1, %dl
	movb	%dl, -3707(%rbp)        # 1-byte Spill
	jne	.LBB9_43
# %bb.42:                               #   in Loop: Header=BB9_36 Depth=3
	cmpl	$0, -672(%rbp)
	setne	%al
	movb	%al, -3707(%rbp)        # 1-byte Spill
.LBB9_43:                               #   in Loop: Header=BB9_36 Depth=3
	movb	-3707(%rbp), %al        # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
                                        # kill: def $cl killed $cl killed $ecx
	movslq	-24(%rbp), %rdx
	movl	$3, %esi
	cmpq	%rdx, %rsi
	setl	%al
	andb	$1, %al
	movzbl	%al, %edi
	movslq	%edi, %rdx
	movq	g_1700, %rsi
	andq	(%rsi), %rdx
	movq	%rdx, (%rsi)
	movslq	-28(%rbp), %rsi
	andq	%rsi, %rdx
                                        # kill: def $dl killed $dl killed $rdx
	movl	-28(%rbp), %edi
                                        # kill: def $dil killed $dil killed $edi
	movzbl	%dl, %r8d
	movb	%dil, -3708(%rbp)       # 1-byte Spill
	movl	%r8d, %edi
	movb	-3708(%rbp), %al        # 1-byte Reload
	movzbl	%al, %esi
	movb	%cl, -3709(%rbp)        # 1-byte Spill
	callq	safe_mod_func_uint8_t_u_u
	movzbl	%al, %esi
                                        # kill: def $si killed $si killed $esi
	movswl	%si, %edi
	movl	$11, %esi
	callq	safe_rshift_func_int16_t_s_s
	movswl	%ax, %esi
	xorl	-1716(%rbp), %esi
                                        # kill: def $sil killed $sil killed $esi
	movb	%sil, -19(%rbp)
	movb	-3709(%rbp), %cl        # 1-byte Reload
	movzbl	%cl, %edi
	movzbl	%sil, %esi
	callq	safe_mod_func_uint8_t_u_u
	movzbl	%al, %esi
	xorl	-1720(%rbp), %esi
	movl	%esi, -1720(%rbp)
	movzbl	-19(%rbp), %esi
	movb	-19(%rbp), %al
	movl	-1720(%rbp), %edi
                                        # kill: def $di killed $di killed $edi
	movl	-508(%rbp), %r8d
	movl	-672(%rbp), %r9d
	movslq	-1716(%rbp), %r10
	andq	$0, %r10
                                        # kill: def $r10d killed $r10d killed $r10
	movl	%r10d, -1716(%rbp)
	orl	-28(%rbp), %r10d
	movl	%r10d, -28(%rbp)
	movq	g_1244, %r11
	orl	(%r11), %r10d
	movl	%r10d, (%r11)
	movslq	%r10d, %r11
	movl	$4294967287, %ebx       # imm = 0xFFFFFFF7
	cmpq	%rbx, %r11
	setb	%cl
	andb	$1, %cl
	movzbl	%cl, %r10d
	xorl	$-1, %r10d
	movsbl	-19(%rbp), %r14d
	movw	%di, -3712(%rbp)        # 2-byte Spill
	movl	%r14d, %edi
	movl	$1, %r14d
	movl	%esi, -3716(%rbp)       # 4-byte Spill
	movl	%r14d, %esi
	movb	%al, -3717(%rbp)        # 1-byte Spill
	movl	%r8d, -3724(%rbp)       # 4-byte Spill
	movl	%r9d, -3728(%rbp)       # 4-byte Spill
	movl	%r10d, -3732(%rbp)      # 4-byte Spill
	callq	safe_sub_func_int8_t_s_s
	movsbl	%al, %esi
	cmpl	$0, %esi
	movb	$1, %al
	movb	%al, -3733(%rbp)        # 1-byte Spill
	jne	.LBB9_45
# %bb.44:                               #   in Loop: Header=BB9_36 Depth=3
	cmpl	$0, -24(%rbp)
	setne	%al
	movb	%al, -3733(%rbp)        # 1-byte Spill
.LBB9_45:                               #   in Loop: Header=BB9_36 Depth=3
	movb	-3733(%rbp), %al        # 1-byte Reload
	movzbl	-19(%rbp), %ecx
	movl	-3728(%rbp), %edx       # 4-byte Reload
	cmpl	%ecx, %edx
	setae	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	movl	-3724(%rbp), %edi       # 4-byte Reload
	orl	%ecx, %edi
	movslq	%edi, %r8
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	cmpq	%r9, %r8
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
                                        # kill: def $cx killed $cx killed $ecx
	movw	-3712(%rbp), %r10w      # 2-byte Reload
	movswl	%r10w, %edi
	movswl	%cx, %esi
	movb	%al, -3734(%rbp)        # 1-byte Spill
	callq	safe_mul_func_int16_t_s_s
                                        # kill: def $al killed $al killed $ax
	movb	-3717(%rbp), %r11b      # 1-byte Reload
	movsbl	%r11b, %edi
	movsbl	%al, %esi
	callq	safe_mul_func_int8_t_s_s
	movsbl	%al, %edx
                                        # kill: def $dx killed $dx killed $edx
	movzwl	%dx, %edi
	movl	$10, %esi
	callq	safe_lshift_func_uint16_t_u_u
	movzwl	%ax, %esi
	cmpl	$0, %esi
	movb	$1, %r11b
	movb	%r11b, -3735(%rbp)      # 1-byte Spill
	jne	.LBB9_47
# %bb.46:                               #   in Loop: Header=BB9_36 Depth=3
	movzbl	-19(%rbp), %eax
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -3735(%rbp)        # 1-byte Spill
.LBB9_47:                               #   in Loop: Header=BB9_36 Depth=3
	movb	-3735(%rbp), %al        # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
                                        # kill: def $cx killed $cx killed $ecx
	movl	-24(%rbp), %edx
                                        # kill: def $dx killed $dx killed $edx
	movzwl	%cx, %edi
	movzwl	%dx, %esi
	callq	safe_add_func_uint16_t_u_u
	movzwl	%ax, %esi
	cmpl	$0, %esi
	movb	$1, %r8b
	movb	%r8b, -3736(%rbp)       # 1-byte Spill
	jne	.LBB9_49
# %bb.48:                               #   in Loop: Header=BB9_36 Depth=3
	movzbl	-19(%rbp), %eax
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -3736(%rbp)        # 1-byte Spill
.LBB9_49:                               #   in Loop: Header=BB9_36 Depth=3
	movb	-3736(%rbp), %al        # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	-3716(%rbp), %edx       # 4-byte Reload
	cmpl	%ecx, %edx
	setl	%al
	andb	$1, %al
	movzbl	%al, %ecx
	orl	-1752(%rbp), %ecx
	movl	%ecx, -1752(%rbp)
	movq	-232(%rbp), %rsi
	movq	%rsi, g_668
	movw	-458(%rbp), %di
	addw	$1, %di
	movw	%di, -458(%rbp)
# %bb.50:                               #   in Loop: Header=BB9_36 Depth=3
	movq	g_1399, %rax
                                        # kill: def $ax killed $ax killed $rax
	movswl	%ax, %edi
	movl	$7, %esi
	callq	safe_sub_func_int16_t_s_s
	movswq	%ax, %rcx
	movq	%rcx, g_1399
	jmp	.LBB9_36
.LBB9_51:                               #   in Loop: Header=BB9_11 Depth=2
	jmp	.LBB9_52
.LBB9_52:                               #   in Loop: Header=BB9_11 Depth=2
	jmp	.LBB9_53
.LBB9_53:                               #   in Loop: Header=BB9_11 Depth=2
	movq	g_119, %rax
	addq	$1, %rax
	movq	%rax, g_119
	jmp	.LBB9_11
.LBB9_54:                               #   in Loop: Header=BB9_5 Depth=1
	leaq	-19(%rbp), %rax
	cmpq	$0, %rax
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edi
	movl	-28(%rbp), %esi
	callq	safe_add_func_uint32_t_u_u
                                        # kill: def $al killed $al killed $eax
	movzbl	-19(%rbp), %edx
	movslq	-28(%rbp), %r8
	movl	$3292818747, %r9d       # imm = 0xC4446D3B
	cmpq	%r9, %r8
	setg	%cl
	andb	$1, %cl
	movzbl	%cl, %esi
	cmpl	-28(%rbp), %esi
	setle	%cl
	andb	$1, %cl
	movzbl	%cl, %esi
	cmpl	%esi, %edx
	setl	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
                                        # kill: def $dl killed $dl killed $edx
	movsbl	%dl, %edi
	movb	%al, -3737(%rbp)        # 1-byte Spill
	callq	safe_unary_minus_func_int8_t_s
	movb	-3737(%rbp), %cl        # 1-byte Reload
	movsbl	%cl, %edi
	movsbl	%al, %esi
	callq	safe_mul_func_int8_t_s_s
	movslq	-28(%rbp), %r8
	movl	$4294967293, %r9d       # imm = 0xFFFFFFFD
	cmpq	%r8, %r9
	setae	%cl
	andb	$1, %cl
	movzbl	%cl, %esi
                                        # kill: def $sil killed $sil killed $esi
	movsbl	%sil, %edi
	movl	$1, %esi
	movb	%al, -3738(%rbp)        # 1-byte Spill
	callq	safe_lshift_func_int8_t_s_s
	movsbl	%al, %esi
	movzbl	-19(%rbp), %edi
	cmpl	%edi, %esi
	setge	%al
	andb	$1, %al
	movzbl	%al, %esi
                                        # kill: def $si killed $si killed $esi
	movzwl	%si, %edi
	callq	safe_unary_minus_func_uint16_t_u
	movzwl	%ax, %edi
	movl	%edi, -28(%rbp)
	movl	$0, -188(%rbp)
.LBB9_55:                               #   Parent Loop BB9_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_57 Depth 3
	cmpl	$20, -188(%rbp)
	jg	.LBB9_73
# %bb.56:                               #   in Loop: Header=BB9_55 Depth=2
	movl	$0, -1796(%rbp)
.LBB9_57:                               #   Parent Loop BB9_5 Depth=1
                                        #     Parent Loop BB9_55 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$7, -1796(%rbp)
	jge	.LBB9_60
# %bb.58:                               #   in Loop: Header=BB9_57 Depth=3
	movslq	-1796(%rbp), %rax
	movl	$1, -1792(%rbp,%rax,4)
# %bb.59:                               #   in Loop: Header=BB9_57 Depth=3
	movl	-1796(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1796(%rbp)
	jmp	.LBB9_57
.LBB9_60:                               #   in Loop: Header=BB9_55 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	leaq	-181(%rbp), %rdx
	cmpq	%rdx, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %eax
                                        # kill: def $al killed $al killed $eax
	movl	$33, %edi
	movzbl	%al, %esi
	callq	safe_add_func_uint8_t_u_u
	cmpb	$0, %al
	je	.LBB9_66
# %bb.61:                               #   in Loop: Header=BB9_55 Depth=2
	movabsq	$.Lconstinit.37, %rax
	movabsq	$g_161, %rcx
	movq	%rcx, %rdx
	addq	$153, %rdx
	movq	%rcx, %rsi
	addq	$67, %rsi
	movq	%rcx, %rdi
	addq	$66, %rdi
	movq	%rcx, %r8
	addq	$35, %r8
	movabsq	$.Lconstinit, %r9
	addq	$93, %rcx
	leaq	-3632(%rbp), %r10
	movabsq	$g_442, %r11
	addq	$72, %r11
	movq	%r11, -1808(%rbp)
	movl	$986217817, -1812(%rbp) # imm = 0x3AC87D59
	leaq	-240(%rbp), %r11
	movq	%r11, -1824(%rbp)
	leaq	-181(%rbp), %r11
	movq	%r11, -3632(%rbp)
	movq	%r11, -3624(%rbp)
	movq	%rdx, -3616(%rbp)
	movq	%rcx, -3608(%rbp)
	movq	%rdi, -3600(%rbp)
	movq	%rdi, -3592(%rbp)
	movq	%rcx, -3584(%rbp)
	movq	%rdx, -3576(%rbp)
	movq	%r11, -3568(%rbp)
	movq	%r8, -3560(%rbp)
	movq	%rdx, -3552(%rbp)
	movq	%r11, -3544(%rbp)
	movq	%rsi, -3536(%rbp)
	movabsq	$g_1299, %rbx
	movq	%rbx, -3528(%rbp)
	movq	%r11, -3520(%rbp)
	movq	%r11, -3512(%rbp)
	movq	%rbx, -3504(%rbp)
	movq	%rsi, -3496(%rbp)
	movq	%r8, -3488(%rbp)
	movq	%r11, -3480(%rbp)
	movq	%r8, -3472(%rbp)
	movq	%r11, -3464(%rbp)
	movq	%rcx, -3456(%rbp)
	movq	%r11, -3448(%rbp)
	movq	$0, -3440(%rbp)
	movq	$0, -3432(%rbp)
	movq	%r11, -3424(%rbp)
	movq	%r11, -3416(%rbp)
	movq	%rdx, -3408(%rbp)
	movq	%r8, -3400(%rbp)
	movq	%rdx, -3392(%rbp)
	movq	%r11, -3384(%rbp)
	movq	%rsi, -3376(%rbp)
	movq	%rbx, -3368(%rbp)
	movq	%r11, -3360(%rbp)
	movq	%r11, -3352(%rbp)
	movq	%rdx, -3344(%rbp)
	movq	%r11, -3336(%rbp)
	movq	%r11, -3328(%rbp)
	movq	%r11, -3320(%rbp)
	movq	%r11, -3312(%rbp)
	movq	%r11, -3304(%rbp)
	movq	%r11, -3296(%rbp)
	movq	%rdi, -3288(%rbp)
	movq	%r11, -3280(%rbp)
	addq	$360, %r10              # imm = 0x168
	movq	%r8, -3272(%rbp)
	movq	%r11, -3264(%rbp)
	movq	%r11, -3256(%rbp)
	movq	%r11, -3248(%rbp)
	movq	%rdi, -3240(%rbp)
	movq	%r11, -3232(%rbp)
	movq	%r11, -3224(%rbp)
	movq	%r11, -3216(%rbp)
	movq	%r8, -3208(%rbp)
	movq	%rbx, -3200(%rbp)
	movq	%r11, -3192(%rbp)
	movq	%r8, -3184(%rbp)
	movq	%rdi, -3176(%rbp)
	movq	%r11, -3168(%rbp)
	movq	$0, -3160(%rbp)
	movq	%r11, -3152(%rbp)
	movq	%rdi, -3144(%rbp)
	movq	%r8, -3136(%rbp)
	movq	%r11, -3128(%rbp)
	movq	%r11, -3120(%rbp)
	movq	%rbx, -3112(%rbp)
	movq	%rsi, -3104(%rbp)
	movq	%r11, -3096(%rbp)
	movq	%rdx, -3088(%rbp)
	movq	%r8, -3080(%rbp)
	movq	%rdx, -3072(%rbp)
	movq	%r11, -3064(%rbp)
	movq	%rbx, -3056(%rbp)
	movq	%r11, -3048(%rbp)
	movq	%r11, -3040(%rbp)
	movq	%rbx, -3032(%rbp)
	movq	%rsi, -3024(%rbp)
	movq	%r11, -3016(%rbp)
	movq	%rdx, -3008(%rbp)
	movq	%r8, -3000(%rbp)
	movq	%rdx, -2992(%rbp)
	movq	%r8, -2984(%rbp)
	movq	%r11, -2976(%rbp)
	movq	%rbx, -2968(%rbp)
	movq	%rbx, -2960(%rbp)
	movq	%r11, -2952(%rbp)
	movq	%r8, -2944(%rbp)
	movq	%rdi, -2936(%rbp)
	movq	%r11, -2928(%rbp)
	movq	$0, -2920(%rbp)
	addq	$360, %r10              # imm = 0x168
	movq	%r11, -2912(%rbp)
	movq	%r11, -2904(%rbp)
	movq	%r8, -2896(%rbp)
	movq	%rsi, -2888(%rbp)
	movq	%rsi, -2880(%rbp)
	movq	%r8, -2872(%rbp)
	movq	%r11, -2864(%rbp)
	movq	%r11, -2856(%rbp)
	movq	%r11, -2848(%rbp)
	movq	%r10, %rcx
	addq	$72, %rcx
	movq	$0, -2840(%rbp)
	movq	%rbx, -2832(%rbp)
	movq	%r11, -2824(%rbp)
	movq	%rdi, -2816(%rbp)
	movq	%r11, -2808(%rbp)
	movq	%r11, -2800(%rbp)
	movq	%rdi, -2792(%rbp)
	movq	%r11, -2784(%rbp)
	movq	%rbx, -2776(%rbp)
	addq	$72, %rcx
	movq	%rsi, -2768(%rbp)
	movq	%r11, -2760(%rbp)
	movq	$0, -2752(%rbp)
	movq	%r11, -2744(%rbp)
	movq	%r11, -2736(%rbp)
	movq	%rdx, -2728(%rbp)
	movq	%rdx, -2720(%rbp)
	movq	%r11, -2712(%rbp)
	movq	%r11, -2704(%rbp)
	addq	$72, %rcx
	movq	%rdi, -3752(%rbp)       # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rsi, -3760(%rbp)       # 8-byte Spill
	movq	%r9, %rsi
	movl	$72, %ecx
	movq	%rdx, -3768(%rbp)       # 8-byte Spill
	movq	%rcx, %rdx
	movq	%rax, -3776(%rbp)       # 8-byte Spill
	movq	%r8, -3784(%rbp)        # 8-byte Spill
	movq	%r11, -3792(%rbp)       # 8-byte Spill
	movq	%rbx, -3800(%rbp)       # 8-byte Spill
	movq	%r10, -3808(%rbp)       # 8-byte Spill
	movq	%rcx, -3816(%rbp)       # 8-byte Spill
	callq	memcpy
	movq	$0, -2624(%rbp)
	movq	-3792(%rbp), %rax       # 8-byte Reload
	movq	%rax, -2616(%rbp)
	movq	-3760(%rbp), %rcx       # 8-byte Reload
	movq	%rcx, -2608(%rbp)
	movq	%rax, -2600(%rbp)
	movq	$0, -2592(%rbp)
	movq	%rax, -2584(%rbp)
	movq	%rax, -2576(%rbp)
	movq	-3768(%rbp), %rdx       # 8-byte Reload
	movq	%rdx, -2568(%rbp)
	movq	%rdx, -2560(%rbp)
	movq	-3808(%rbp), %rsi       # 8-byte Reload
	addq	$360, %rsi              # imm = 0x168
	movq	%rax, -2552(%rbp)
	movq	-3800(%rbp), %rdi       # 8-byte Reload
	movq	%rdi, -2544(%rbp)
	movq	$0, -2536(%rbp)
	movq	%rdx, -2528(%rbp)
	movq	$0, -2520(%rbp)
	movq	%rdi, -2512(%rbp)
	movq	%rax, -2504(%rbp)
	movq	-3752(%rbp), %r8        # 8-byte Reload
	movq	%r8, -2496(%rbp)
	movq	%rax, -2488(%rbp)
	movq	-3784(%rbp), %r9        # 8-byte Reload
	movq	%r9, -2480(%rbp)
	movq	%rax, -2472(%rbp)
	movq	%rax, -2464(%rbp)
	movq	%rax, -2456(%rbp)
	movq	%r8, -2448(%rbp)
	movq	%rax, -2440(%rbp)
	movq	%rax, -2432(%rbp)
	movq	%rax, -2424(%rbp)
	movq	%r9, -2416(%rbp)
	movq	%rdi, -2408(%rbp)
	movq	%rax, -2400(%rbp)
	movq	%r9, -2392(%rbp)
	movq	%r8, -2384(%rbp)
	movq	%rax, -2376(%rbp)
	movq	$0, -2368(%rbp)
	movq	%rax, -2360(%rbp)
	movq	%r8, -2352(%rbp)
	movq	%r9, -2344(%rbp)
	movq	%rax, -2336(%rbp)
	movq	%rax, -2328(%rbp)
	movq	%rdi, -2320(%rbp)
	movq	%rcx, -2312(%rbp)
	movq	%rax, -2304(%rbp)
	movq	%rdx, -2296(%rbp)
	movq	%r9, -2288(%rbp)
	movq	%rdx, -2280(%rbp)
	movq	%rax, -2272(%rbp)
	movq	%rdi, -2264(%rbp)
	movq	%rax, -2256(%rbp)
	movq	%rax, -2248(%rbp)
	movq	%rdi, -2240(%rbp)
	movq	%rcx, -2232(%rbp)
	movq	%rax, -2224(%rbp)
	movq	%rdx, -2216(%rbp)
	movq	%r9, -2208(%rbp)
	movq	%rdx, -2200(%rbp)
	addq	$360, %rsi              # imm = 0x168
	movq	%r9, -2192(%rbp)
	movq	%rax, -2184(%rbp)
	movq	%rdi, -2176(%rbp)
	movq	%rdi, -2168(%rbp)
	movq	%rax, -2160(%rbp)
	movq	%r9, -2152(%rbp)
	movq	%r8, -2144(%rbp)
	movq	%rax, -2136(%rbp)
	movq	$0, -2128(%rbp)
	addq	$72, %rsi
	movq	%rax, -2120(%rbp)
	movq	%rax, -2112(%rbp)
	movq	%r9, -2104(%rbp)
	movq	%rcx, -2096(%rbp)
	movq	%rcx, -2088(%rbp)
	movq	%r9, -2080(%rbp)
	movq	%rax, -2072(%rbp)
	movq	%rax, -2064(%rbp)
	movq	%rax, -2056(%rbp)
	addq	$72, %rsi
	movq	$0, -2048(%rbp)
	movq	%rdi, -2040(%rbp)
	movq	%rax, -2032(%rbp)
	movq	%r8, -2024(%rbp)
	movq	%rax, -2016(%rbp)
	movq	%rax, -2008(%rbp)
	movq	%r8, -2000(%rbp)
	movq	%rax, -1992(%rbp)
	movq	%rdi, -1984(%rbp)
	addq	$72, %rsi
	movq	%rcx, -1976(%rbp)
	movq	%rax, -1968(%rbp)
	movq	$0, -1960(%rbp)
	movq	%rax, -1952(%rbp)
	movq	%rax, -1944(%rbp)
	movq	%rdx, -1936(%rbp)
	movq	%rdx, -1928(%rbp)
	movq	%rax, -1920(%rbp)
	movq	%rax, -1912(%rbp)
	addq	$72, %rsi
	movq	%rsi, %rdi
	movq	-3776(%rbp), %rsi       # 8-byte Reload
	movq	-3816(%rbp), %rdx       # 8-byte Reload
	callq	memcpy
	movl	$1207835926, -3636(%rbp) # imm = 0x47FE1D16
	movq	g_201, %rax
	movq	(%rax), %rax
	movq	g_1516, %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	%rax, (%rcx)
	cmpl	$0, -28(%rbp)
	movb	$1, %r14b
	movb	%r14b, -3817(%rbp)      # 1-byte Spill
	jne	.LBB9_65
# %bb.62:                               #   in Loop: Header=BB9_55 Depth=2
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movslq	-24(%rbp), %rdi
	movzbl	-19(%rbp), %ecx
	cmpq	$0, g_442+64
	movq	%rdi, -3832(%rbp)       # 8-byte Spill
	movl	%ecx, -3836(%rbp)       # 4-byte Spill
	movb	%al, -3837(%rbp)        # 1-byte Spill
	je	.LBB9_64
# %bb.63:                               #   in Loop: Header=BB9_55 Depth=2
	movq	g_731, %rax
	movswl	(%rax), %ecx
	movq	-144(%rbp), %rax
	movzwl	(%rax), %edx
	movl	%edx, %esi
	xorq	$65535, %rsi            # imm = 0xFFFF
                                        # kill: def $si killed $si killed $rsi
	movw	%si, (%rax)
	movzwl	%si, %edx
	orl	%edx, %ecx
	cmpl	$0, %ecx
	setne	%dil
	movb	%dil, -3837(%rbp)       # 1-byte Spill
.LBB9_64:                               #   in Loop: Header=BB9_55 Depth=2
	movb	-3837(%rbp), %al        # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movslq	%ecx, %rdx
	movq	g_1029, %rsi
	movq	(%rsi), %rsi
	movq	(%rsi), %rsi
	movq	%rdx, (%rsi)
	movabsq	$7541515951986604623, %rsi # imm = 0x68A8D8CD3A1A7A4F
	cmpq	%rsi, %rdx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edi
	movl	-1772(%rbp), %esi
	callq	safe_add_func_int32_t_s_s
	movl	-3836(%rbp), %ecx       # 4-byte Reload
	cmpl	%eax, %ecx
	setl	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %eax
	movslq	%eax, %rdx
	movq	-1808(%rbp), %r9
	movq	%rdx, (%r9)
	movslq	-1784(%rbp), %rsi
	movq	%rdx, %rdi
	callq	safe_mod_func_int64_t_s_s
	movl	$252, %edx
	cmpq	%rax, %rdx
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %ecx
	movslq	%ecx, %rax
	movq	g_1700, %rdx
	movq	%rax, (%rdx)
	movslq	-1812(%rbp), %rdx
	orq	%rax, %rdx
                                        # kill: def $edx killed $edx killed $rdx
	movl	%edx, -1812(%rbp)
	movslq	%edx, %rsi
	movq	-3832(%rbp), %rdi       # 8-byte Reload
	callq	safe_div_func_uint64_t_u_u
	cmpq	$0, %rax
	setne	%r8b
	xorb	$-1, %r8b
	andb	$1, %r8b
	movzbl	%r8b, %ecx
                                        # kill: def $cx killed $cx killed $ecx
	movl	-28(%rbp), %edx
                                        # kill: def $dx killed $dx killed $edx
	movzwl	%cx, %edi
	movzwl	%dx, %esi
	callq	safe_sub_func_uint16_t_u_u
	movzwl	%ax, %esi
	cmpl	-28(%rbp), %esi
	setg	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edi
	movl	$5, %esi
	callq	safe_mod_func_uint32_t_u_u
                                        # kill: def $ax killed $ax killed $eax
	movswl	%ax, %edi
	movl	$4294967287, %esi       # imm = 0xFFFFFFF7
	callq	safe_mul_func_int16_t_s_s
	movq	g_731, %r9
	movzwl	%ax, %edi
	movzwl	(%r9), %esi
	callq	safe_mod_func_uint16_t_u_u
	movzwl	%ax, %esi
	movl	%esi, %edi
	movzbl	-19(%rbp), %esi
                                        # kill: def $rsi killed $esi
	callq	safe_add_func_int64_t_s_s
	cmpq	$0, %rax
	setne	%r8b
	movb	%r8b, -3817(%rbp)       # 1-byte Spill
.LBB9_65:                               #   in Loop: Header=BB9_55 Depth=2
	movb	-3817(%rbp), %al        # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -28(%rbp)
	movl	-1812(%rbp), %ecx
                                        # kill: def $cx killed $cx killed $ecx
	movl	-1812(%rbp), %edx
	movq	-240(%rbp), %rsi
	movq	-1824(%rbp), %rdi
	movq	%rsi, (%rdi)
	movabsq	$g_930, %rdi
	cmpq	%rdi, %rsi
	sete	%al
	andb	$1, %al
	movzbl	%al, %r8d
	cmpl	%r8d, %edx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movslq	%edx, %rsi
	movabsq	$-2859896019735512788, %rdi # imm = 0xD84F9BB8F11C792C
	xorq	%rdi, %rsi
                                        # kill: def $si killed $si killed $rsi
	movswl	%cx, %edi
	movswl	%si, %esi
	callq	safe_div_func_int16_t_s_s
                                        # kill: def $al killed $al killed $ax
	movl	-1812(%rbp), %edx
	andl	-3636(%rbp), %edx
	movl	%edx, -3636(%rbp)
                                        # kill: def $dl killed $dl killed $edx
	movl	$163, %edi
	movzbl	%dl, %esi
	movb	%al, -3838(%rbp)        # 1-byte Spill
	callq	safe_sub_func_uint8_t_u_u
	xorl	%esi, %esi
	movl	%esi, %r9d
	movzbl	%al, %edi
	movslq	-1780(%rbp), %r10
	movq	g_1700, %r11
	xorq	(%r11), %r10
	movq	%r10, (%r11)
	leaq	-24(%rbp), %r11
	cmpq	%r11, %r9
	setne	%al
	andb	$1, %al
	movzbl	%al, %esi
	movslq	%esi, %r9
	cmpq	%r9, %r10
	setne	%al
	andb	$1, %al
	movzbl	%al, %esi
	movslq	%esi, %r9
	orq	$1, %r9
                                        # kill: def $r9d killed $r9d killed $r9
	movl	%r9d, %esi
	callq	safe_sub_func_int32_t_s_s
                                        # kill: def $al killed $al killed $eax
	movb	-3838(%rbp), %dl        # 1-byte Reload
	movsbl	%dl, %edi
	movsbl	%al, %esi
	callq	safe_sub_func_int8_t_s_s
	movl	-1812(%rbp), %esi
	movl	%esi, -28(%rbp)
	jmp	.LBB9_69
.LBB9_66:                               #   in Loop: Header=BB9_55 Depth=2
	cmpl	$0, -1772(%rbp)
	je	.LBB9_68
# %bb.67:                               #   in Loop: Header=BB9_5 Depth=1
	jmp	.LBB9_73
.LBB9_68:                               #   in Loop: Header=BB9_55 Depth=2
	jmp	.LBB9_69
.LBB9_69:                               #   in Loop: Header=BB9_55 Depth=2
	cmpl	$0, g_58
	je	.LBB9_71
# %bb.70:                               #   in Loop: Header=BB9_5 Depth=1
	jmp	.LBB9_5
.LBB9_71:                               #   in Loop: Header=BB9_55 Depth=2
	jmp	.LBB9_72
.LBB9_72:                               #   in Loop: Header=BB9_55 Depth=2
	movl	-188(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -188(%rbp)
	jmp	.LBB9_55
.LBB9_73:                               #   in Loop: Header=BB9_5 Depth=1
	jmp	.LBB9_78
.LBB9_74:                               #   in Loop: Header=BB9_5 Depth=1
	movw	$-19, -202(%rbp)
# %bb.75:                               #   in Loop: Header=BB9_5 Depth=1
	movzwl	-202(%rbp), %eax
	cmpl	$10, %eax
	jne	.LBB9_77
# %bb.76:
	movzbl	-19(%rbp), %eax
                                        # kill: def $ax killed $ax killed $eax
	movw	%ax, -18(%rbp)
	jmp	.LBB9_81
.LBB9_77:                               #   in Loop: Header=BB9_5 Depth=1
	jmp	.LBB9_78
.LBB9_78:                               #   in Loop: Header=BB9_5 Depth=1
	cmpl	$0, g_895
	je	.LBB9_80
# %bb.79:                               #   in Loop: Header=BB9_5 Depth=1
	jmp	.LBB9_5
.LBB9_80:
	movl	-24(%rbp), %eax
                                        # kill: def $ax killed $ax killed $eax
	movw	%ax, -18(%rbp)
.LBB9_81:
	movzwl	-18(%rbp), %eax
	addq	$3824, %rsp             # imm = 0xEF0
	popq	%rbx
	popq	%r14
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end9:
	.size	func_13, .Lfunc_end9-func_13
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function safe_mod_func_uint64_t_u_u
	.type	safe_mod_func_uint64_t_u_u,@function
safe_mod_func_uint64_t_u_u:             # @safe_mod_func_uint64_t_u_u
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB10_2
# %bb.1:
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB10_3
.LBB10_2:
	movq	-8(%rbp), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	divq	-16(%rbp)
	movq	%rdx, -24(%rbp)         # 8-byte Spill
.LBB10_3:
	movq	-24(%rbp), %rax         # 8-byte Reload
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end10:
	.size	safe_mod_func_uint64_t_u_u, .Lfunc_end10-safe_mod_func_uint64_t_u_u
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function safe_mod_func_uint16_t_u_u
	.type	safe_mod_func_uint16_t_u_u,@function
safe_mod_func_uint16_t_u_u:             # @safe_mod_func_uint16_t_u_u
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
                                        # kill: def $si killed $si killed $esi
                                        # kill: def $di killed $di killed $edi
	movw	%di, -2(%rbp)
	movw	%si, -4(%rbp)
	movzwl	-4(%rbp), %eax
	cmpl	$0, %eax
	jne	.LBB11_2
# %bb.1:
	movzwl	-2(%rbp), %eax
	movl	%eax, -8(%rbp)          # 4-byte Spill
	jmp	.LBB11_3
.LBB11_2:
	movzwl	-2(%rbp), %eax
	movzwl	-4(%rbp), %ecx
	cltd
	idivl	%ecx
	movl	%edx, -8(%rbp)          # 4-byte Spill
.LBB11_3:
	movl	-8(%rbp), %eax          # 4-byte Reload
                                        # kill: def $ax killed $ax killed $eax
	movzwl	%ax, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end11:
	.size	safe_mod_func_uint16_t_u_u, .Lfunc_end11-safe_mod_func_uint16_t_u_u
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function func_24
	.type	func_24,@function
func_24:                                # @func_24
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1624, %rsp             # imm = 0x658
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
                                        # kill: def $r8w killed $r8w killed $r8d
	movl	%edi, -44(%rbp)
	movl	%esi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	%rcx, -64(%rbp)
	movw	%r8w, -66(%rbp)
	movl	$-1803414318, -72(%rbp) # imm = 0x948214D2
	movl	$1955741649, -76(%rbp)  # imm = 0x74923FD1
	movb	$13, -77(%rbp)
	movq	$0, -88(%rbp)
	leaq	-88(%rbp), %rax
	movq	%rax, -368(%rbp)
	movq	%rax, -360(%rbp)
	movq	%rax, -352(%rbp)
	movq	%rax, -344(%rbp)
	movq	%rax, -336(%rbp)
	movq	%rax, -328(%rbp)
	movq	%rax, -320(%rbp)
	movq	%rax, -312(%rbp)
	movq	%rax, -304(%rbp)
	movq	%rax, -296(%rbp)
	movq	%rax, -288(%rbp)
	movq	%rax, -280(%rbp)
	movq	%rax, -272(%rbp)
	movq	%rax, -264(%rbp)
	movq	%rax, -256(%rbp)
	movq	%rax, -248(%rbp)
	movq	%rax, -240(%rbp)
	movq	%rax, -232(%rbp)
	movq	%rax, -224(%rbp)
	movq	%rax, -216(%rbp)
	movq	%rax, -208(%rbp)
	movq	%rax, -200(%rbp)
	movq	%rax, -192(%rbp)
	movq	%rax, -184(%rbp)
	movq	%rax, -176(%rbp)
	movq	%rax, -168(%rbp)
	movq	%rax, -160(%rbp)
	movq	%rax, -152(%rbp)
	movq	%rax, -144(%rbp)
	movq	%rax, -136(%rbp)
	movq	%rax, -128(%rbp)
	movq	%rax, -120(%rbp)
	movq	%rax, -112(%rbp)
	movq	%rax, -104(%rbp)
	movq	%rax, -96(%rbp)
	movq	$0, -376(%rbp)
	movabsq	$g_45, %rax
	movq	%rax, -384(%rbp)
	movl	$0, -52(%rbp)
.LBB12_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_3 Depth 2
                                        #       Child Loop BB12_5 Depth 3
                                        #         Child Loop BB12_7 Depth 4
                                        #     Child Loop BB12_15 Depth 2
	cmpl	$21, -52(%rbp)
	jge	.LBB12_24
# %bb.2:                                #   in Loop: Header=BB12_1 Depth=1
	movabsq	$.Lconstinit.44, %rax
	leaq	-416(%rbp), %rcx
	movabsq	$g_112, %rdx
	movq	%rdx, %rsi
	addq	$4, %rsi
	movq	%rdx, %rdi
	addq	$8, %rdi
	movq	%rdx, %r8
	addq	$24, %r8
	movabsq	$.Lconstinit.43, %r9
	movabsq	$.Lconstinit.42, %r10
	movabsq	$.Lconstinit.41, %r11
	movq	%rdx, %rbx
	addq	$12, %rbx
	movabsq	$.Lconstinit.40, %r14
	movabsq	$.Lconstinit.39, %r15
	addq	$16, %rdx
	movabsq	$.Lconstinit.38, %r12
	leaq	-1344(%rbp), %r13
	movq	$0, -424(%rbp)
	movq	%rbx, -432(%rbp)
	movq	%r8, -440(%rbp)
	movq	%r13, -1480(%rbp)       # 8-byte Spill
	movq	%rdi, -1488(%rbp)       # 8-byte Spill
	movq	%r13, %rdi
	movq	%rsi, -1496(%rbp)       # 8-byte Spill
	movq	%r12, %rsi
	movl	$56, %r12d
	movq	%rdx, -1504(%rbp)       # 8-byte Spill
	movq	%r12, %rdx
	movq	%rax, -1512(%rbp)       # 8-byte Spill
	movq	%rcx, -1520(%rbp)       # 8-byte Spill
	movq	%r8, -1528(%rbp)        # 8-byte Spill
	movq	%r9, -1536(%rbp)        # 8-byte Spill
	movq	%r10, -1544(%rbp)       # 8-byte Spill
	movq	%r11, -1552(%rbp)       # 8-byte Spill
	movq	%rbx, -1560(%rbp)       # 8-byte Spill
	movq	%r14, -1568(%rbp)       # 8-byte Spill
	movq	%r15, -1576(%rbp)       # 8-byte Spill
	movq	%r12, -1584(%rbp)       # 8-byte Spill
	callq	memcpy
	movq	-1480(%rbp), %rax       # 8-byte Reload
	addq	$56, %rax
	movabsq	$g_895, %rcx
	movq	%rcx, -1288(%rbp)
	movq	-1520(%rbp), %rdx       # 8-byte Reload
	addq	$16, %rdx
	movq	%rdx, -1280(%rbp)
	movabsq	$g_118, %rdx
	movq	%rdx, -1272(%rbp)
	movabsq	$g_58, %rsi
	movq	%rsi, -1264(%rbp)
	movq	%rdx, -1256(%rbp)
	movq	-1520(%rbp), %rdi       # 8-byte Reload
	addq	$16, %rdi
	movq	%rdi, -1248(%rbp)
	movq	%rcx, -1240(%rbp)
	addq	$56, %rax
	movq	$0, -1232(%rbp)
	movq	%rcx, -1224(%rbp)
	movq	-1528(%rbp), %rdi       # 8-byte Reload
	movq	%rdi, -1216(%rbp)
	movq	$0, -1208(%rbp)
	movq	-1520(%rbp), %r8        # 8-byte Reload
	addq	$16, %r8
	addq	$4, %r8
	movq	%r8, -1200(%rbp)
	movq	$0, -1192(%rbp)
	movq	-1520(%rbp), %r8        # 8-byte Reload
	addq	$16, %r8
	addq	$4, %r8
	movq	%r8, -1184(%rbp)
	addq	$56, %rax
	movq	-1520(%rbp), %r8        # 8-byte Reload
	addq	$16, %r8
	movq	%r8, -1176(%rbp)
	movq	%rsi, -1168(%rbp)
	movq	%rsi, -1160(%rbp)
	movq	-1520(%rbp), %r8        # 8-byte Reload
	addq	$16, %r8
	movq	%r8, -1152(%rbp)
	movq	-1504(%rbp), %r8        # 8-byte Reload
	movq	%r8, -1144(%rbp)
	movq	$0, -1136(%rbp)
	movq	%rsi, -1128(%rbp)
	addq	$56, %rax
	movq	%rdx, -1120(%rbp)
	movq	$0, -1112(%rbp)
	movq	%rdi, -1104(%rbp)
	movq	-1520(%rbp), %r9        # 8-byte Reload
	addq	$16, %r9
	movq	%r9, -1096(%rbp)
	movq	%rcx, -1088(%rbp)
	movq	-1520(%rbp), %r9        # 8-byte Reload
	addq	$16, %r9
	movq	%r9, -1080(%rbp)
	movabsq	$g_129, %r9
	movq	%r9, -1072(%rbp)
	addq	$56, %rax
	movq	%rax, %r10
	movq	%r10, %rdi
	movq	-1576(%rbp), %r10       # 8-byte Reload
	movq	%rsi, -1592(%rbp)       # 8-byte Spill
	movq	%r10, %rsi
	movq	-1584(%rbp), %r11       # 8-byte Reload
	movq	%rdx, -1600(%rbp)       # 8-byte Spill
	movq	%r11, %rdx
	movq	%rcx, -1608(%rbp)       # 8-byte Spill
	movq	%r9, -1616(%rbp)        # 8-byte Spill
	movq	%rax, -1624(%rbp)       # 8-byte Spill
	callq	memcpy
	movq	-1624(%rbp), %rax       # 8-byte Reload
	addq	$56, %rax
	movq	-1616(%rbp), %rcx       # 8-byte Reload
	movq	%rcx, -1008(%rbp)
	movq	-1592(%rbp), %rdx       # 8-byte Reload
	movq	%rdx, -1000(%rbp)
	movq	-1608(%rbp), %rsi       # 8-byte Reload
	movq	%rsi, -992(%rbp)
	movq	%rdx, -984(%rbp)
	movq	%rcx, -976(%rbp)
	movq	%rsi, -968(%rbp)
	movq	-1520(%rbp), %rdi       # 8-byte Reload
	addq	$16, %rdi
	addq	$4, %rdi
	movq	%rdi, -960(%rbp)
	addq	$56, %rax
	movq	%rax, %rdi
	movq	-1568(%rbp), %rsi       # 8-byte Reload
	movq	-1584(%rbp), %rdx       # 8-byte Reload
	callq	memcpy
	movq	-1480(%rbp), %rax       # 8-byte Reload
	addq	$448, %rax              # imm = 0x1C0
	movq	-1520(%rbp), %rcx       # 8-byte Reload
	addq	$16, %rcx
	addq	$4, %rcx
	movq	%rcx, -896(%rbp)
	movq	-1496(%rbp), %rcx       # 8-byte Reload
	movq	%rcx, -888(%rbp)
	movq	$0, -880(%rbp)
	movq	-1520(%rbp), %rdx       # 8-byte Reload
	addq	$16, %rdx
	movq	%rdx, -872(%rbp)
	movq	-1616(%rbp), %rdx       # 8-byte Reload
	movq	%rdx, -864(%rbp)
	movq	-1560(%rbp), %rsi       # 8-byte Reload
	movq	%rsi, -856(%rbp)
	movq	-1528(%rbp), %rdi       # 8-byte Reload
	movq	%rdi, -848(%rbp)
	addq	$56, %rax
	movq	-1488(%rbp), %r8        # 8-byte Reload
	movq	%r8, -840(%rbp)
	movq	%rdi, -832(%rbp)
	movq	-1520(%rbp), %r9        # 8-byte Reload
	addq	$16, %r9
	movq	%r9, -824(%rbp)
	movq	-1520(%rbp), %r9        # 8-byte Reload
	addq	$16, %r9
	movq	%r9, -816(%rbp)
	movq	%rdi, -808(%rbp)
	movq	%r8, -800(%rbp)
	movq	-1592(%rbp), %r9        # 8-byte Reload
	movq	%r9, -792(%rbp)
	addq	$56, %rax
	movq	%rax, %r10
	movq	%r10, %rdi
	movq	-1552(%rbp), %rsi       # 8-byte Reload
	movq	-1584(%rbp), %rdx       # 8-byte Reload
	movq	%rax, -1632(%rbp)       # 8-byte Spill
	callq	memcpy
	movq	-1632(%rbp), %rax       # 8-byte Reload
	addq	$56, %rax
	movq	%rax, %rcx
	movq	%rcx, %rdi
	movq	-1544(%rbp), %rsi       # 8-byte Reload
	movq	-1584(%rbp), %rdx       # 8-byte Reload
	movq	%rax, -1640(%rbp)       # 8-byte Spill
	callq	memcpy
	movq	-1640(%rbp), %rax       # 8-byte Reload
	addq	$56, %rax
	movq	%rax, %rcx
	movq	%rcx, %rdi
	movq	-1536(%rbp), %rsi       # 8-byte Reload
	movq	-1584(%rbp), %rdx       # 8-byte Reload
	movq	%rax, -1648(%rbp)       # 8-byte Spill
	callq	memcpy
	movq	-1648(%rbp), %rax       # 8-byte Reload
	addq	$56, %rax
	movq	-1520(%rbp), %rcx       # 8-byte Reload
	addq	$16, %rcx
	movq	%rcx, -616(%rbp)
	movq	-1528(%rbp), %rcx       # 8-byte Reload
	movq	%rcx, -608(%rbp)
	movq	-1488(%rbp), %rdx       # 8-byte Reload
	movq	%rdx, -600(%rbp)
	movq	-1592(%rbp), %rsi       # 8-byte Reload
	movq	%rsi, -592(%rbp)
	movq	%rsi, -584(%rbp)
	movq	-1600(%rbp), %rdi       # 8-byte Reload
	movq	%rdi, -576(%rbp)
	movq	%rsi, -568(%rbp)
	addq	$56, %rax
	movq	$0, -560(%rbp)
	movq	-1496(%rbp), %r8        # 8-byte Reload
	movq	%r8, -552(%rbp)
	movq	-1520(%rbp), %r9        # 8-byte Reload
	addq	$16, %r9
	addq	$4, %r9
	movq	%r9, -544(%rbp)
	movq	-1616(%rbp), %r9        # 8-byte Reload
	movq	%r9, -536(%rbp)
	movq	-1608(%rbp), %r10       # 8-byte Reload
	movq	%r10, -528(%rbp)
	movq	$0, -520(%rbp)
	movq	%r10, -512(%rbp)
	addq	$56, %rax
	movq	%rax, %rdi
	movq	-1512(%rbp), %rsi       # 8-byte Reload
	movq	-1584(%rbp), %rdx       # 8-byte Reload
	callq	memcpy
	movl	$0, -1348(%rbp)
.LBB12_3:                               #   Parent Loop BB12_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_5 Depth 3
                                        #         Child Loop BB12_7 Depth 4
	cmpl	$1, -1348(%rbp)
	jge	.LBB12_14
# %bb.4:                                #   in Loop: Header=BB12_3 Depth=2
	movl	$0, -1352(%rbp)
.LBB12_5:                               #   Parent Loop BB12_1 Depth=1
                                        #     Parent Loop BB12_3 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB12_7 Depth 4
	cmpl	$3, -1352(%rbp)
	jge	.LBB12_12
# %bb.6:                                #   in Loop: Header=BB12_5 Depth=3
	movl	$0, -1356(%rbp)
.LBB12_7:                               #   Parent Loop BB12_1 Depth=1
                                        #     Parent Loop BB12_3 Depth=2
                                        #       Parent Loop BB12_5 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpl	$2, -1356(%rbp)
	jge	.LBB12_10
# %bb.8:                                #   in Loop: Header=BB12_7 Depth=4
	movslq	-1348(%rbp), %rax
	imulq	$24, %rax, %rax
	leaq	-416(%rbp), %rcx
	addq	%rax, %rcx
	movslq	-1352(%rbp), %rax
	shlq	$3, %rax
	addq	%rax, %rcx
	movslq	-1356(%rbp), %rax
	movl	$8, (%rcx,%rax,4)
# %bb.9:                                #   in Loop: Header=BB12_7 Depth=4
	movl	-1356(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1356(%rbp)
	jmp	.LBB12_7
.LBB12_10:                              #   in Loop: Header=BB12_5 Depth=3
	jmp	.LBB12_11
.LBB12_11:                              #   in Loop: Header=BB12_5 Depth=3
	movl	-1352(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1352(%rbp)
	jmp	.LBB12_5
.LBB12_12:                              #   in Loop: Header=BB12_3 Depth=2
	jmp	.LBB12_13
.LBB12_13:                              #   in Loop: Header=BB12_3 Depth=2
	movl	-1348(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1348(%rbp)
	jmp	.LBB12_3
.LBB12_14:                              #   in Loop: Header=BB12_1 Depth=1
	movl	$-20, -44(%rbp)
.LBB12_15:                              #   Parent Loop BB12_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$-24, -44(%rbp)
	je	.LBB12_18
# %bb.16:                               #   in Loop: Header=BB12_15 Depth=2
	movabsq	$.L__const.func_24.l_44, %rax
	leaq	-1456(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movl	$96, %edx
	callq	memcpy
	movl	$134164168, -1460(%rbp) # imm = 0x7FF2EC8
# %bb.17:                               #   in Loop: Header=BB12_15 Depth=2
	movl	-44(%rbp), %edi
	movl	$4, %esi
	callq	safe_sub_func_uint32_t_u_u
	movl	%eax, -44(%rbp)
	jmp	.LBB12_15
.LBB12_18:                              #   in Loop: Header=BB12_1 Depth=1
	cmpl	$0, -76(%rbp)
	je	.LBB12_20
# %bb.19:                               #   in Loop: Header=BB12_1 Depth=1
	jmp	.LBB12_23
.LBB12_20:                              #   in Loop: Header=BB12_1 Depth=1
	movb	-77(%rbp), %al
	addb	$1, %al
	movb	%al, -77(%rbp)
	movq	g_1622, %rcx
	cmpl	$0, (%rcx)
	je	.LBB12_22
# %bb.21:                               #   in Loop: Header=BB12_1 Depth=1
	jmp	.LBB12_23
.LBB12_22:                              #   in Loop: Header=BB12_1 Depth=1
	jmp	.LBB12_23
.LBB12_23:                              #   in Loop: Header=BB12_1 Depth=1
	movslq	-52(%rbp), %rdi
	movl	$1, %esi
	callq	safe_add_func_int64_t_s_s
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -52(%rbp)
	jmp	.LBB12_1
.LBB12_24:
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movq	-88(%rbp), %rcx
	movq	%rcx, g_1877+56
	movabsq	$g_1878, %rdx
	cmpq	%rdx, %rcx
	movb	%al, -1649(%rbp)        # 1-byte Spill
	je	.LBB12_26
# %bb.25:
	movq	-64(%rbp), %rax
                                        # kill: def $al killed $al killed $rax
	movq	g_1129, %rcx
	movq	(%rcx), %rcx
	movb	%al, (%rcx)
	movzbl	-77(%rbp), %edx
	cmpq	$0, -376(%rbp)
	setne	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
                                        # kill: def $di killed $di killed $edi
	movq	-384(%rbp), %rcx
	movw	%di, (%rcx)
	movzwl	%di, %r8d
	cmpl	%r8d, %edx
	setne	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
                                        # kill: def $dx killed $dx killed $edx
	movzwl	%dx, %edi
	movl	$1, %esi
	movb	%al, -1650(%rbp)        # 1-byte Spill
	callq	safe_mul_func_uint16_t_u_u
                                        # kill: def $al killed $al killed $ax
	movb	-1650(%rbp), %r9b       # 1-byte Reload
	movzbl	%r9b, %edi
	movzbl	%al, %esi
	callq	safe_div_func_uint8_t_u_u
	movsbl	%al, %edi
	movl	$5, %esi
	callq	safe_rshift_func_int8_t_s_s
	movq	g_1700, %rcx
	movabsq	$6762186875295076220, %r10 # imm = 0x5DD81D22AEC58F7C
	andq	(%rcx), %r10
	movzbl	-77(%rbp), %esi
	movl	%esi, %ecx
	cmpq	%rcx, %r10
	sete	%r9b
	movb	%r9b, -1649(%rbp)       # 1-byte Spill
.LBB12_26:
	movb	-1649(%rbp), %al        # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
                                        # kill: def $cl killed $cl killed $ecx
	movzbl	%cl, %edi
	movzbl	-77(%rbp), %esi
	callq	safe_div_func_uint8_t_u_u
	xorl	%edx, %edx
                                        # kill: def $dl killed $dl killed $edx
	movzbl	%al, %esi
	cmpl	$0, %esi
	movb	%dl, -1651(%rbp)        # 1-byte Spill
	je	.LBB12_28
# %bb.27:
	cmpl	$0, -52(%rbp)
	setne	%al
	movb	%al, -1651(%rbp)        # 1-byte Spill
.LBB12_28:
	movb	-1651(%rbp), %al        # 1-byte Reload
	movq	g_1614, %rcx
	movq	(%rcx), %rcx
	movq	g_1614, %rdx
	movq	%rcx, (%rdx)
	movq	g_1244, %rcx
	movl	$1, (%rcx)
	movzwl	-66(%rbp), %esi
	movb	%al, -1652(%rbp)        # 1-byte Spill
	movl	%esi, %eax
	addq	$1624, %rsp             # imm = 0x658
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end12:
	.size	func_24, .Lfunc_end12-func_24
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function safe_lshift_func_uint16_t_u_u
	.type	safe_lshift_func_uint16_t_u_u,@function
safe_lshift_func_uint16_t_u_u:          # @safe_lshift_func_uint16_t_u_u
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
                                        # kill: def $di killed $di killed $edi
	movw	%di, -2(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$32, -8(%rbp)
	jae	.LBB13_2
# %bb.1:
	movzwl	-2(%rbp), %eax
	movl	-8(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	movl	$65535, %edx            # imm = 0xFFFF
	sarl	%cl, %edx
	cmpl	%edx, %eax
	jle	.LBB13_3
.LBB13_2:
	movzwl	-2(%rbp), %eax
	movl	%eax, -12(%rbp)         # 4-byte Spill
	jmp	.LBB13_4
.LBB13_3:
	movzwl	-2(%rbp), %eax
	movl	-8(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	shll	%cl, %eax
	movl	%eax, -12(%rbp)         # 4-byte Spill
.LBB13_4:
	movl	-12(%rbp), %eax         # 4-byte Reload
                                        # kill: def $ax killed $ax killed $eax
	movzwl	%ax, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end13:
	.size	safe_lshift_func_uint16_t_u_u, .Lfunc_end13-safe_lshift_func_uint16_t_u_u
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function func_36
	.type	func_36,@function
func_36:                                # @func_36
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$3312, %rsp             # imm = 0xCF0
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movabsq	$g_112, %rax
	movq	%rax, %rcx
	addq	$12, %rcx
	addq	$24, %rax
	movabsq	$g_1369, %rdx
	addq	$48, %rdx
	movl	%edi, -28(%rbp)
	movl	%esi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rax, -48(%rbp)
	movq	$0, -56(%rbp)
	leaq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	movl	$-3, -68(%rbp)
	movabsq	$g_111, %rax
	movq	%rax, -80(%rbp)
	movabsq	$g_895, %rax
	movq	%rax, -88(%rbp)
	movabsq	$g_118, %rax
	movq	%rax, -96(%rbp)
	movq	%rcx, -104(%rbp)
	movl	$-1729717769, -132(%rbp) # imm = 0x98E699F7
	movb	$-29, -133(%rbp)
	movl	$0, -140(%rbp)
.LBB14_1:                               # =>This Inner Loop Header: Depth=1
	cmpl	$2, -140(%rbp)
	jge	.LBB14_4
# %bb.2:                                #   in Loop: Header=BB14_1 Depth=1
	movabsq	$g_112, %rax
	addq	$24, %rax
	movslq	-140(%rbp), %rcx
	movq	%rax, -128(%rbp,%rcx,8)
# %bb.3:                                #   in Loop: Header=BB14_1 Depth=1
	movl	-140(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -140(%rbp)
	jmp	.LBB14_1
.LBB14_4:
	movq	$0, g_1399
.LBB14_5:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_8 Depth 2
                                        #     Child Loop BB14_19 Depth 2
                                        #       Child Loop BB14_31 Depth 3
                                        #     Child Loop BB14_46 Depth 2
                                        #       Child Loop BB14_48 Depth 3
	cmpq	$34, g_1399
	jbe	.LBB14_81
# %bb.6:                                #   in Loop: Header=BB14_5 Depth=1
	movabsq	$.L__const.func_36.l_1718, %rax
	movq	$0, -152(%rbp)
	leaq	-352(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movl	$192, %edx
	callq	memcpy
	movabsq	$-2311079523186893093, %rax # imm = 0xDFED656B14C41EDB
	movq	%rax, -360(%rbp)
	movb	$-88, -361(%rbp)
	movb	$1, -362(%rbp)
	movw	$29322, -364(%rbp)      # imm = 0x728A
	movabsq	$g_201, %rax
	movq	%rax, -376(%rbp)
	leaq	-376(%rbp), %rax
	movq	%rax, -384(%rbp)
	leaq	-384(%rbp), %rax
	movq	%rax, -592(%rbp)
	movq	%rax, -584(%rbp)
	movq	%rax, -576(%rbp)
	movq	%rax, -568(%rbp)
	movq	%rax, -560(%rbp)
	movq	%rax, -552(%rbp)
	movq	%rax, -544(%rbp)
	movq	%rax, -536(%rbp)
	movq	%rax, -528(%rbp)
	movq	%rax, -520(%rbp)
	movq	%rax, -512(%rbp)
	movq	%rax, -504(%rbp)
	movq	%rax, -496(%rbp)
	movq	%rax, -488(%rbp)
	movq	%rax, -480(%rbp)
	movq	%rax, -472(%rbp)
	movq	%rax, -464(%rbp)
	movq	%rax, -456(%rbp)
	movq	%rax, -448(%rbp)
	movq	%rax, -440(%rbp)
	movq	%rax, -432(%rbp)
	movq	%rax, -424(%rbp)
	movq	%rax, -416(%rbp)
	movq	%rax, -408(%rbp)
	movq	%rax, -400(%rbp)
	movslq	-32(%rbp), %rax
	movl	$55, %ecx
	cmpq	%rax, %rcx
	jg	.LBB14_12
# %bb.7:                                #   in Loop: Header=BB14_5 Depth=1
	movw	$-26, g_242
.LBB14_8:                               #   Parent Loop BB14_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	g_242, %eax
	cmpl	$10, %eax
	jle	.LBB14_11
# %bb.9:                                #   in Loop: Header=BB14_8 Depth=2
	movq	-152(%rbp), %rax
	movq	%rax, -152(%rbp)
	cmpq	-40(%rbp), %rax
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rax
	cmpq	$-10, %rax
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movq	g_1622, %rax
	movl	%edx, (%rax)
# %bb.10:                               #   in Loop: Header=BB14_8 Depth=2
	movswl	g_242, %edi
	movl	$8, %esi
	callq	safe_add_func_int16_t_s_s
	movw	%ax, g_242
	jmp	.LBB14_8
.LBB14_11:                              #   in Loop: Header=BB14_5 Depth=1
	jmp	.LBB14_43
.LBB14_12:                              #   in Loop: Header=BB14_5 Depth=1
	movw	$-1, -606(%rbp)
	movabsq	$g_669, %rax
	movq	%rax, -616(%rbp)
	movl	$0, g_1362
# %bb.13:                               #   in Loop: Header=BB14_5 Depth=1
	cmpl	$3, g_1362
	ja	.LBB14_15
# %bb.14:
	movq	-48(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB14_86
.LBB14_15:                              #   in Loop: Header=BB14_5 Depth=1
	movl	-240(%rbp), %eax
	movzwl	-606(%rbp), %ecx
	movl	%ecx, %edx
	movq	g_1029, %rsi
	movq	(%rsi), %rsi
	movq	(%rsi), %rsi
	andq	(%rsi), %rdx
	movq	%rdx, (%rsi)
	movzwl	-606(%rbp), %edi
	movq	g_442+72, %rsi
                                        # kill: def $si killed $si killed $rsi
	movl	-28(%rbp), %ecx
                                        # kill: def $cx killed $cx killed $ecx
	movzwl	%si, %r8d
	movl	%edi, -3212(%rbp)       # 4-byte Spill
	movl	%r8d, %edi
	movzwl	%cx, %esi
	movl	%eax, -3216(%rbp)       # 4-byte Spill
	movq	%rdx, -3224(%rbp)       # 8-byte Spill
	callq	safe_mod_func_uint16_t_u_u
	movzwl	%ax, %esi
	movq	g_1244, %rdx
	movl	%esi, (%rdx)
	movl	-3212(%rbp), %edi       # 4-byte Reload
	callq	safe_mod_func_uint32_t_u_u
                                        # kill: def $ax killed $ax killed $eax
	movl	$65535, %edi            # imm = 0xFFFF
	movzwl	%ax, %esi
	callq	safe_sub_func_uint16_t_u_u
	cmpq	$0, -64(%rbp)
	sete	%r9b
	andb	$1, %r9b
	movzbl	%r9b, %esi
                                        # kill: def $si killed $si killed $esi
	movswl	%si, %edi
	movl	$13, %esi
	movw	%ax, -3226(%rbp)        # 2-byte Spill
	callq	safe_rshift_func_int16_t_s_s
	movswq	%ax, %rdx
	cmpq	$178, %rdx
	setl	%r9b
	andb	$1, %r9b
	movzbl	%r9b, %esi
	movslq	%esi, %rdx
	cmpq	$227, %rdx
	setle	%r9b
	andb	$1, %r9b
	movzbl	%r9b, %esi
                                        # kill: def $si killed $si killed $esi
	movl	-28(%rbp), %edi
                                        # kill: def $di killed $di killed $edi
	movswl	%si, %r8d
	movw	%di, -3228(%rbp)        # 2-byte Spill
	movl	%r8d, %edi
	movw	-3228(%rbp), %ax        # 2-byte Reload
	movswl	%ax, %esi
	callq	safe_mul_func_int16_t_s_s
	movl	-32(%rbp), %esi
                                        # kill: def $si killed $si killed $esi
	movl	$65526, %edi            # imm = 0xFFF6
	movzwl	%si, %esi
	movw	%ax, -3230(%rbp)        # 2-byte Spill
	callq	safe_sub_func_uint16_t_u_u
	movzwl	%ax, %esi
                                        # kill: def $rsi killed $esi
	movq	-3224(%rbp), %rdi       # 8-byte Reload
	callq	safe_mod_func_int64_t_s_s
	xorl	%r8d, %r8d
                                        # kill: def $r8b killed $r8b killed $r8d
	testb	$1, %r8b
	jne	.LBB14_16
	jmp	.LBB14_17
.LBB14_16:                              #   in Loop: Header=BB14_5 Depth=1
	cmpl	$0, -28(%rbp)
	movb	$1, %al
	movb	%al, -3231(%rbp)        # 1-byte Spill
	jne	.LBB14_18
.LBB14_17:                              #   in Loop: Header=BB14_5 Depth=1
	cmpl	$0, g_895
	setne	%al
	movb	%al, -3231(%rbp)        # 1-byte Spill
.LBB14_18:                              #   in Loop: Header=BB14_5 Depth=1
	movb	-3231(%rbp), %al        # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
                                        # kill: def $cx killed $cx killed $ecx
	movswl	g_1196+4, %esi
	movswl	%cx, %edi
	callq	safe_lshift_func_int16_t_s_u
                                        # kill: def $al killed $al killed $ax
	movsbl	%al, %edi
	callq	safe_unary_minus_func_int8_t_s
	movsbl	%al, %edx
                                        # kill: def $dx killed $dx killed $edx
	movswl	%dx, %edi
	movl	$2, %esi
	callq	safe_lshift_func_int16_t_s_s
	xorl	%esi, %esi
	movswl	%ax, %edi
	callq	safe_lshift_func_int16_t_s_s
	movswl	%ax, %esi
	movl	-3216(%rbp), %edi       # 4-byte Reload
	cmpl	%esi, %edi
	setg	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %esi
	movq	-48(%rbp), %r9
	orl	(%r9), %esi
	movl	%esi, (%r9)
	movl	$0, g_58
.LBB14_19:                              #   Parent Loop BB14_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB14_31 Depth 3
	cmpl	$3, g_58
	jg	.LBB14_42
# %bb.20:                               #   in Loop: Header=BB14_19 Depth=2
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movl	$-1, -620(%rbp)
	movl	$642697172, -624(%rbp)  # imm = 0x264EC7D4
	movq	.L__const.func_36.l_1773, %rcx
	movq	%rcx, -640(%rbp)
	movq	.L__const.func_36.l_1773+8, %rcx
	movq	%rcx, -632(%rbp)
	movl	g_58, %edx
	addl	$1, %edx
	movslq	%edx, %rcx
	cmpq	$0, g_442(,%rcx,8)
	movb	%al, -3232(%rbp)        # 1-byte Spill
	je	.LBB14_28
# %bb.21:                               #   in Loop: Header=BB14_19 Depth=2
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movl	g_58, %ecx
	addl	$6, %ecx
	movslq	%ecx, %rdx
	cmpq	$0, g_442(,%rdx,8)
	movb	%al, -3233(%rbp)        # 1-byte Spill
	je	.LBB14_23
# %bb.22:                               #   in Loop: Header=BB14_19 Depth=2
	movb	$1, %al
	movb	%al, -3233(%rbp)        # 1-byte Spill
	jmp	.LBB14_23
.LBB14_23:                              #   in Loop: Header=BB14_19 Depth=2
	movb	-3233(%rbp), %al        # 1-byte Reload
	xorl	%ecx, %ecx
                                        # kill: def $cl killed $cl killed $ecx
	andb	$1, %al
	movzbl	%al, %edx
                                        # kill: def $dl killed $dl killed $edx
	movb	%dl, g_1131
	movzbl	%dl, %esi
	cmpl	$0, %esi
	movb	%cl, -3234(%rbp)        # 1-byte Spill
	je	.LBB14_25
# %bb.24:                               #   in Loop: Header=BB14_19 Depth=2
	movzwl	-606(%rbp), %eax
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -3234(%rbp)        # 1-byte Spill
.LBB14_25:                              #   in Loop: Header=BB14_19 Depth=2
	movb	-3234(%rbp), %al        # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
                                        # kill: def $cx killed $cx killed $ecx
	cmpq	$0, -152(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
                                        # kill: def $dx killed $dx killed $edx
	movswl	%cx, %edi
	movswl	%dx, %esi
	callq	safe_mul_func_int16_t_s_s
	movswl	%ax, %edi
	movzwl	-606(%rbp), %esi
	callq	safe_add_func_uint32_t_u_u
	movq	g_1622, %r8
	cmpl	(%r8), %eax
	setne	%r9b
	andb	$1, %r9b
	movzbl	%r9b, %eax
	xorl	-620(%rbp), %eax
	movl	%eax, -620(%rbp)
	andl	-28(%rbp), %eax
                                        # kill: def $ax killed $ax killed $eax
	movzwl	%ax, %edi
	movl	$10758, %esi            # imm = 0x2A06
	callq	safe_div_func_uint16_t_u_u
	movb	$1, %r9b
	andb	$1, %r9b
	movzbl	%r9b, %esi
	movslq	%esi, %r8
	movl	$4294967295, %r10d      # imm = 0xFFFFFFFF
	orq	%r10, %r8
	cmpq	$1, %r8
	sete	%r9b
	andb	$1, %r9b
	movzbl	%r9b, %edi
	movl	-28(%rbp), %esi
	movw	%ax, -3236(%rbp)        # 2-byte Spill
	callq	safe_mod_func_uint32_t_u_u
                                        # kill: def $ax killed $ax killed $eax
	movl	-28(%rbp), %esi
                                        # kill: def $si killed $si killed $esi
	movswl	%ax, %edi
	movswl	%si, %esi
	callq	safe_sub_func_int16_t_s_s
	movl	-28(%rbp), %esi
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	movw	%ax, -3238(%rbp)        # 2-byte Spill
	callq	safe_rshift_func_int8_t_s_s
	movsbl	%al, %esi
                                        # kill: def $si killed $si killed $esi
	movswl	%si, %edi
	movl	$4169, %esi             # imm = 0x1049
	callq	safe_sub_func_int16_t_s_s
	movswl	%ax, %esi
	movq	g_731, %r8
	movswl	(%r8), %edi
	orl	%esi, %edi
                                        # kill: def $di killed $di killed $edi
	movw	%di, (%r8)
	movswl	%di, %esi
	cmpl	$0, %esi
	movb	$1, %r9b
	movb	%r9b, -3239(%rbp)       # 1-byte Spill
	jne	.LBB14_27
# %bb.26:                               #   in Loop: Header=BB14_19 Depth=2
	movb	$1, %al
	movb	%al, -3239(%rbp)        # 1-byte Spill
	jmp	.LBB14_27
.LBB14_27:                              #   in Loop: Header=BB14_19 Depth=2
	movb	-3239(%rbp), %al        # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
                                        # kill: def $cl killed $cl killed $ecx
	movw	-606(%rbp), %dx
                                        # kill: def $dl killed $dl killed $dx
	movsbl	%cl, %edi
	movsbl	%dl, %esi
	callq	safe_div_func_int8_t_s_s
	movsbl	%al, %esi
                                        # kill: def $si killed $si killed $esi
	movl	-28(%rbp), %edi
                                        # kill: def $di killed $di killed $edi
	movzwl	%si, %r8d
	movw	%di, -3242(%rbp)        # 2-byte Spill
	movl	%r8d, %edi
	movw	-3242(%rbp), %si        # 2-byte Reload
	movzwl	%si, %r8d
	movl	%r8d, %esi
	callq	safe_add_func_uint16_t_u_u
	movzwl	%ax, %esi
	movl	%esi, %r9d
	orq	$-10, %r9
	movslq	-624(%rbp), %r10
	andq	%r9, %r10
                                        # kill: def $r10d killed $r10d killed $r10
	movl	%r10d, -624(%rbp)
                                        # kill: def $r10b killed $r10b killed $r10d
	movl	-28(%rbp), %esi
                                        # kill: def $sil killed $sil killed $esi
	movsbl	%r10b, %edi
	movsbl	%sil, %esi
	callq	safe_mul_func_int8_t_s_s
	movsbq	%al, %r9
	movq	g_1700, %r11
	andq	(%r11), %r9
	cmpq	$0, %r9
	setne	%al
	movb	%al, -3232(%rbp)        # 1-byte Spill
.LBB14_28:                              #   in Loop: Header=BB14_19 Depth=2
	movb	-3232(%rbp), %al        # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
                                        # kill: def $cx killed $cx killed $ecx
	movzwl	-606(%rbp), %esi
	movswl	%cx, %edi
	callq	safe_lshift_func_int16_t_s_u
	movzwl	%ax, %edi
	movl	$102, %esi
	callq	safe_sub_func_uint16_t_u_u
                                        # kill: def $al killed $al killed $ax
	movl	-28(%rbp), %edx
                                        # kill: def $dl killed $dl killed $edx
	movzbl	%al, %edi
	movzbl	%dl, %esi
	callq	safe_div_func_uint8_t_u_u
	movzbl	%al, %esi
	movl	%esi, -632(%rbp)
	cmpl	$0, -28(%rbp)
	je	.LBB14_30
# %bb.29:                               #   in Loop: Header=BB14_19 Depth=2
	jmp	.LBB14_41
.LBB14_30:                              #   in Loop: Header=BB14_19 Depth=2
	movb	$3, g_1299
.LBB14_31:                              #   Parent Loop BB14_5 Depth=1
                                        #     Parent Loop BB14_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movsbl	g_1299, %eax
	cmpl	$0, %eax
	jl	.LBB14_40
# %bb.32:                               #   in Loop: Header=BB14_31 Depth=3
	movabsq	$.L__const.func_36.l_1799, %rax
	leaq	-2576(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movl	$1920, %edx             # imm = 0x780
	callq	memcpy
	movl	$5, -2580(%rbp)
	movl	g_58, %r8d
	addl	$2, %r8d
	movslq	%r8d, %rax
	shlq	$5, %rax
	movabsq	$g_161, %rcx
	addq	%rax, %rcx
	movsbq	g_1299, %rax
	shlq	$3, %rax
	addq	%rax, %rcx
	movslq	g_58, %rax
	movsbq	(%rcx,%rax), %rax
	cmpq	$-7, %rax
	setne	%r9b
	andb	$1, %r9b
	movzbl	%r9b, %r8d
	cmpq	$0, -616(%rbp)
	sete	%r9b
	andb	$1, %r9b
	movzbl	%r9b, %r10d
	cmpl	%r10d, %r8d
	setg	%r9b
	andb	$1, %r9b
	movzbl	%r9b, %edi
	movq	g_1614, %rax
	movq	(%rax), %rax
	movq	g_1614, %rcx
	cmpq	(%rcx), %rax
	setne	%r9b
	andb	$1, %r9b
	movzbl	%r9b, %esi
	callq	safe_add_func_uint32_t_u_u
	xorl	-620(%rbp), %eax
	movl	%eax, -620(%rbp)
	movsbl	g_1299, %eax
	addl	$4, %eax
	movslq	%eax, %rcx
	shlq	$5, %rcx
	movabsq	$g_161, %rdx
	addq	%rcx, %rdx
	movslq	g_58, %rcx
	shlq	$3, %rcx
	addq	%rcx, %rdx
	movsbl	g_1299, %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	cmpb	$0, (%rdx,%rcx)
	je	.LBB14_34
# %bb.33:                               #   in Loop: Header=BB14_31 Depth=3
	jmp	.LBB14_39
.LBB14_34:                              #   in Loop: Header=BB14_31 Depth=3
	movsbl	g_1299, %eax
	addl	$4, %eax
	movslq	%eax, %rcx
	shlq	$5, %rcx
	movabsq	$g_161, %rdx
	addq	%rcx, %rdx
	movslq	g_58, %rcx
	shlq	$3, %rcx
	addq	%rcx, %rdx
	movsbl	g_1299, %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movsbl	(%rdx,%rcx), %edi
	movl	-28(%rbp), %eax
                                        # kill: def $al killed $al killed $eax
	movsbl	%al, %esi
	callq	func_97
	movq	g_1516, %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	%rax, (%rcx)
	movzbl	g_1131, %esi
	movq	g_731, %rax
	movw	$-29914, (%rax)         # imm = 0x8B26
	movl	-32(%rbp), %edi
	movl	-28(%rbp), %r8d
                                        # kill: def $r8b killed $r8b killed $r8d
	movsbl	%r8b, %r9d
	movl	%edi, -3248(%rbp)       # 4-byte Spill
	movl	%r9d, %edi
	movl	$4, %r9d
	movl	%esi, -3252(%rbp)       # 4-byte Spill
	movl	%r9d, %esi
	callq	safe_lshift_func_int8_t_s_s
	movsbl	%al, %esi
	movq	-48(%rbp), %rcx
	movl	%esi, (%rcx)
	movl	-32(%rbp), %edi
                                        # kill: def $di killed $di killed $edi
	movzwl	-606(%rbp), %r9d
	movl	%r9d, %ecx
	andq	$694112350, %rcx        # imm = 0x295F505E
	movq	g_731, %rdx
	movswq	(%rdx), %r10
	xorq	%rcx, %r10
                                        # kill: def $r10w killed $r10w killed $r10
	movw	%r10w, (%rdx)
	movswl	%di, %edi
	movswl	%r10w, %r9d
	movl	%esi, -3256(%rbp)       # 4-byte Spill
	movl	%r9d, %esi
	callq	safe_div_func_int16_t_s_s
	movswq	%ax, %rcx
	movq	%rcx, g_307
	movl	g_58, %esi
	addl	$1, %esi
	movslq	%esi, %rcx
	movq	g_442(,%rcx,8), %rcx
                                        # kill: def $ecx killed $ecx killed $rcx
	movl	-3256(%rbp), %edi       # 4-byte Reload
	movl	%ecx, %esi
	callq	safe_sub_func_int32_t_s_s
                                        # kill: def $ax killed $ax killed $eax
	movl	g_1362, %esi
	movzwl	%ax, %edi
	callq	safe_lshift_func_uint16_t_u_u
	movzwl	%ax, %ecx
	xorl	-28(%rbp), %ecx
	cmpl	$0, %ecx
	movb	$1, %r8b
	movb	%r8b, -3257(%rbp)       # 1-byte Spill
	jne	.LBB14_36
# %bb.35:                               #   in Loop: Header=BB14_31 Depth=3
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpl	$0, (%rax)
	setne	%cl
	movb	%cl, -3257(%rbp)        # 1-byte Spill
.LBB14_36:                              #   in Loop: Header=BB14_31 Depth=3
	movb	-3257(%rbp), %al        # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	-3248(%rbp), %edx       # 4-byte Reload
	cmpl	%ecx, %edx
	setl	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -620(%rbp)
                                        # kill: def $cl killed $cl killed $ecx
	movzbl	%cl, %edi
	movl	$26, %esi
	callq	safe_mod_func_uint8_t_u_u
	movzbl	%al, %edx
	movl	-3252(%rbp), %esi       # 4-byte Reload
	cmpl	%edx, %esi
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
                                        # kill: def $dl killed $dl killed $edx
	movsbq	g_1299, %r8
	shlq	$5, %r8
	movabsq	$g_161, %r9
	addq	%r8, %r9
	movsbq	g_1299, %r8
	shlq	$3, %r8
	addq	%r8, %r9
	movsbl	g_1299, %edi
	addl	$4, %edi
	movslq	%edi, %r8
	movb	%dl, (%r9,%r8)
	movsbl	%dl, %edi
	movl	$46, %esi
	callq	safe_div_func_int8_t_s_s
	xorl	%esi, %esi
                                        # kill: def $sil killed $sil killed $esi
	movzwl	-606(%rbp), %edi
	movl	%edi, %r8d
	movl	$2877159626, %r9d       # imm = 0xAB7DF8CA
	cmpq	%r8, %r9
	movb	%sil, -3258(%rbp)       # 1-byte Spill
	jl	.LBB14_38
# %bb.37:                               #   in Loop: Header=BB14_31 Depth=3
	movb	$1, %al
	movb	%al, -3258(%rbp)        # 1-byte Spill
	jmp	.LBB14_38
.LBB14_38:                              #   in Loop: Header=BB14_31 Depth=3
	movb	-3258(%rbp), %al        # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %edi
	movl	-2580(%rbp), %esi
	callq	safe_div_func_uint32_t_u_u
	movl	%eax, %edi
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	callq	safe_mod_func_uint32_t_u_u
	movl	$960487137, %edi        # imm = 0x393FDEE1
	movl	%eax, %esi
	callq	safe_add_func_int32_t_s_s
	movl	$2276188768, %edi       # imm = 0x87ABE260
	movl	%eax, %esi
	callq	safe_div_func_int32_t_s_s
                                        # kill: def $ax killed $ax killed $eax
	movl	g_58, %ecx
	addl	$6, %ecx
	movslq	%ecx, %rdx
	movq	g_442(,%rdx,8), %rdx
                                        # kill: def $dx killed $dx killed $rdx
	movzwl	%ax, %edi
	movzwl	%dx, %esi
	callq	safe_sub_func_uint16_t_u_u
	movzwl	%ax, %edi
	movl	-32(%rbp), %ecx
                                        # kill: def $cl killed $cl killed $ecx
	movsbl	%cl, %esi
	callq	func_97
	movq	-40(%rbp), %r8
	movq	(%r8), %r8
	movq	(%r8), %r8
	movq	(%r8), %r8
	movq	%rax, (%r8)
.LBB14_39:                              #   in Loop: Header=BB14_31 Depth=3
	movsbl	g_1299, %eax
	subl	$1, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, g_1299
	jmp	.LBB14_31
.LBB14_40:                              #   in Loop: Header=BB14_19 Depth=2
	jmp	.LBB14_41
.LBB14_41:                              #   in Loop: Header=BB14_19 Depth=2
	movl	g_58, %eax
	addl	$1, %eax
	movl	%eax, g_58
	jmp	.LBB14_19
.LBB14_42:                              #   in Loop: Header=BB14_5 Depth=1
	jmp	.LBB14_43
.LBB14_43:                              #   in Loop: Header=BB14_5 Depth=1
	movq	-360(%rbp), %rax
	movl	-28(%rbp), %ecx
	movl	%ecx, %edx
	xorq	%rdx, %rax
	cmpq	$0, %rax
	movb	$1, %sil
	movb	%sil, -3259(%rbp)       # 1-byte Spill
	jne	.LBB14_45
# %bb.44:                               #   in Loop: Header=BB14_5 Depth=1
	movb	$1, %al
	movb	%al, -3259(%rbp)        # 1-byte Spill
	jmp	.LBB14_45
.LBB14_45:                              #   in Loop: Header=BB14_5 Depth=1
	movb	-3259(%rbp), %al        # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movb	-361(%rbp), %al
	movb	g_1131, %dl
	movb	%dl, g_1131
	movzbl	%al, %edi
	movzbl	%dl, %esi
	movl	%ecx, -3264(%rbp)       # 4-byte Spill
	callq	safe_add_func_uint8_t_u_u
	movzbl	%al, %ecx
	movl	%ecx, %r8d
	movzbl	-362(%rbp), %ecx
	cmpl	-32(%rbp), %ecx
	setle	%al
	andb	$1, %al
	movzbl	%al, %ecx
                                        # kill: def $cx killed $cx killed $ecx
	movswl	%cx, %edi
	movl	$6, %esi
	movq	%r8, -3272(%rbp)        # 8-byte Spill
	callq	safe_mul_func_int16_t_s_s
                                        # kill: def $al killed $al killed $ax
	movl	-28(%rbp), %esi
	movsbl	%al, %edi
	callq	safe_rshift_func_int8_t_s_s
	movsbq	%al, %r8
	movq	g_1027, %r9
	movq	(%r9), %r9
	movq	(%r9), %r9
	movq	(%r9), %r9
	movq	(%r9), %r9
	xorq	(%r9), %r8
	movq	-3272(%rbp), %r9        # 8-byte Reload
	cmpq	%r8, %r9
	setne	%al
	andb	$1, %al
	movzbl	%al, %esi
	movl	-3264(%rbp), %edi       # 4-byte Reload
	xorl	%esi, %edi
	cmpl	$0, %edi
	setne	%al
	andb	$1, %al
	movzbl	%al, %esi
                                        # kill: def $sil killed $sil killed $esi
	movl	-68(%rbp), %edi
                                        # kill: def $dil killed $dil killed $edi
	movsbl	%sil, %r10d
	movb	%dil, -3273(%rbp)       # 1-byte Spill
	movl	%r10d, %edi
	movb	-3273(%rbp), %al        # 1-byte Reload
	movsbl	%al, %esi
	callq	safe_mul_func_int8_t_s_s
	movsbl	%al, %esi
	movq	g_1622, %r8
	orl	(%r8), %esi
	movl	%esi, (%r8)
	movb	$-10, g_265
.LBB14_46:                              #   Parent Loop BB14_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB14_48 Depth 3
	movzbl	g_265, %eax
	cmpl	$6, %eax
	jl	.LBB14_79
# %bb.47:                               #   in Loop: Header=BB14_46 Depth=2
	movabsq	$g_442, %rax
	addq	$48, %rax
	movq	$0, -2600(%rbp)
	movl	$105939587, -2604(%rbp) # imm = 0x6508283
	movl	$236344616, -2608(%rbp) # imm = 0xE165528
	leaq	-56(%rbp), %rcx
	movq	%rcx, -2616(%rbp)
	movq	%rax, -2624(%rbp)
	movb	$0, -361(%rbp)
.LBB14_48:                              #   Parent Loop BB14_5 Depth=1
                                        #     Parent Loop BB14_46 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movsbl	-361(%rbp), %eax
	cmpl	$2, %eax
	jg	.LBB14_77
# %bb.49:                               #   in Loop: Header=BB14_48 Depth=3
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movl	$2079380538, -2628(%rbp) # imm = 0x7BF0D43A
	movabsq	$g_1196, %rcx
	movq	%rcx, -2640(%rbp)
	movq	$0, -3152(%rbp)
	leaq	-2640(%rbp), %rcx
	movq	%rcx, -3144(%rbp)
	movq	$0, -3136(%rbp)
	movq	%rcx, -3128(%rbp)
	leaq	-2600(%rbp), %rdx
	movq	%rdx, -3120(%rbp)
	movq	%rcx, -3112(%rbp)
	movq	$0, -3104(%rbp)
	movq	%rcx, -3096(%rbp)
	movq	%rdx, -3088(%rbp)
	movq	%rcx, -3080(%rbp)
	movq	$0, -3072(%rbp)
	movq	%rcx, -3064(%rbp)
	movq	$0, -3056(%rbp)
	movq	%rdx, -3048(%rbp)
	movq	%rdx, -3040(%rbp)
	movq	%rcx, -3032(%rbp)
	movq	%rdx, -3024(%rbp)
	movq	%rdx, -3016(%rbp)
	movq	$0, -3008(%rbp)
	movq	%rcx, -3000(%rbp)
	movq	$0, -2992(%rbp)
	movq	%rcx, -2984(%rbp)
	movq	%rdx, -2976(%rbp)
	movq	%rcx, -2968(%rbp)
	movq	$0, -2960(%rbp)
	movq	%rcx, -2952(%rbp)
	movq	%rdx, -2944(%rbp)
	movq	%rcx, -2936(%rbp)
	movq	$0, -2928(%rbp)
	movq	%rcx, -2920(%rbp)
	movq	$0, -2912(%rbp)
	movq	%rdx, -2904(%rbp)
	movq	%rdx, -2896(%rbp)
	movq	%rcx, -2888(%rbp)
	movq	%rdx, -2880(%rbp)
	movq	%rdx, -2872(%rbp)
	movq	$0, -2864(%rbp)
	movq	%rcx, -2856(%rbp)
	movq	$0, -2848(%rbp)
	movq	%rcx, -2840(%rbp)
	movq	%rdx, -2832(%rbp)
	movq	%rcx, -2824(%rbp)
	movq	$0, -2816(%rbp)
	movq	%rcx, -2808(%rbp)
	movq	%rdx, -2800(%rbp)
	movq	%rcx, -2792(%rbp)
	movq	$0, -2784(%rbp)
	movq	%rcx, -2776(%rbp)
	movq	$0, -2768(%rbp)
	movq	%rdx, -2760(%rbp)
	movq	%rdx, -2752(%rbp)
	movq	%rcx, -2744(%rbp)
	movq	%rdx, -2736(%rbp)
	movq	%rdx, -2728(%rbp)
	movq	$0, -2720(%rbp)
	movq	%rcx, -2712(%rbp)
	movq	$0, -2704(%rbp)
	movq	%rcx, -2696(%rbp)
	movq	%rdx, -2688(%rbp)
	movq	%rcx, -2680(%rbp)
	movq	$0, -2672(%rbp)
	movq	%rcx, -2664(%rbp)
	movq	%rdx, -2656(%rbp)
	movl	$191971218, -3156(%rbp) # imm = 0xB713F92
	movabsq	$g_129, %rcx
	movq	%rcx, -3168(%rbp)
	movq	g_731, %rcx
	movswl	(%rcx), %esi
	movl	%esi, -2628(%rbp)
	cmpl	$0, %esi
	movb	%al, -3274(%rbp)        # 1-byte Spill
	je	.LBB14_55
# %bb.50:                               #   in Loop: Header=BB14_48 Depth=3
	movl	-28(%rbp), %eax
	movl	-28(%rbp), %edi
	movsbl	g_161+66, %ecx
	cmpl	$0, %ecx
	movb	$1, %dl
	movl	%eax, -3280(%rbp)       # 4-byte Spill
	movl	%edi, -3284(%rbp)       # 4-byte Spill
	movb	%dl, -3285(%rbp)        # 1-byte Spill
	jne	.LBB14_52
# %bb.51:                               #   in Loop: Header=BB14_48 Depth=3
	xorl	%esi, %esi
	movq	-2640(%rbp), %rax
	movq	%rax, -80(%rbp)
	movl	-28(%rbp), %ecx
	movl	-2628(%rbp), %edx
	cmpl	-272(%rbp), %edx
	setne	%dil
	andb	$1, %dil
	movzbl	%dil, %edx
	movl	%edx, -2604(%rbp)
	cmpl	%edx, %ecx
	seta	%dil
	andb	$1, %dil
	movzbl	%dil, %ecx
                                        # kill: def $cx killed $cx killed $ecx
	movswl	%cx, %edi
	callq	safe_mul_func_int16_t_s_s
	xorl	%edx, %edx
                                        # kill: def $dl killed $dl killed $edx
	movb	%dl, -3285(%rbp)        # 1-byte Spill
.LBB14_52:                              #   in Loop: Header=BB14_48 Depth=3
	movb	-3285(%rbp), %al        # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movslq	%ecx, %rdi
	movslq	-32(%rbp), %rsi
	callq	safe_div_func_uint64_t_u_u
                                        # kill: def $al killed $al killed $rax
	movl	-28(%rbp), %ecx
                                        # kill: def $cl killed $cl killed $ecx
	movsbl	%al, %edi
	movsbl	%cl, %esi
	callq	safe_add_func_int8_t_s_s
	movsbq	%al, %rdx
	cmpq	$-1, %rdx
	setbe	%al
	andb	$1, %al
	movzbl	%al, %esi
	movslq	%esi, %rsi
	movabsq	$2656456663283063401, %rdi # imm = 0x24DDA142C034DA69
	callq	safe_add_func_uint64_t_u_u
                                        # kill: def $eax killed $eax killed $rax
	movq	g_1244, %rdx
	movl	%eax, (%rdx)
	movl	-3284(%rbp), %edi       # 4-byte Reload
	movl	%eax, %esi
	callq	safe_mod_func_uint32_t_u_u
	movslq	-32(%rbp), %rdx
	movl	$4, %r8d
	cmpq	%rdx, %r8
	setae	%cl
	andb	$1, %cl
	movzbl	%cl, %esi
	cmpl	$236344616, %esi        # imm = 0xE165528
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %esi
	movslq	%esi, %rdi
	movl	$236344616, %esi        # imm = 0xE165528
	movl	%eax, -3292(%rbp)       # 4-byte Spill
	callq	safe_div_func_int64_t_s_s
	cmpq	$0, %rax
	movb	$1, %cl
	movb	%cl, -3293(%rbp)        # 1-byte Spill
	jne	.LBB14_54
# %bb.53:                               #   in Loop: Header=BB14_48 Depth=3
	cmpl	$0, -2628(%rbp)
	setne	%al
	movb	%al, -3293(%rbp)        # 1-byte Spill
.LBB14_54:                              #   in Loop: Header=BB14_48 Depth=3
	movb	-3293(%rbp), %al        # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -3156(%rbp)
	movl	-3280(%rbp), %edx       # 4-byte Reload
	cmpl	%ecx, %edx
	setbe	%al
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	-28(%rbp), %ecx
	setb	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movzwl	g_45, %esi
	xorl	%ecx, %esi
                                        # kill: def $si killed $si killed $esi
	movw	%si, g_45
	movzwl	%si, %ecx
	cmpl	$0, %ecx
	setne	%al
	movb	%al, -3274(%rbp)        # 1-byte Spill
.LBB14_55:                              #   in Loop: Header=BB14_48 Depth=3
	movb	-3274(%rbp), %al        # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
                                        # kill: def $cl killed $cl killed $ecx
	movzbl	%cl, %edi
	movl	$1, %esi
	callq	safe_mul_func_uint8_t_u_u
	cmpb	$0, %al
	je	.LBB14_61
# %bb.56:
	movabsq	$g_112, %rax
	addq	$24, %rax
	movq	%rax, -3192(%rbp)
	movw	$0, g_242
.LBB14_57:                              # =>This Inner Loop Header: Depth=1
	movzwl	g_242, %eax
	cmpl	$2, %eax
	jg	.LBB14_60
# %bb.58:                               #   in Loop: Header=BB14_57 Depth=1
	movq	-3192(%rbp), %rax
	movq	%rax, -3168(%rbp)
# %bb.59:                               #   in Loop: Header=BB14_57 Depth=1
	movzwl	g_242, %eax
	addl	$1, %eax
                                        # kill: def $ax killed $ax killed $eax
	movw	%ax, g_242
	jmp	.LBB14_57
.LBB14_60:
	movq	-3192(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB14_86
.LBB14_61:                              #   in Loop: Header=BB14_48 Depth=3
	leaq	-362(%rbp), %rax
	movq	%rax, -3200(%rbp)
	movl	-32(%rbp), %ecx
	movabsq	$g_1641, %rax
	cmpq	%rax, -2616(%rbp)
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	xorl	%esi, %ecx
	movswl	g_1196+2, %esi
	movb	g_1131, %dl
	movb	%dl, %dil
	addb	$-1, %dil
	movb	%dil, g_1131
	movzbl	%dl, %r8d
	movq	g_1700, %rax
	movq	(%rax), %rax
	movl	-28(%rbp), %r9d
	movq	-3200(%rbp), %r10
	movb	$33, (%r10)
	movl	-32(%rbp), %r11d
                                        # kill: def $r11b killed $r11b killed $r11d
	movl	-28(%rbp), %ebx
                                        # kill: def $bl killed $bl killed $ebx
	movsbl	%r11b, %edi
	movsbl	%bl, %r14d
	movl	%esi, -3300(%rbp)       # 4-byte Spill
	movl	%r14d, %esi
	movl	%ecx, -3304(%rbp)       # 4-byte Spill
	movl	%r8d, -3308(%rbp)       # 4-byte Spill
	movq	%rax, -3320(%rbp)       # 8-byte Spill
	movl	%r9d, -3324(%rbp)       # 4-byte Spill
	callq	safe_sub_func_int8_t_s_s
	movsbl	%al, %ecx
	cmpl	-32(%rbp), %ecx
	setg	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	-3324(%rbp), %esi       # 4-byte Reload
	cmpl	%ecx, %esi
	movb	$1, %al
	movb	%al, -3325(%rbp)        # 1-byte Spill
	je	.LBB14_63
# %bb.62:                               #   in Loop: Header=BB14_48 Depth=3
	movq	g_1700, %rax
	cmpq	$0, (%rax)
	setne	%cl
	movb	%cl, -3325(%rbp)        # 1-byte Spill
.LBB14_63:                              #   in Loop: Header=BB14_48 Depth=3
	movb	-3325(%rbp), %al        # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	orl	-32(%rbp), %ecx
                                        # kill: def $cl killed $cl killed $ecx
	movzbl	%cl, %edi
	movl	$7, %esi
	callq	safe_lshift_func_uint8_t_u_u
	xorl	%edx, %edx
                                        # kill: def $dl killed $dl killed $edx
	movzbl	%al, %esi
	cmpl	$0, %esi
	movb	%dl, -3326(%rbp)        # 1-byte Spill
	je	.LBB14_65
# %bb.64:                               #   in Loop: Header=BB14_48 Depth=3
	movb	$1, %al
	movb	%al, -3326(%rbp)        # 1-byte Spill
	jmp	.LBB14_65
.LBB14_65:                              #   in Loop: Header=BB14_48 Depth=3
	movb	-3326(%rbp), %al        # 1-byte Reload
	xorl	%ecx, %ecx
                                        # kill: def $cl killed $cl killed $ecx
	testb	$1, %cl
	movb	%cl, -3327(%rbp)        # 1-byte Spill
	jne	.LBB14_66
	jmp	.LBB14_67
.LBB14_66:                              #   in Loop: Header=BB14_48 Depth=3
	cmpl	$0, -32(%rbp)
	setne	%al
	movb	%al, -3327(%rbp)        # 1-byte Spill
.LBB14_67:                              #   in Loop: Header=BB14_48 Depth=3
	movb	-3327(%rbp), %al        # 1-byte Reload
	movq	g_731, %rcx
	movswl	(%rcx), %edx
	movl	-3300(%rbp), %esi       # 4-byte Reload
	cmpl	%edx, %esi
	setg	%dil
	andb	$1, %dil
	movzbl	%dil, %edx
	movl	-3304(%rbp), %r8d       # 4-byte Reload
	cmpl	%edx, %r8d
	setg	%dil
	movb	%dil, %r9b
	andb	$1, %r9b
	movzbl	%r9b, %edx
	movq	-3168(%rbp), %rcx
	movl	%edx, (%rcx)
	testb	$1, %dil
	jne	.LBB14_68
	jmp	.LBB14_71
.LBB14_68:                              #   in Loop: Header=BB14_48 Depth=3
	movq	$0, -504(%rbp)
	movq	-48(%rbp), %rax
	movl	$1, (%rax)
	cmpw	$0, -364(%rbp)
	je	.LBB14_70
# %bb.69:
	jmp	.LBB14_82
.LBB14_70:                              #   in Loop: Header=BB14_48 Depth=3
	jmp	.LBB14_74
.LBB14_71:                              #   in Loop: Header=BB14_48 Depth=3
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	leaq	-3156(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	g_1516, %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpl	$0, (%rax)
	je	.LBB14_73
# %bb.72:                               #   in Loop: Header=BB14_46 Depth=2
	jmp	.LBB14_77
.LBB14_73:                              #   in Loop: Header=BB14_48 Depth=3
	jmp	.LBB14_74
.LBB14_74:                              #   in Loop: Header=BB14_48 Depth=3
	jmp	.LBB14_75
.LBB14_75:                              #   in Loop: Header=BB14_48 Depth=3
	jmp	.LBB14_76
.LBB14_76:                              #   in Loop: Header=BB14_48 Depth=3
	movsbl	-361(%rbp), %eax
	addl	$1, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -361(%rbp)
	jmp	.LBB14_48
.LBB14_77:                              #   in Loop: Header=BB14_46 Depth=2
	jmp	.LBB14_78
.LBB14_78:                              #   in Loop: Header=BB14_46 Depth=2
	movzbl	g_265, %edi
	movl	$7, %esi
	callq	safe_add_func_uint8_t_u_u
	movb	%al, g_265
	jmp	.LBB14_46
.LBB14_79:                              #   in Loop: Header=BB14_5 Depth=1
	jmp	.LBB14_80
.LBB14_80:                              #   in Loop: Header=BB14_5 Depth=1
	movq	g_1399, %rdi
	movl	$8, %esi
	callq	safe_add_func_uint64_t_u_u
	movq	%rax, g_1399
	jmp	.LBB14_5
.LBB14_81:
	jmp	.LBB14_82
.LBB14_82:
	movl	$0, g_115
# %bb.83:
	cmpl	$41, g_115
	jb	.LBB14_85
# %bb.84:
	movabsq	$g_112, %rax
	addq	$24, %rax
	movq	%rax, -3208(%rbp)
	movq	-3208(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB14_86
.LBB14_85:
	movb	-133(%rbp), %al
	addb	$1, %al
	movb	%al, -133(%rbp)
	movq	g_1864+48, %rcx
	movq	%rcx, -24(%rbp)
.LBB14_86:
	movq	-24(%rbp), %rax
	addq	$3312, %rsp             # imm = 0xCF0
	popq	%rbx
	popq	%r14
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end14:
	.size	func_36, .Lfunc_end14-func_36
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function safe_mod_func_uint8_t_u_u
	.type	safe_mod_func_uint8_t_u_u,@function
safe_mod_func_uint8_t_u_u:              # @safe_mod_func_uint8_t_u_u
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
                                        # kill: def $sil killed $sil killed $esi
                                        # kill: def $dil killed $dil killed $edi
	movb	%dil, -1(%rbp)
	movb	%sil, -2(%rbp)
	movzbl	-2(%rbp), %eax
	cmpl	$0, %eax
	jne	.LBB15_2
# %bb.1:
	movzbl	-1(%rbp), %eax
	movl	%eax, -8(%rbp)          # 4-byte Spill
	jmp	.LBB15_3
.LBB15_2:
	movzbl	-1(%rbp), %eax
	movzbl	-2(%rbp), %ecx
	cltd
	idivl	%ecx
	movl	%edx, -8(%rbp)          # 4-byte Spill
.LBB15_3:
	movl	-8(%rbp), %eax          # 4-byte Reload
                                        # kill: def $al killed $al killed $eax
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end15:
	.size	safe_mod_func_uint8_t_u_u, .Lfunc_end15-safe_mod_func_uint8_t_u_u
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function safe_lshift_func_uint8_t_u_s
	.type	safe_lshift_func_uint8_t_u_s,@function
safe_lshift_func_uint8_t_u_s:           # @safe_lshift_func_uint8_t_u_s
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
                                        # kill: def $dil killed $dil killed $edi
	movb	%dil, -1(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jl	.LBB16_3
# %bb.1:
	cmpl	$32, -8(%rbp)
	jge	.LBB16_3
# %bb.2:
	movzbl	-1(%rbp), %eax
	movl	-8(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	movl	$255, %edx
	sarl	%cl, %edx
	cmpl	%edx, %eax
	jle	.LBB16_4
.LBB16_3:
	movzbl	-1(%rbp), %eax
	movl	%eax, -12(%rbp)         # 4-byte Spill
	jmp	.LBB16_5
.LBB16_4:
	movzbl	-1(%rbp), %eax
	movl	-8(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	shll	%cl, %eax
	movl	%eax, -12(%rbp)         # 4-byte Spill
.LBB16_5:
	movl	-12(%rbp), %eax         # 4-byte Reload
                                        # kill: def $al killed $al killed $eax
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end16:
	.size	safe_lshift_func_uint8_t_u_s, .Lfunc_end16-safe_lshift_func_uint8_t_u_s
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function safe_sub_func_int64_t_s_s
	.type	safe_sub_func_int64_t_s_s,@function
safe_sub_func_int64_t_s_s:              # @safe_sub_func_int64_t_s_s
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	xorq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	-8(%rbp), %rdx
	xorq	-16(%rbp), %rdx
	movabsq	$-9223372036854775808, %rsi # imm = 0x8000000000000000
	andq	%rsi, %rdx
	xorq	%rdx, %rcx
	subq	-16(%rbp), %rcx
	xorq	-16(%rbp), %rcx
	andq	%rcx, %rax
	cmpq	$0, %rax
	jge	.LBB17_2
# %bb.1:
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB17_3
.LBB17_2:
	movq	-8(%rbp), %rax
	subq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB17_3:
	movq	-24(%rbp), %rax         # 8-byte Reload
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end17:
	.size	safe_sub_func_int64_t_s_s, .Lfunc_end17-safe_sub_func_int64_t_s_s
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function safe_mul_func_int16_t_s_s
	.type	safe_mul_func_int16_t_s_s,@function
safe_mul_func_int16_t_s_s:              # @safe_mul_func_int16_t_s_s
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
                                        # kill: def $si killed $si killed $esi
                                        # kill: def $di killed $di killed $edi
	movw	%di, -2(%rbp)
	movw	%si, -4(%rbp)
	movswl	-2(%rbp), %eax
	movswl	-4(%rbp), %ecx
	imull	%ecx, %eax
                                        # kill: def $ax killed $ax killed $eax
	cwtl
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end18:
	.size	safe_mul_func_int16_t_s_s, .Lfunc_end18-safe_mul_func_int16_t_s_s
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function safe_mod_func_int16_t_s_s
	.type	safe_mod_func_int16_t_s_s,@function
safe_mod_func_int16_t_s_s:              # @safe_mod_func_int16_t_s_s
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
                                        # kill: def $si killed $si killed $esi
                                        # kill: def $di killed $di killed $edi
	movw	%di, -2(%rbp)
	movw	%si, -4(%rbp)
	movswl	-4(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB19_3
# %bb.1:
	movswl	-2(%rbp), %eax
	cmpl	$-32768, %eax           # imm = 0x8000
	jne	.LBB19_4
# %bb.2:
	movswl	-4(%rbp), %eax
	cmpl	$-1, %eax
	jne	.LBB19_4
.LBB19_3:
	movswl	-2(%rbp), %eax
	movl	%eax, -8(%rbp)          # 4-byte Spill
	jmp	.LBB19_5
.LBB19_4:
	movswl	-2(%rbp), %eax
	movswl	-4(%rbp), %ecx
	cltd
	idivl	%ecx
	movl	%edx, -8(%rbp)          # 4-byte Spill
.LBB19_5:
	movl	-8(%rbp), %eax          # 4-byte Reload
                                        # kill: def $ax killed $ax killed $eax
	cwtl
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end19:
	.size	safe_mod_func_int16_t_s_s, .Lfunc_end19-safe_mod_func_int16_t_s_s
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function safe_add_func_int16_t_s_s
	.type	safe_add_func_int16_t_s_s,@function
safe_add_func_int16_t_s_s:              # @safe_add_func_int16_t_s_s
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
                                        # kill: def $si killed $si killed $esi
                                        # kill: def $di killed $di killed $edi
	movw	%di, -2(%rbp)
	movw	%si, -4(%rbp)
	movswl	-2(%rbp), %eax
	movswl	-4(%rbp), %ecx
	addl	%ecx, %eax
                                        # kill: def $ax killed $ax killed $eax
	cwtl
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end20:
	.size	safe_add_func_int16_t_s_s, .Lfunc_end20-safe_add_func_int16_t_s_s
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function safe_div_func_int8_t_s_s
	.type	safe_div_func_int8_t_s_s,@function
safe_div_func_int8_t_s_s:               # @safe_div_func_int8_t_s_s
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
                                        # kill: def $sil killed $sil killed $esi
                                        # kill: def $dil killed $dil killed $edi
	movb	%dil, -1(%rbp)
	movb	%sil, -2(%rbp)
	movsbl	-2(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB21_3
# %bb.1:
	movsbl	-1(%rbp), %eax
	cmpl	$-128, %eax
	jne	.LBB21_4
# %bb.2:
	movsbl	-2(%rbp), %eax
	cmpl	$-1, %eax
	jne	.LBB21_4
.LBB21_3:
	movsbl	-1(%rbp), %eax
	movl	%eax, -8(%rbp)          # 4-byte Spill
	jmp	.LBB21_5
.LBB21_4:
	movsbl	-1(%rbp), %eax
	movsbl	-2(%rbp), %ecx
	cltd
	idivl	%ecx
	movl	%eax, -8(%rbp)          # 4-byte Spill
.LBB21_5:
	movl	-8(%rbp), %eax          # 4-byte Reload
                                        # kill: def $al killed $al killed $eax
	movsbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end21:
	.size	safe_div_func_int8_t_s_s, .Lfunc_end21-safe_div_func_int8_t_s_s
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function safe_sub_func_uint16_t_u_u
	.type	safe_sub_func_uint16_t_u_u,@function
safe_sub_func_uint16_t_u_u:             # @safe_sub_func_uint16_t_u_u
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
                                        # kill: def $si killed $si killed $esi
                                        # kill: def $di killed $di killed $edi
	movw	%di, -2(%rbp)
	movw	%si, -4(%rbp)
	movzwl	-2(%rbp), %eax
	movzwl	-4(%rbp), %ecx
	subl	%ecx, %eax
                                        # kill: def $ax killed $ax killed $eax
	movzwl	%ax, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end22:
	.size	safe_sub_func_uint16_t_u_u, .Lfunc_end22-safe_sub_func_uint16_t_u_u
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function safe_rshift_func_int16_t_s_s
	.type	safe_rshift_func_int16_t_s_s,@function
safe_rshift_func_int16_t_s_s:           # @safe_rshift_func_int16_t_s_s
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
                                        # kill: def $di killed $di killed $edi
	movw	%di, -2(%rbp)
	movl	%esi, -8(%rbp)
	movswl	-2(%rbp), %eax
	cmpl	$0, %eax
	jl	.LBB23_3
# %bb.1:
	cmpl	$0, -8(%rbp)
	jl	.LBB23_3
# %bb.2:
	cmpl	$32, -8(%rbp)
	jl	.LBB23_4
.LBB23_3:
	movswl	-2(%rbp), %eax
	movl	%eax, -12(%rbp)         # 4-byte Spill
	jmp	.LBB23_5
.LBB23_4:
	movswl	-2(%rbp), %eax
	movl	-8(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	sarl	%cl, %eax
	movl	%eax, -12(%rbp)         # 4-byte Spill
.LBB23_5:
	movl	-12(%rbp), %eax         # 4-byte Reload
                                        # kill: def $ax killed $ax killed $eax
	cwtl
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end23:
	.size	safe_rshift_func_int16_t_s_s, .Lfunc_end23-safe_rshift_func_int16_t_s_s
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function safe_mul_func_uint8_t_u_u
	.type	safe_mul_func_uint8_t_u_u,@function
safe_mul_func_uint8_t_u_u:              # @safe_mul_func_uint8_t_u_u
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
                                        # kill: def $sil killed $sil killed $esi
                                        # kill: def $dil killed $dil killed $edi
	movb	%dil, -1(%rbp)
	movb	%sil, -2(%rbp)
	movzbl	-1(%rbp), %eax
	movzbl	-2(%rbp), %ecx
	imull	%ecx, %eax
                                        # kill: def $al killed $al killed $eax
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end24:
	.size	safe_mul_func_uint8_t_u_u, .Lfunc_end24-safe_mul_func_uint8_t_u_u
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function safe_add_func_uint8_t_u_u
	.type	safe_add_func_uint8_t_u_u,@function
safe_add_func_uint8_t_u_u:              # @safe_add_func_uint8_t_u_u
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
                                        # kill: def $sil killed $sil killed $esi
                                        # kill: def $dil killed $dil killed $edi
	movb	%dil, -1(%rbp)
	movb	%sil, -2(%rbp)
	movzbl	-1(%rbp), %eax
	movzbl	-2(%rbp), %ecx
	addl	%ecx, %eax
                                        # kill: def $al killed $al killed $eax
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end25:
	.size	safe_add_func_uint8_t_u_u, .Lfunc_end25-safe_add_func_uint8_t_u_u
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function safe_lshift_func_int16_t_s_u
	.type	safe_lshift_func_int16_t_s_u,@function
safe_lshift_func_int16_t_s_u:           # @safe_lshift_func_int16_t_s_u
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
                                        # kill: def $di killed $di killed $edi
	movw	%di, -2(%rbp)
	movl	%esi, -8(%rbp)
	movswl	-2(%rbp), %eax
	cmpl	$0, %eax
	jl	.LBB26_3
# %bb.1:
	cmpl	$32, -8(%rbp)
	jae	.LBB26_3
# %bb.2:
	movswl	-2(%rbp), %eax
	movl	-8(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	movl	$32767, %edx            # imm = 0x7FFF
	sarl	%cl, %edx
	cmpl	%edx, %eax
	jle	.LBB26_4
.LBB26_3:
	movswl	-2(%rbp), %eax
	movl	%eax, -12(%rbp)         # 4-byte Spill
	jmp	.LBB26_5
.LBB26_4:
	movswl	-2(%rbp), %eax
	movl	-8(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	shll	%cl, %eax
	movl	%eax, -12(%rbp)         # 4-byte Spill
.LBB26_5:
	movl	-12(%rbp), %eax         # 4-byte Reload
                                        # kill: def $ax killed $ax killed $eax
	cwtl
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end26:
	.size	safe_lshift_func_int16_t_s_u, .Lfunc_end26-safe_lshift_func_int16_t_s_u
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function safe_sub_func_uint8_t_u_u
	.type	safe_sub_func_uint8_t_u_u,@function
safe_sub_func_uint8_t_u_u:              # @safe_sub_func_uint8_t_u_u
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
                                        # kill: def $sil killed $sil killed $esi
                                        # kill: def $dil killed $dil killed $edi
	movb	%dil, -1(%rbp)
	movb	%sil, -2(%rbp)
	movzbl	-1(%rbp), %eax
	movzbl	-2(%rbp), %ecx
	subl	%ecx, %eax
                                        # kill: def $al killed $al killed $eax
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end27:
	.size	safe_sub_func_uint8_t_u_u, .Lfunc_end27-safe_sub_func_uint8_t_u_u
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function safe_add_func_uint16_t_u_u
	.type	safe_add_func_uint16_t_u_u,@function
safe_add_func_uint16_t_u_u:             # @safe_add_func_uint16_t_u_u
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
                                        # kill: def $si killed $si killed $esi
                                        # kill: def $di killed $di killed $edi
	movw	%di, -2(%rbp)
	movw	%si, -4(%rbp)
	movzwl	-2(%rbp), %eax
	movzwl	-4(%rbp), %ecx
	addl	%ecx, %eax
                                        # kill: def $ax killed $ax killed $eax
	movzwl	%ax, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end28:
	.size	safe_add_func_uint16_t_u_u, .Lfunc_end28-safe_add_func_uint16_t_u_u
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function safe_mul_func_int8_t_s_s
	.type	safe_mul_func_int8_t_s_s,@function
safe_mul_func_int8_t_s_s:               # @safe_mul_func_int8_t_s_s
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
                                        # kill: def $sil killed $sil killed $esi
                                        # kill: def $dil killed $dil killed $edi
	movb	%dil, -1(%rbp)
	movb	%sil, -2(%rbp)
	movsbl	-1(%rbp), %eax
	movsbl	-2(%rbp), %ecx
	imull	%ecx, %eax
                                        # kill: def $al killed $al killed $eax
	movsbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end29:
	.size	safe_mul_func_int8_t_s_s, .Lfunc_end29-safe_mul_func_int8_t_s_s
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function safe_sub_func_int8_t_s_s
	.type	safe_sub_func_int8_t_s_s,@function
safe_sub_func_int8_t_s_s:               # @safe_sub_func_int8_t_s_s
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
                                        # kill: def $sil killed $sil killed $esi
                                        # kill: def $dil killed $dil killed $edi
	movb	%dil, -1(%rbp)
	movb	%sil, -2(%rbp)
	movsbl	-1(%rbp), %eax
	movsbl	-2(%rbp), %ecx
	subl	%ecx, %eax
                                        # kill: def $al killed $al killed $eax
	movsbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end30:
	.size	safe_sub_func_int8_t_s_s, .Lfunc_end30-safe_sub_func_int8_t_s_s
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function safe_sub_func_int16_t_s_s
	.type	safe_sub_func_int16_t_s_s,@function
safe_sub_func_int16_t_s_s:              # @safe_sub_func_int16_t_s_s
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
                                        # kill: def $si killed $si killed $esi
                                        # kill: def $di killed $di killed $edi
	movw	%di, -2(%rbp)
	movw	%si, -4(%rbp)
	movswl	-2(%rbp), %eax
	movswl	-4(%rbp), %ecx
	subl	%ecx, %eax
                                        # kill: def $ax killed $ax killed $eax
	cwtl
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end31:
	.size	safe_sub_func_int16_t_s_s, .Lfunc_end31-safe_sub_func_int16_t_s_s
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function safe_unary_minus_func_uint16_t_u
	.type	safe_unary_minus_func_uint16_t_u,@function
safe_unary_minus_func_uint16_t_u:       # @safe_unary_minus_func_uint16_t_u
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
                                        # kill: def $di killed $di killed $edi
	xorl	%eax, %eax
	movw	%di, -2(%rbp)
	movzwl	-2(%rbp), %ecx
	subl	%ecx, %eax
                                        # kill: def $ax killed $ax killed $eax
	movzwl	%ax, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end32:
	.size	safe_unary_minus_func_uint16_t_u, .Lfunc_end32-safe_unary_minus_func_uint16_t_u
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function safe_lshift_func_int8_t_s_s
	.type	safe_lshift_func_int8_t_s_s,@function
safe_lshift_func_int8_t_s_s:            # @safe_lshift_func_int8_t_s_s
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
                                        # kill: def $dil killed $dil killed $edi
	movb	%dil, -1(%rbp)
	movl	%esi, -8(%rbp)
	movsbl	-1(%rbp), %eax
	cmpl	$0, %eax
	jl	.LBB33_4
# %bb.1:
	cmpl	$0, -8(%rbp)
	jl	.LBB33_4
# %bb.2:
	cmpl	$32, -8(%rbp)
	jge	.LBB33_4
# %bb.3:
	movsbl	-1(%rbp), %eax
	movl	-8(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	movl	$127, %edx
	sarl	%cl, %edx
	cmpl	%edx, %eax
	jle	.LBB33_5
.LBB33_4:
	movsbl	-1(%rbp), %eax
	movl	%eax, -12(%rbp)         # 4-byte Spill
	jmp	.LBB33_6
.LBB33_5:
	movsbl	-1(%rbp), %eax
	movl	-8(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	shll	%cl, %eax
	movl	%eax, -12(%rbp)         # 4-byte Spill
.LBB33_6:
	movl	-12(%rbp), %eax         # 4-byte Reload
                                        # kill: def $al killed $al killed $eax
	movsbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end33:
	.size	safe_lshift_func_int8_t_s_s, .Lfunc_end33-safe_lshift_func_int8_t_s_s
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function safe_add_func_uint32_t_u_u
	.type	safe_add_func_uint32_t_u_u,@function
safe_add_func_uint32_t_u_u:             # @safe_add_func_uint32_t_u_u
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	addl	-8(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end34:
	.size	safe_add_func_uint32_t_u_u, .Lfunc_end34-safe_add_func_uint32_t_u_u
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function safe_unary_minus_func_int8_t_s
	.type	safe_unary_minus_func_int8_t_s,@function
safe_unary_minus_func_int8_t_s:         # @safe_unary_minus_func_int8_t_s
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
                                        # kill: def $dil killed $dil killed $edi
	xorl	%eax, %eax
	movb	%dil, -1(%rbp)
	movsbl	-1(%rbp), %ecx
	subl	%ecx, %eax
                                        # kill: def $al killed $al killed $eax
	movsbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end35:
	.size	safe_unary_minus_func_int8_t_s, .Lfunc_end35-safe_unary_minus_func_int8_t_s
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function safe_add_func_int64_t_s_s
	.type	safe_add_func_int64_t_s_s,@function
safe_add_func_int64_t_s_s:              # @safe_add_func_int64_t_s_s
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	jle	.LBB36_3
# %bb.1:
	cmpq	$0, -16(%rbp)
	jle	.LBB36_3
# %bb.2:
	movq	-8(%rbp), %rax
	movabsq	$9223372036854775807, %rcx # imm = 0x7FFFFFFFFFFFFFFF
	subq	-16(%rbp), %rcx
	cmpq	%rcx, %rax
	jg	.LBB36_6
.LBB36_3:
	cmpq	$0, -8(%rbp)
	jge	.LBB36_7
# %bb.4:
	cmpq	$0, -16(%rbp)
	jge	.LBB36_7
# %bb.5:
	movq	-8(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	-16(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB36_7
.LBB36_6:
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB36_8
.LBB36_7:
	movq	-8(%rbp), %rax
	addq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB36_8:
	movq	-24(%rbp), %rax         # 8-byte Reload
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end36:
	.size	safe_add_func_int64_t_s_s, .Lfunc_end36-safe_add_func_int64_t_s_s
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function safe_div_func_uint64_t_u_u
	.type	safe_div_func_uint64_t_u_u,@function
safe_div_func_uint64_t_u_u:             # @safe_div_func_uint64_t_u_u
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB37_2
# %bb.1:
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB37_3
.LBB37_2:
	movq	-8(%rbp), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	divq	-16(%rbp)
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB37_3:
	movq	-24(%rbp), %rax         # 8-byte Reload
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end37:
	.size	safe_div_func_uint64_t_u_u, .Lfunc_end37-safe_div_func_uint64_t_u_u
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function safe_mod_func_int64_t_s_s
	.type	safe_mod_func_int64_t_s_s,@function
safe_mod_func_int64_t_s_s:              # @safe_mod_func_int64_t_s_s
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB38_3
# %bb.1:
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	cmpq	%rax, -8(%rbp)
	jne	.LBB38_4
# %bb.2:
	cmpq	$-1, -16(%rbp)
	jne	.LBB38_4
.LBB38_3:
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB38_5
.LBB38_4:
	movq	-8(%rbp), %rax
	cqto
	idivq	-16(%rbp)
	movq	%rdx, -24(%rbp)         # 8-byte Spill
.LBB38_5:
	movq	-24(%rbp), %rax         # 8-byte Reload
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end38:
	.size	safe_mod_func_int64_t_s_s, .Lfunc_end38-safe_mod_func_int64_t_s_s
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function safe_add_func_int32_t_s_s
	.type	safe_add_func_int32_t_s_s,@function
safe_add_func_int32_t_s_s:              # @safe_add_func_int32_t_s_s
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$0, -4(%rbp)
	jle	.LBB39_3
# %bb.1:
	cmpl	$0, -8(%rbp)
	jle	.LBB39_3
# %bb.2:
	movl	-4(%rbp), %eax
	movl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	subl	-8(%rbp), %ecx
	cmpl	%ecx, %eax
	jg	.LBB39_6
.LBB39_3:
	cmpl	$0, -4(%rbp)
	jge	.LBB39_7
# %bb.4:
	cmpl	$0, -8(%rbp)
	jge	.LBB39_7
# %bb.5:
	movl	-4(%rbp), %eax
	movl	$2147483648, %ecx       # imm = 0x80000000
	subl	-8(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB39_7
.LBB39_6:
	movl	-4(%rbp), %eax
	movl	%eax, -12(%rbp)         # 4-byte Spill
	jmp	.LBB39_8
.LBB39_7:
	movl	-4(%rbp), %eax
	addl	-8(%rbp), %eax
	movl	%eax, -12(%rbp)         # 4-byte Spill
.LBB39_8:
	movl	-12(%rbp), %eax         # 4-byte Reload
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end39:
	.size	safe_add_func_int32_t_s_s, .Lfunc_end39-safe_add_func_int32_t_s_s
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function safe_div_func_int16_t_s_s
	.type	safe_div_func_int16_t_s_s,@function
safe_div_func_int16_t_s_s:              # @safe_div_func_int16_t_s_s
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
                                        # kill: def $si killed $si killed $esi
                                        # kill: def $di killed $di killed $edi
	movw	%di, -2(%rbp)
	movw	%si, -4(%rbp)
	movswl	-4(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB40_3
# %bb.1:
	movswl	-2(%rbp), %eax
	cmpl	$-32768, %eax           # imm = 0x8000
	jne	.LBB40_4
# %bb.2:
	movswl	-4(%rbp), %eax
	cmpl	$-1, %eax
	jne	.LBB40_4
.LBB40_3:
	movswl	-2(%rbp), %eax
	movl	%eax, -8(%rbp)          # 4-byte Spill
	jmp	.LBB40_5
.LBB40_4:
	movswl	-2(%rbp), %eax
	movswl	-4(%rbp), %ecx
	cltd
	idivl	%ecx
	movl	%eax, -8(%rbp)          # 4-byte Spill
.LBB40_5:
	movl	-8(%rbp), %eax          # 4-byte Reload
                                        # kill: def $ax killed $ax killed $eax
	cwtl
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end40:
	.size	safe_div_func_int16_t_s_s, .Lfunc_end40-safe_div_func_int16_t_s_s
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function safe_lshift_func_int16_t_s_s
	.type	safe_lshift_func_int16_t_s_s,@function
safe_lshift_func_int16_t_s_s:           # @safe_lshift_func_int16_t_s_s
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
                                        # kill: def $di killed $di killed $edi
	movw	%di, -2(%rbp)
	movl	%esi, -8(%rbp)
	movswl	-2(%rbp), %eax
	cmpl	$0, %eax
	jl	.LBB41_4
# %bb.1:
	cmpl	$0, -8(%rbp)
	jl	.LBB41_4
# %bb.2:
	cmpl	$32, -8(%rbp)
	jge	.LBB41_4
# %bb.3:
	movswl	-2(%rbp), %eax
	movl	-8(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	movl	$32767, %edx            # imm = 0x7FFF
	sarl	%cl, %edx
	cmpl	%edx, %eax
	jle	.LBB41_5
.LBB41_4:
	movswl	-2(%rbp), %eax
	movl	%eax, -12(%rbp)         # 4-byte Spill
	jmp	.LBB41_6
.LBB41_5:
	movswl	-2(%rbp), %eax
	movl	-8(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	shll	%cl, %eax
	movl	%eax, -12(%rbp)         # 4-byte Spill
.LBB41_6:
	movl	-12(%rbp), %eax         # 4-byte Reload
                                        # kill: def $ax killed $ax killed $eax
	cwtl
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end41:
	.size	safe_lshift_func_int16_t_s_s, .Lfunc_end41-safe_lshift_func_int16_t_s_s
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function safe_div_func_uint8_t_u_u
	.type	safe_div_func_uint8_t_u_u,@function
safe_div_func_uint8_t_u_u:              # @safe_div_func_uint8_t_u_u
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
                                        # kill: def $sil killed $sil killed $esi
                                        # kill: def $dil killed $dil killed $edi
	movb	%dil, -1(%rbp)
	movb	%sil, -2(%rbp)
	movzbl	-2(%rbp), %eax
	cmpl	$0, %eax
	jne	.LBB42_2
# %bb.1:
	movzbl	-1(%rbp), %eax
	movl	%eax, -8(%rbp)          # 4-byte Spill
	jmp	.LBB42_3
.LBB42_2:
	movzbl	-1(%rbp), %eax
	movzbl	-2(%rbp), %ecx
	cltd
	idivl	%ecx
	movl	%eax, -8(%rbp)          # 4-byte Spill
.LBB42_3:
	movl	-8(%rbp), %eax          # 4-byte Reload
                                        # kill: def $al killed $al killed $eax
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end42:
	.size	safe_div_func_uint8_t_u_u, .Lfunc_end42-safe_div_func_uint8_t_u_u
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function safe_rshift_func_int8_t_s_s
	.type	safe_rshift_func_int8_t_s_s,@function
safe_rshift_func_int8_t_s_s:            # @safe_rshift_func_int8_t_s_s
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
                                        # kill: def $dil killed $dil killed $edi
	movb	%dil, -1(%rbp)
	movl	%esi, -8(%rbp)
	movsbl	-1(%rbp), %eax
	cmpl	$0, %eax
	jl	.LBB43_3
# %bb.1:
	cmpl	$0, -8(%rbp)
	jl	.LBB43_3
# %bb.2:
	cmpl	$32, -8(%rbp)
	jl	.LBB43_4
.LBB43_3:
	movsbl	-1(%rbp), %eax
	movl	%eax, -12(%rbp)         # 4-byte Spill
	jmp	.LBB43_5
.LBB43_4:
	movsbl	-1(%rbp), %eax
	movl	-8(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	sarl	%cl, %eax
	movl	%eax, -12(%rbp)         # 4-byte Spill
.LBB43_5:
	movl	-12(%rbp), %eax         # 4-byte Reload
                                        # kill: def $al killed $al killed $eax
	movsbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end43:
	.size	safe_rshift_func_int8_t_s_s, .Lfunc_end43-safe_rshift_func_int8_t_s_s
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function safe_div_func_uint16_t_u_u
	.type	safe_div_func_uint16_t_u_u,@function
safe_div_func_uint16_t_u_u:             # @safe_div_func_uint16_t_u_u
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
                                        # kill: def $si killed $si killed $esi
                                        # kill: def $di killed $di killed $edi
	movw	%di, -2(%rbp)
	movw	%si, -4(%rbp)
	movzwl	-4(%rbp), %eax
	cmpl	$0, %eax
	jne	.LBB44_2
# %bb.1:
	movzwl	-2(%rbp), %eax
	movl	%eax, -8(%rbp)          # 4-byte Spill
	jmp	.LBB44_3
.LBB44_2:
	movzwl	-2(%rbp), %eax
	movzwl	-4(%rbp), %ecx
	cltd
	idivl	%ecx
	movl	%eax, -8(%rbp)          # 4-byte Spill
.LBB44_3:
	movl	-8(%rbp), %eax          # 4-byte Reload
                                        # kill: def $ax killed $ax killed $eax
	movzwl	%ax, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end44:
	.size	safe_div_func_uint16_t_u_u, .Lfunc_end44-safe_div_func_uint16_t_u_u
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function func_97
	.type	func_97,@function
func_97:                                # @func_97
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$2080, %rsp             # imm = 0x820
                                        # kill: def $sil killed $sil killed $esi
	movabsq	$g_112, %rax
	addq	$8, %rax
	leaq	-176(%rbp), %rcx
	movabsq	$.L__const.func_97.l_734, %rdx
	movabsq	$.L__const.func_97.l_708, %r8
	movabsq	$.L__const.func_97.l_682, %r9
	movl	%edi, -12(%rbp)
	movb	%sil, -13(%rbp)
	movabsq	$g_45, %r10
	movq	%r10, -24(%rbp)
	movl	$1, -28(%rbp)
	movl	$-1, -32(%rbp)
	movl	$1677819522, -36(%rbp)  # imm = 0x64017E82
	movl	$-1725486833, -40(%rbp) # imm = 0x9927290F
	movl	$0, -44(%rbp)
	movq	%rcx, %r10
	movq	%r10, %rdi
	movq	%r9, %rsi
	movl	$128, %r9d
	movq	%rdx, -1984(%rbp)       # 8-byte Spill
	movq	%r9, %rdx
	movq	%rax, -1992(%rbp)       # 8-byte Spill
	movq	%rcx, -2000(%rbp)       # 8-byte Spill
	movq	%r8, -2008(%rbp)        # 8-byte Spill
	callq	memcpy
	movl	$-2, -180(%rbp)
	movl	$-8, -184(%rbp)
	movl	$-8, -188(%rbp)
	movabsq	$g_201, %rax
	movq	%rax, -200(%rbp)
	leaq	-200(%rbp), %rax
	movq	%rax, -208(%rbp)
	leaq	-288(%rbp), %rax
	movq	%rax, %rdi
	movq	-2008(%rbp), %rsi       # 8-byte Reload
	movl	$72, %eax
	movq	%rax, %rdx
	movq	%rax, -2016(%rbp)       # 8-byte Spill
	callq	memcpy
	leaq	-368(%rbp), %rax
	movq	%rax, %rdi
	movq	-1984(%rbp), %rsi       # 8-byte Reload
	movq	-2016(%rbp), %rdx       # 8-byte Reload
	callq	memcpy
	leaq	-28(%rbp), %rax
	movq	%rax, -448(%rbp)
	movq	%rax, -440(%rbp)
	movq	-2000(%rbp), %rcx       # 8-byte Reload
	addq	$12, %rcx
	movq	%rcx, -432(%rbp)
	movq	%rax, -424(%rbp)
	movq	%rax, -416(%rbp)
	movq	-2000(%rbp), %rcx       # 8-byte Reload
	addq	$12, %rcx
	movq	%rcx, -408(%rbp)
	movq	%rax, -400(%rbp)
	movq	%rax, -392(%rbp)
	movq	-2000(%rbp), %rcx       # 8-byte Reload
	addq	$12, %rcx
	movq	%rcx, -384(%rbp)
	movq	%rax, -376(%rbp)
	movq	-1992(%rbp), %rax       # 8-byte Reload
	movq	%rax, -456(%rbp)
	movl	$0, -460(%rbp)
.LBB45_1:                               # =>This Inner Loop Header: Depth=1
	cmpl	$2, -460(%rbp)
	jge	.LBB45_4
# %bb.2:                                #   in Loop: Header=BB45_1 Depth=1
	movslq	-460(%rbp), %rax
	movb	$-1, -190(%rbp,%rax)
# %bb.3:                                #   in Loop: Header=BB45_1 Depth=1
	movl	-460(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -460(%rbp)
	jmp	.LBB45_1
.LBB45_4:
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movq	-24(%rbp), %rcx
	movw	$4, (%rcx)
	testb	$1, %al
	jne	.LBB45_5
	jmp	.LBB45_6
.LBB45_5:
	movabsq	$.L__const.func_97.l_676, %rax
	movq	$0, -480(%rbp)
	movq	$0, -488(%rbp)
	movq	$0, -496(%rbp)
	leaq	-576(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movl	$72, %edx
	callq	memcpy
	movb	-189(%rbp), %r8b
	addb	$-1, %r8b
	movb	%r8b, -189(%rbp)
	movl	-12(%rbp), %r9d
	movl	%r9d, -164(%rbp)
	jmp	.LBB45_62
.LBB45_6:
	leaq	-28(%rbp), %rax
	movq	%rax, -592(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, -600(%rbp)
	movq	$-8, -608(%rbp)
	movabsq	$-1541609869214341832, %rax # imm = 0xEA9B19FDE33E2538
	movq	%rax, -616(%rbp)
	movl	$1, -620(%rbp)
	leaq	-620(%rbp), %rax
	movq	%rax, -688(%rbp)
	movq	%rax, -680(%rbp)
	movq	%rax, -672(%rbp)
	movq	%rax, -664(%rbp)
	movq	%rax, -656(%rbp)
	movq	%rax, -648(%rbp)
	movq	%rax, -640(%rbp)
	movq	%rax, -632(%rbp)
	movq	-592(%rbp), %rax
	movq	%rax, g_590
	movl	-44(%rbp), %ecx
	movl	%ecx, -104(%rbp)
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	movl	%ecx, %esi
	callq	safe_div_func_int32_t_s_s
	movl	-12(%rbp), %ecx
	xorl	$-1, %ecx
	movq	-592(%rbp), %rdx
	movl	(%rdx), %esi
	movb	-13(%rbp), %r8b
	movq	-208(%rbp), %rdx
	movq	-600(%rbp), %r9
	movq	%rdx, (%r9)
	leaq	-200(%rbp), %r9
	cmpq	%r9, %rdx
	setne	%r10b
	andb	$1, %r10b
	movzbl	%r10b, %edi
	movslq	%edi, %rdx
	movq	g_393, %r9
	movq	(%r9), %r9
	movq	%rdx, (%r9)
	movq	%rdx, %rdi
	movl	$2, %edx
	movl	%esi, -2020(%rbp)       # 4-byte Spill
	movq	%rdx, %rsi
	movl	%eax, -2024(%rbp)       # 4-byte Spill
	movl	%ecx, -2028(%rbp)       # 4-byte Spill
	movb	%r8b, -2029(%rbp)       # 1-byte Spill
	callq	safe_div_func_int64_t_s_s
	xorl	%esi, %esi
                                        # kill: def $al killed $al killed $rax
	movsbl	%al, %edi
	callq	safe_lshift_func_int8_t_s_u
	movsbq	%al, %rdx
	movl	$87, %r9d
	cmpq	%rdx, %r9
	setl	%al
	andb	$1, %al
	movzbl	%al, %ecx
                                        # kill: def $cx killed $cx killed $ecx
	movl	-256(%rbp), %esi
                                        # kill: def $si killed $si killed $esi
	movzwl	%cx, %edi
	movzwl	%si, %esi
	callq	safe_div_func_uint16_t_u_u
                                        # kill: def $al killed $al killed $ax
	movb	-2029(%rbp), %r8b       # 1-byte Reload
	movsbl	%r8b, %edi
	movsbl	%al, %esi
	callq	safe_div_func_int8_t_s_s
	movsbl	%al, %esi
	cmpl	-12(%rbp), %esi
	setg	%al
	andb	$1, %al
	movzbl	%al, %esi
	movl	-2020(%rbp), %edi       # 4-byte Reload
	cmpl	%esi, %edi
	setne	%al
	andb	$1, %al
	movzbl	%al, %esi
	movslq	%esi, %rdx
	movslq	g_118, %rsi
	movq	%rdx, %rdi
	callq	safe_sub_func_uint64_t_u_u
                                        # kill: def $eax killed $eax killed $rax
	movl	-2028(%rbp), %edi       # 4-byte Reload
	movl	%eax, %esi
	callq	safe_div_func_int32_t_s_s
	movl	-12(%rbp), %esi
	movsbl	-13(%rbp), %edi
	cmpl	%edi, %esi
	jl	.LBB45_55
# %bb.7:
	movq	$0, -704(%rbp)
	movabsq	$g_58, %rax
	movq	%rax, -712(%rbp)
	leaq	-712(%rbp), %rax
	movq	%rax, -720(%rbp)
	movq	$0, -728(%rbp)
	movq	-208(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	leaq	-12(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	-720(%rbp), %rax
	movq	%rcx, (%rax)
	movq	g_201, %rax
	movq	(%rax), %rax
	movq	-600(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	%rax, (%rcx)
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movslq	(%rax), %rdi
	movl	-12(%rbp), %edx
	movq	-24(%rbp), %rax
	movw	$23389, (%rax)          # imm = 0x5B5D
	movl	-12(%rbp), %esi
                                        # kill: def $si killed $si killed $esi
	movl	$23389, %r8d            # imm = 0x5B5D
	movq	%rdi, -2040(%rbp)       # 8-byte Spill
	movl	%r8d, %edi
	movzwl	%si, %esi
	movl	%edx, -2044(%rbp)       # 4-byte Spill
	callq	safe_div_func_uint16_t_u_u
	movzwl	%ax, %esi
	movl	-2044(%rbp), %edi       # 4-byte Reload
	callq	safe_add_func_uint32_t_u_u
	movl	%eax, %eax
	movl	%eax, %esi
	movq	-2040(%rbp), %rdi       # 8-byte Reload
	callq	safe_add_func_uint64_t_u_u
	cmpq	$0, %rax
	je	.LBB45_39
# %bb.8:
	movw	$0, -730(%rbp)
	movl	$0, -820(%rbp)
.LBB45_9:                               # =>This Inner Loop Header: Depth=1
	cmpl	$10, -820(%rbp)
	jge	.LBB45_12
# %bb.10:                               #   in Loop: Header=BB45_9 Depth=1
	movabsq	$g_112, %rax
	addq	$24, %rax
	movslq	-820(%rbp), %rcx
	movq	%rax, -816(%rbp,%rcx,8)
# %bb.11:                               #   in Loop: Header=BB45_9 Depth=1
	movl	-820(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -820(%rbp)
	jmp	.LBB45_9
.LBB45_12:
	jmp	.LBB45_13
.LBB45_13:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB45_15 Depth 2
	movq	-208(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpl	$0, (%rax)
	je	.LBB45_21
# %bb.14:                               #   in Loop: Header=BB45_13 Depth=1
	movb	$0, g_265
.LBB45_15:                              #   Parent Loop BB45_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	g_265, %eax
	cmpl	$7, %eax
	jge	.LBB45_18
# %bb.16:                               #   in Loop: Header=BB45_15 Depth=2
	movzbl	g_265, %eax
	movl	%eax, %ecx
	movl	$1128781516, g_112(,%rcx,4) # imm = 0x4347D6CC
# %bb.17:                               #   in Loop: Header=BB45_15 Depth=2
	movzbl	g_265, %eax
	addl	$1, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, g_265
	jmp	.LBB45_15
.LBB45_18:                              #   in Loop: Header=BB45_13 Depth=1
	cmpl	$0, -12(%rbp)
	je	.LBB45_20
# %bb.19:                               #   in Loop: Header=BB45_13 Depth=1
	jmp	.LBB45_13
.LBB45_20:
	jmp	.LBB45_22
.LBB45_21:
	movabsq	$g_265, %rax
	movq	%rax, -832(%rbp)
	movabsq	$g_731, %rax
	movq	%rax, -840(%rbp)
	movw	-730(%rbp), %cx
                                        # kill: def $cl killed $cl killed $cx
	movq	-208(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movl	(%rax), %edx
                                        # kill: def $dl killed $dl killed $edx
	movq	-712(%rbp), %rax
	movl	(%rax), %esi
                                        # kill: def $sil killed $sil killed $esi
	movsbl	%dl, %edi
	movsbl	%sil, %esi
	movb	%cl, -2045(%rbp)        # 1-byte Spill
	callq	safe_mod_func_int8_t_s_s
	movsbq	%al, %rdi
	callq	safe_unary_minus_func_uint64_t_u
                                        # kill: def $al killed $al killed $rax
	movq	-832(%rbp), %rdi
	movb	%al, (%rdi)
	movb	-2045(%rbp), %cl        # 1-byte Reload
	movzbl	%cl, %edi
	movzbl	%al, %esi
	callq	safe_sub_func_uint8_t_u_u
	movsbl	%al, %edi
	callq	safe_unary_minus_func_int8_t_s
	movsbl	%al, %edi
	movq	-200(%rbp), %r8
	movq	(%r8), %r8
	movq	(%r8), %r8
	movl	(%r8), %esi
	callq	safe_add_func_uint32_t_u_u
	movq	-24(%rbp), %r8
	movw	(%r8), %r9w
	addw	$1, %r9w
	movw	%r9w, (%r8)
	movq	g_730+376, %r8
	cmpq	-840(%rbp), %r8
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %esi
	andl	g_58, %esi
	movq	-208(%rbp), %r8
	movq	(%r8), %r8
	movq	(%r8), %r8
	movq	(%r8), %r8
	movl	%esi, (%r8)
.LBB45_22:
	movl	$0, -40(%rbp)
.LBB45_23:                              # =>This Inner Loop Header: Depth=1
	cmpl	$1, -40(%rbp)
	jg	.LBB45_38
# %bb.24:                               #   in Loop: Header=BB45_23 Depth=1
	movabsq	$.L__const.func_97.l_751, %rax
	leaq	-1808(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movl	$960, %edx              # imm = 0x3C0
	callq	memcpy
	cmpb	$0, -13(%rbp)
	je	.LBB45_26
# %bb.25:
	movq	-360(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB45_63
.LBB45_26:                              #   in Loop: Header=BB45_23 Depth=1
	cmpb	$0, -13(%rbp)
	je	.LBB45_28
# %bb.27:
	jmp	.LBB45_38
.LBB45_28:                              #   in Loop: Header=BB45_23 Depth=1
	movq	g_201, %rax
	leaq	-12(%rbp), %rcx
	movq	%rcx, (%rax)
	cmpb	$0, -13(%rbp)
	je	.LBB45_30
# %bb.29:
	jmp	.LBB45_38
.LBB45_30:                              #   in Loop: Header=BB45_23 Depth=1
	jmp	.LBB45_31
.LBB45_31:                              #   in Loop: Header=BB45_23 Depth=1
	movsbq	g_161+21, %rax
	movsbl	-13(%rbp), %ecx
	movsbl	-13(%rbp), %edx
                                        # kill: def $dx killed $dx killed $edx
	movzwl	%dx, %edi
	movl	$4, %esi
	movq	%rax, -2056(%rbp)       # 8-byte Spill
	movl	%ecx, -2060(%rbp)       # 4-byte Spill
	callq	safe_rshift_func_uint16_t_u_u
	movzwl	%ax, %ecx
	movl	-2060(%rbp), %esi       # 4-byte Reload
	andl	%ecx, %esi
                                        # kill: def $sil killed $sil killed $esi
	movq	-208(%rbp), %r8
	movq	(%r8), %r8
	movq	(%r8), %r8
	movq	(%r8), %r8
	movl	(%r8), %ecx
	movsbl	-13(%rbp), %edi
	cmpl	%edi, %ecx
	movb	$1, %r9b
	movb	%sil, -2061(%rbp)       # 1-byte Spill
	movb	%r9b, -2062(%rbp)       # 1-byte Spill
	jge	.LBB45_33
# %bb.32:                               #   in Loop: Header=BB45_23 Depth=1
	movq	g_393, %rax
	movq	(%rax), %rax
	cmpq	$0, (%rax)
	setne	%cl
	movb	%cl, -2062(%rbp)        # 1-byte Spill
.LBB45_33:                              #   in Loop: Header=BB45_23 Depth=1
	movb	-2062(%rbp), %al        # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %esi
	movb	-2061(%rbp), %al        # 1-byte Reload
	movsbl	%al, %edi
	callq	safe_rshift_func_int8_t_s_s
	movsbl	%al, %esi
	movl	$6, %edi
	callq	safe_div_func_int32_t_s_s
	movq	g_746, %rcx
	cmpq	-600(%rbp), %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %edi
	movq	-608(%rbp), %rcx
                                        # kill: def $ecx killed $ecx killed $rcx
	movl	%ecx, %esi
	movl	%eax, -2068(%rbp)       # 4-byte Spill
	callq	safe_mod_func_uint32_t_u_u
	movl	-2068(%rbp), %ecx       # 4-byte Reload
	cmpl	%eax, %ecx
	setb	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	movslq	%eax, %rdi
	callq	safe_unary_minus_func_uint64_t_u
	movq	-616(%rbp), %rsi
	movq	%rax, %rdi
	callq	safe_add_func_uint64_t_u_u
	movq	-2056(%rbp), %rsi       # 8-byte Reload
	cmpq	%rax, %rsi
	seta	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	cmpl	g_108, %ecx
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	andl	-1340(%rbp), %ecx
	movl	%ecx, -1340(%rbp)
	movw	$0, g_242
# %bb.34:                               #   in Loop: Header=BB45_23 Depth=1
	movzwl	g_242, %eax
	cmpl	$3, %eax
	jg	.LBB45_36
# %bb.35:
	movq	-760(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB45_63
.LBB45_36:                              #   in Loop: Header=BB45_23 Depth=1
	jmp	.LBB45_37
.LBB45_37:                              #   in Loop: Header=BB45_23 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB45_23
.LBB45_38:
	jmp	.LBB45_54
.LBB45_39:
	movq	-720(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %ecx
	movq	g_202, %rax
	movl	%ecx, (%rax)
	movl	$2, -12(%rbp)
.LBB45_40:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB45_44 Depth 2
	cmpl	$0, -12(%rbp)
	jl	.LBB45_53
# %bb.41:                               #   in Loop: Header=BB45_40 Depth=1
	movb	$-10, -1821(%rbp)
	movl	$841247228, -1828(%rbp) # imm = 0x322469FC
	movzbl	-1821(%rbp), %eax
	cmpl	$0, %eax
	movb	$1, %cl
	movb	%cl, -2069(%rbp)        # 1-byte Spill
	jne	.LBB45_43
# %bb.42:                               #   in Loop: Header=BB45_40 Depth=1
	cmpl	$0, -12(%rbp)
	setne	%al
	movb	%al, -2069(%rbp)        # 1-byte Spill
.LBB45_43:                              #   in Loop: Header=BB45_40 Depth=1
	movb	-2069(%rbp), %al        # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
                                        # kill: def $cx killed $cx killed $ecx
	movzwl	%cx, %edi
	callq	safe_unary_minus_func_uint16_t_u
	movzwl	%ax, %edx
	xorl	-1828(%rbp), %edx
	movl	%edx, -1828(%rbp)
	movl	$2, g_129
.LBB45_44:                              #   Parent Loop BB45_40 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, g_129
	jl	.LBB45_51
# %bb.45:                               #   in Loop: Header=BB45_44 Depth=2
	movl	$-1624072543, -1832(%rbp) # imm = 0x9F329EA1
	movabsq	$g_108, %rax
	movq	%rax, -1840(%rbp)
	cmpl	$0, -12(%rbp)
	je	.LBB45_47
# %bb.46:                               #   in Loop: Header=BB45_40 Depth=1
	jmp	.LBB45_51
.LBB45_47:                              #   in Loop: Header=BB45_44 Depth=2
	xorl	%edi, %edi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-200(%rbp), %rdx
	movq	(%rdx), %rdx
	leaq	-12(%rbp), %rsi
	movq	%rsi, (%rdx)
	movl	-1832(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1832(%rbp)
	cmpq	-728(%rbp), %rcx
	setne	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %eax
	movslq	%eax, %rcx
	cmpq	$0, %rcx
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %eax
                                        # kill: def $al killed $al killed $eax
	movq	-1840(%rbp), %rcx
	movl	(%rcx), %r9d
	movl	%r9d, %r10d
	addl	$1, %r10d
	movl	%r10d, (%rcx)
	movl	%r9d, %esi
	movb	%al, -2070(%rbp)        # 1-byte Spill
	callq	safe_sub_func_uint32_t_u_u
                                        # kill: def $al killed $al killed $eax
	movl	-12(%rbp), %esi
                                        # kill: def $sil killed $sil killed $esi
	movzbl	%al, %edi
	movzbl	%sil, %esi
	callq	safe_mul_func_uint8_t_u_u
	movq	g_731, %rcx
	movswl	(%rcx), %esi
	cmpl	$0, %esi
	movb	$1, %r8b
	movb	%r8b, -2071(%rbp)       # 1-byte Spill
	jne	.LBB45_49
# %bb.48:                               #   in Loop: Header=BB45_44 Depth=2
	cmpq	$0, g_187
	setne	%al
	movb	%al, -2071(%rbp)        # 1-byte Spill
.LBB45_49:                              #   in Loop: Header=BB45_44 Depth=2
	movb	-2071(%rbp), %al        # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
                                        # kill: def $cl killed $cl killed $ecx
	movb	-2070(%rbp), %al        # 1-byte Reload
	movsbl	%al, %edi
	movsbl	%cl, %esi
	callq	safe_mul_func_int8_t_s_s
	movsbl	%al, %edx
	andl	-620(%rbp), %edx
	movl	%edx, -620(%rbp)
# %bb.50:                               #   in Loop: Header=BB45_44 Depth=2
	movl	g_129, %eax
	subl	$1, %eax
	movl	%eax, g_129
	jmp	.LBB45_44
.LBB45_51:                              #   in Loop: Header=BB45_40 Depth=1
	jmp	.LBB45_52
.LBB45_52:                              #   in Loop: Header=BB45_40 Depth=1
	movl	-12(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB45_40
.LBB45_53:
	jmp	.LBB45_54
.LBB45_54:
	movq	g_202, %rax
	movl	(%rax), %ecx
	movq	-712(%rbp), %rax
	movl	%ecx, (%rax)
	jmp	.LBB45_61
.LBB45_55:
	movabsq	$g_112, %rax
	addq	$16, %rax
	movabsq	$.L__const.func_97.l_771, %rcx
	leaq	-1952(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	movl	$112, %edx
	movq	%rax, -2080(%rbp)       # 8-byte Spill
	callq	memcpy
	movq	-2080(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1960(%rbp)
	movl	$-780807691, -620(%rbp) # imm = 0xD175D1F5
	movsbl	-13(%rbp), %r8d
	movl	%r8d, -1900(%rbp)
	movl	$13, g_118
# %bb.56:
	cmpl	$23, g_118
	je	.LBB45_60
# %bb.57:
	leaq	-620(%rbp), %rax
	movq	%rax, -1976(%rbp)
	cmpl	$0, -12(%rbp)
	je	.LBB45_59
# %bb.58:
	jmp	.LBB45_60
.LBB45_59:
	movq	-1960(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB45_63
.LBB45_60:
	jmp	.LBB45_61
.LBB45_61:
	jmp	.LBB45_62
.LBB45_62:
	movq	-456(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB45_63:
	movq	-8(%rbp), %rax
	addq	$2080, %rsp             # imm = 0x820
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end45:
	.size	func_97, .Lfunc_end45-func_97
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function safe_div_func_int32_t_s_s
	.type	safe_div_func_int32_t_s_s,@function
safe_div_func_int32_t_s_s:              # @safe_div_func_int32_t_s_s
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$0, -8(%rbp)
	je	.LBB46_3
# %bb.1:
	cmpl	$-2147483648, -4(%rbp)  # imm = 0x80000000
	jne	.LBB46_4
# %bb.2:
	cmpl	$-1, -8(%rbp)
	jne	.LBB46_4
.LBB46_3:
	movl	-4(%rbp), %eax
	movl	%eax, -12(%rbp)         # 4-byte Spill
	jmp	.LBB46_5
.LBB46_4:
	movl	-4(%rbp), %eax
	cltd
	idivl	-8(%rbp)
	movl	%eax, -12(%rbp)         # 4-byte Spill
.LBB46_5:
	movl	-12(%rbp), %eax         # 4-byte Reload
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end46:
	.size	safe_div_func_int32_t_s_s, .Lfunc_end46-safe_div_func_int32_t_s_s
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function safe_div_func_uint32_t_u_u
	.type	safe_div_func_uint32_t_u_u,@function
safe_div_func_uint32_t_u_u:             # @safe_div_func_uint32_t_u_u
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jne	.LBB47_2
# %bb.1:
	movl	-4(%rbp), %eax
	movl	%eax, -12(%rbp)         # 4-byte Spill
	jmp	.LBB47_3
.LBB47_2:
	movl	-4(%rbp), %eax
	xorl	%edx, %edx
	divl	-8(%rbp)
	movl	%eax, -12(%rbp)         # 4-byte Spill
.LBB47_3:
	movl	-12(%rbp), %eax         # 4-byte Reload
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end47:
	.size	safe_div_func_uint32_t_u_u, .Lfunc_end47-safe_div_func_uint32_t_u_u
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function safe_div_func_int64_t_s_s
	.type	safe_div_func_int64_t_s_s,@function
safe_div_func_int64_t_s_s:              # @safe_div_func_int64_t_s_s
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB48_3
# %bb.1:
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	cmpq	%rax, -8(%rbp)
	jne	.LBB48_4
# %bb.2:
	cmpq	$-1, -16(%rbp)
	jne	.LBB48_4
.LBB48_3:
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB48_5
.LBB48_4:
	movq	-8(%rbp), %rax
	cqto
	idivq	-16(%rbp)
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB48_5:
	movq	-24(%rbp), %rax         # 8-byte Reload
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end48:
	.size	safe_div_func_int64_t_s_s, .Lfunc_end48-safe_div_func_int64_t_s_s
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function safe_add_func_uint64_t_u_u
	.type	safe_add_func_uint64_t_u_u,@function
safe_add_func_uint64_t_u_u:             # @safe_add_func_uint64_t_u_u
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	addq	-16(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end49:
	.size	safe_add_func_uint64_t_u_u, .Lfunc_end49-safe_add_func_uint64_t_u_u
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function safe_add_func_int8_t_s_s
	.type	safe_add_func_int8_t_s_s,@function
safe_add_func_int8_t_s_s:               # @safe_add_func_int8_t_s_s
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
                                        # kill: def $sil killed $sil killed $esi
                                        # kill: def $dil killed $dil killed $edi
	movb	%dil, -1(%rbp)
	movb	%sil, -2(%rbp)
	movsbl	-1(%rbp), %eax
	movsbl	-2(%rbp), %ecx
	addl	%ecx, %eax
                                        # kill: def $al killed $al killed $eax
	movsbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end50:
	.size	safe_add_func_int8_t_s_s, .Lfunc_end50-safe_add_func_int8_t_s_s
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function safe_sub_func_uint64_t_u_u
	.type	safe_sub_func_uint64_t_u_u,@function
safe_sub_func_uint64_t_u_u:             # @safe_sub_func_uint64_t_u_u
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	subq	-16(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end51:
	.size	safe_sub_func_uint64_t_u_u, .Lfunc_end51-safe_sub_func_uint64_t_u_u
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function safe_lshift_func_int8_t_s_u
	.type	safe_lshift_func_int8_t_s_u,@function
safe_lshift_func_int8_t_s_u:            # @safe_lshift_func_int8_t_s_u
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
                                        # kill: def $dil killed $dil killed $edi
	movb	%dil, -1(%rbp)
	movl	%esi, -8(%rbp)
	movsbl	-1(%rbp), %eax
	cmpl	$0, %eax
	jl	.LBB52_3
# %bb.1:
	cmpl	$32, -8(%rbp)
	jae	.LBB52_3
# %bb.2:
	movsbl	-1(%rbp), %eax
	movl	-8(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	movl	$127, %edx
	sarl	%cl, %edx
	cmpl	%edx, %eax
	jle	.LBB52_4
.LBB52_3:
	movsbl	-1(%rbp), %eax
	movl	%eax, -12(%rbp)         # 4-byte Spill
	jmp	.LBB52_5
.LBB52_4:
	movsbl	-1(%rbp), %eax
	movl	-8(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	shll	%cl, %eax
	movl	%eax, -12(%rbp)         # 4-byte Spill
.LBB52_5:
	movl	-12(%rbp), %eax         # 4-byte Reload
                                        # kill: def $al killed $al killed $eax
	movsbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end52:
	.size	safe_lshift_func_int8_t_s_u, .Lfunc_end52-safe_lshift_func_int8_t_s_u
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function safe_unary_minus_func_uint64_t_u
	.type	safe_unary_minus_func_uint64_t_u,@function
safe_unary_minus_func_uint64_t_u:       # @safe_unary_minus_func_uint64_t_u
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	subq	-8(%rbp), %rcx
	movq	%rcx, %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end53:
	.size	safe_unary_minus_func_uint64_t_u, .Lfunc_end53-safe_unary_minus_func_uint64_t_u
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function safe_mod_func_int8_t_s_s
	.type	safe_mod_func_int8_t_s_s,@function
safe_mod_func_int8_t_s_s:               # @safe_mod_func_int8_t_s_s
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
                                        # kill: def $sil killed $sil killed $esi
                                        # kill: def $dil killed $dil killed $edi
	movb	%dil, -1(%rbp)
	movb	%sil, -2(%rbp)
	movsbl	-2(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB54_3
# %bb.1:
	movsbl	-1(%rbp), %eax
	cmpl	$-128, %eax
	jne	.LBB54_4
# %bb.2:
	movsbl	-2(%rbp), %eax
	cmpl	$-1, %eax
	jne	.LBB54_4
.LBB54_3:
	movsbl	-1(%rbp), %eax
	movl	%eax, -8(%rbp)          # 4-byte Spill
	jmp	.LBB54_5
.LBB54_4:
	movsbl	-1(%rbp), %eax
	movsbl	-2(%rbp), %ecx
	cltd
	idivl	%ecx
	movl	%edx, -8(%rbp)          # 4-byte Spill
.LBB54_5:
	movl	-8(%rbp), %eax          # 4-byte Reload
                                        # kill: def $al killed $al killed $eax
	movsbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end54:
	.size	safe_mod_func_int8_t_s_s, .Lfunc_end54-safe_mod_func_int8_t_s_s
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function safe_rshift_func_uint16_t_u_u
	.type	safe_rshift_func_uint16_t_u_u,@function
safe_rshift_func_uint16_t_u_u:          # @safe_rshift_func_uint16_t_u_u
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
                                        # kill: def $di killed $di killed $edi
	movw	%di, -2(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$32, -8(%rbp)
	jb	.LBB55_2
# %bb.1:
	movzwl	-2(%rbp), %eax
	movl	%eax, -12(%rbp)         # 4-byte Spill
	jmp	.LBB55_3
.LBB55_2:
	movzwl	-2(%rbp), %eax
	movl	-8(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	sarl	%cl, %eax
	movl	%eax, -12(%rbp)         # 4-byte Spill
.LBB55_3:
	movl	-12(%rbp), %eax         # 4-byte Reload
                                        # kill: def $ax killed $ax killed $eax
	movzwl	%ax, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end55:
	.size	safe_rshift_func_uint16_t_u_u, .Lfunc_end55-safe_rshift_func_uint16_t_u_u
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function safe_sub_func_uint32_t_u_u
	.type	safe_sub_func_uint32_t_u_u,@function
safe_sub_func_uint32_t_u_u:             # @safe_sub_func_uint32_t_u_u
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	subl	-8(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end56:
	.size	safe_sub_func_uint32_t_u_u, .Lfunc_end56-safe_sub_func_uint32_t_u_u
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function crc32_8bytes
	.type	crc32_8bytes,@function
crc32_8bytes:                           # @crc32_8bytes
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	shrq	$0, %rax
	andq	$255, %rax
                                        # kill: def $al killed $al killed $rax
	movzbl	%al, %edi
	callq	crc32_byte
	movq	-8(%rbp), %rcx
	shrq	$8, %rcx
	andq	$255, %rcx
                                        # kill: def $cl killed $cl killed $rcx
	movzbl	%cl, %edi
	callq	crc32_byte
	movq	-8(%rbp), %rdx
	shrq	$16, %rdx
	andq	$255, %rdx
                                        # kill: def $dl killed $dl killed $rdx
	movzbl	%dl, %edi
	callq	crc32_byte
	movq	-8(%rbp), %rsi
	shrq	$24, %rsi
	andq	$255, %rsi
                                        # kill: def $sil killed $sil killed $rsi
	movzbl	%sil, %edi
	callq	crc32_byte
	movq	-8(%rbp), %r8
	shrq	$32, %r8
	andq	$255, %r8
                                        # kill: def $r8b killed $r8b killed $r8
	movzbl	%r8b, %edi
	callq	crc32_byte
	movq	-8(%rbp), %r9
	shrq	$40, %r9
	andq	$255, %r9
                                        # kill: def $r9b killed $r9b killed $r9
	movzbl	%r9b, %edi
	callq	crc32_byte
	movq	-8(%rbp), %r10
	shrq	$48, %r10
	andq	$255, %r10
                                        # kill: def $r10b killed $r10b killed $r10
	movzbl	%r10b, %edi
	callq	crc32_byte
	movq	-8(%rbp), %r11
	shrq	$56, %r11
	andq	$255, %r11
                                        # kill: def $r11b killed $r11b killed $r11
	movzbl	%r11b, %edi
	callq	crc32_byte
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end57:
	.size	crc32_8bytes, .Lfunc_end57-crc32_8bytes
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function crc32_byte
	.type	crc32_byte,@function
crc32_byte:                             # @crc32_byte
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
                                        # kill: def $dil killed $dil killed $edi
	movb	%dil, -1(%rbp)
	movl	crc32_context, %eax
	shrl	$8, %eax
	andl	$16777215, %eax         # imm = 0xFFFFFF
	movl	crc32_context, %ecx
	movzbl	-1(%rbp), %edx
	xorl	%edx, %ecx
	andl	$255, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %esi
	xorl	crc32_tab(,%rsi,4), %eax
	movl	%eax, crc32_context
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end58:
	.size	crc32_byte, .Lfunc_end58-crc32_byte
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"1"
	.size	.L.str, 2

	.type	g_4,@object             # @g_4
	.local	g_4
	.comm	g_4,40,16
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"g_4[i]"
	.size	.L.str.1, 7

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"index = [%d]\n"
	.size	.L.str.2, 14

	.type	g_17,@object            # @g_17
	.data
	.p2align	3
g_17:
	.quad	-2068448871956563794    # 0xe34b64b5c6f8b8ae
	.size	g_17, 8

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"g_17"
	.size	.L.str.3, 5

	.type	g_45,@object            # @g_45
	.data
	.p2align	1
g_45:
	.short	1                       # 0x1
	.size	g_45, 2

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"g_45"
	.size	.L.str.4, 5

	.type	g_58,@object            # @g_58
	.data
	.p2align	2
g_58:
	.long	2147517830              # 0x80008586
	.size	g_58, 4

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"g_58"
	.size	.L.str.5, 5

	.type	g_73,@object            # @g_73
	.data
	.p2align	4
g_73:
	.long	7                       # 0x7
	.long	1813196101              # 0x6c132d45
	.long	4294967295              # 0xffffffff
	.long	2242543481              # 0x85aa7f79
	.long	1813196101              # 0x6c132d45
	.long	4294967287              # 0xfffffff7
	.long	1813196101              # 0x6c132d45
	.long	2242543481              # 0x85aa7f79
	.long	4294967295              # 0xffffffff
	.long	1813196101              # 0x6c132d45
	.long	7                       # 0x7
	.long	2132024410              # 0x7f141c5a
	.long	0                       # 0x0
	.long	2242543481              # 0x85aa7f79
	.long	2132024410              # 0x7f141c5a
	.long	6                       # 0x6
	.long	1813196101              # 0x6c132d45
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1813196101              # 0x6c132d45
	.long	6                       # 0x6
	.long	1813196101              # 0x6c132d45
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1813196101              # 0x6c132d45
	.long	6                       # 0x6
	.long	2132024410              # 0x7f141c5a
	.long	2242543481              # 0x85aa7f79
	.long	0                       # 0x0
	.long	2132024410              # 0x7f141c5a
	.long	7                       # 0x7
	.long	1813196101              # 0x6c132d45
	.long	4294967295              # 0xffffffff
	.long	2242543481              # 0x85aa7f79
	.long	1813196101              # 0x6c132d45
	.long	4294967287              # 0xfffffff7
	.long	4294967294              # 0xfffffffe
	.long	2132024410              # 0x7f141c5a
	.long	1813196101              # 0x6c132d45
	.long	4294967294              # 0xfffffffe
	.long	3556079387              # 0xd3f5771b
	.long	502932376               # 0x1dfa2398
	.long	1386568907              # 0x52a55ccb
	.long	2132024410              # 0x7f141c5a
	.long	502932376               # 0x1dfa2398
	.long	4294967292              # 0xfffffffc
	.long	4294967294              # 0xfffffffe
	.long	1386568907              # 0x52a55ccb
	.long	1386568907              # 0x52a55ccb
	.long	4294967294              # 0xfffffffe
	.long	4294967292              # 0xfffffffc
	.long	4294967294              # 0xfffffffe
	.long	1386568907              # 0x52a55ccb
	.long	1386568907              # 0x52a55ccb
	.long	4294967294              # 0xfffffffe
	.long	4294967292              # 0xfffffffc
	.long	502932376               # 0x1dfa2398
	.long	2132024410              # 0x7f141c5a
	.long	1386568907              # 0x52a55ccb
	.long	502932376               # 0x1dfa2398
	.long	3556079387              # 0xd3f5771b
	.long	4294967294              # 0xfffffffe
	.long	1813196101              # 0x6c132d45
	.long	2132024410              # 0x7f141c5a
	.long	4294967294              # 0xfffffffe
	.long	9                       # 0x9
	.long	4294967294              # 0xfffffffe
	.long	2132024410              # 0x7f141c5a
	.long	1813196101              # 0x6c132d45
	.long	4294967294              # 0xfffffffe
	.size	g_73, 280

	.type	.L.str.6,@object        # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"g_73[i][j]"
	.size	.L.str.6, 11

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"index = [%d][%d]\n"
	.size	.L.str.7, 18

	.type	g_96,@object            # @g_96
	.data
	.p2align	2
g_96:
	.long	1573340984              # 0x5dc74738
	.size	g_96, 4

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"g_96"
	.size	.L.str.8, 5

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"g_104"
	.size	.L.str.9, 6

	.type	g_108,@object           # @g_108
	.data
	.p2align	2
g_108:
	.long	174874534               # 0xa6c5fa6
	.size	g_108, 4

	.type	.L.str.10,@object       # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"g_108"
	.size	.L.str.10, 6

	.type	g_111,@object           # @g_111
	.data
	.p2align	1
g_111:
	.zero	2,255
	.size	g_111, 2

	.type	.L.str.11,@object       # @.str.11
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.11:
	.asciz	"g_111[i]"
	.size	.L.str.11, 9

	.type	g_112,@object           # @g_112
	.data
	.p2align	4
g_112:
	.long	2947479981              # 0xafaef9ad
	.long	0                       # 0x0
	.long	2947479981              # 0xafaef9ad
	.long	2947479981              # 0xafaef9ad
	.long	0                       # 0x0
	.long	2947479981              # 0xafaef9ad
	.long	2947479981              # 0xafaef9ad
	.size	g_112, 28

	.type	.L.str.12,@object       # @.str.12
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.12:
	.asciz	"g_112[i]"
	.size	.L.str.12, 9

	.type	g_115,@object           # @g_115
	.data
	.p2align	2
g_115:
	.long	2794675835              # 0xa6935e7b
	.size	g_115, 4

	.type	.L.str.13,@object       # @.str.13
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.13:
	.asciz	"g_115"
	.size	.L.str.13, 6

	.type	g_118,@object           # @g_118
	.data
	.p2align	2
g_118:
	.long	2112669547              # 0x7decc76b
	.size	g_118, 4

	.type	.L.str.14,@object       # @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"g_118"
	.size	.L.str.14, 6

	.type	g_119,@object           # @g_119
	.data
	.p2align	3
g_119:
	.quad	-5878280740500232074    # 0xae6c26cf9c76a876
	.size	g_119, 8

	.type	.L.str.15,@object       # @.str.15
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.15:
	.asciz	"g_119"
	.size	.L.str.15, 6

	.type	g_129,@object           # @g_129
	.data
	.p2align	2
g_129:
	.long	4                       # 0x4
	.size	g_129, 4

	.type	.L.str.16,@object       # @.str.16
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.16:
	.asciz	"g_129"
	.size	.L.str.16, 6

	.type	g_161,@object           # @g_161
	.data
	.p2align	4
g_161:
	.ascii	"@\001\001\371\000\000@@"
	.ascii	"\334\371\000\000\371\334\000\001"
	.ascii	"\371\334\000\0012\000\3442"
	.ascii	"\001@#\001\000\346\000\001"
	.ascii	"\001\000\001\000\002\000\000@"
	.asciz	"\000\000\000\371\0022\002"
	.asciz	"\000@F\002\002F@"
	.ascii	"\001\001\0002\000\334\001@"
	.ascii	"\0012\000\3442\334\002\334"
	.ascii	"\371\001\340\001\371F\344\371"
	.ascii	"\334@\001\334\0002\000\001"
	.ascii	"@\000\001\344\000\000\344\001"
	.asciz	"\000\000\340\371\377\346\002"
	.asciz	"\000@\000\000\002\000\001"
	.ascii	"@\334\000\371\000\334@\001"
	.ascii	"\001\371F\344\371\000\002\001"
	.ascii	"2\001\000\334\371\000\000\371"
	.ascii	"\001\001\001\001\0002\000\334"
	.ascii	"@\000#\344\002\000\0002"
	.ascii	"\001\002\001F\334F\001\002"
	.ascii	"\002\346\340\000\001\3402\001"
	.ascii	"2\001\377\000\002@22"
	.ascii	"#\000\340\340\000#\001\001"
	.ascii	"\000#\001\001F\340\000F"
	.ascii	"\0012\371\001\002\344\002\001"
	.ascii	"\346\002\346\340\000\001\3402"
	.ascii	"\002\001\001\000\000F\000\001"
	.ascii	"\0022\002\000\000\0022\002"
	.ascii	"\346\001\001F\002#\3462"
	.ascii	"\001F\340\000F#\000#"
	.asciz	"\000\001\000\001\000\002\000"
	.ascii	"#2\346#\002F\001\001"
	.size	g_161, 256

	.type	.L.str.17,@object       # @.str.17
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.17:
	.asciz	"g_161[i][j][k]"
	.size	.L.str.17, 15

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"index = [%d][%d][%d]\n"
	.size	.L.str.18, 22

	.type	g_187,@object           # @g_187
	.data
	.p2align	3
g_187:
	.quad	580833802685259739      # 0x80f894422981fdb
	.size	g_187, 8

	.type	.L.str.19,@object       # @.str.19
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.19:
	.asciz	"g_187"
	.size	.L.str.19, 6

	.type	g_205,@object           # @g_205
	.data
	.p2align	2
g_205:
	.long	1                       # 0x1
	.size	g_205, 4

	.type	.L.str.20,@object       # @.str.20
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.20:
	.asciz	"g_205"
	.size	.L.str.20, 6

	.type	g_242,@object           # @g_242
	.data
	.p2align	1
g_242:
	.short	6                       # 0x6
	.size	g_242, 2

	.type	.L.str.21,@object       # @.str.21
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.21:
	.asciz	"g_242"
	.size	.L.str.21, 6

	.type	g_265,@object           # @g_265
	.data
g_265:
	.byte	130                     # 0x82
	.size	g_265, 1

	.type	.L.str.22,@object       # @.str.22
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.22:
	.asciz	"g_265"
	.size	.L.str.22, 6

	.type	g_307,@object           # @g_307
	.data
	.p2align	3
g_307:
	.quad	1                       # 0x1
	.size	g_307, 8

	.type	.L.str.23,@object       # @.str.23
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.23:
	.asciz	"g_307"
	.size	.L.str.23, 6

	.type	g_442,@object           # @g_442
	.data
	.p2align	4
g_442:
	.quad	-9217803080606598015    # 0x8013c8efaaf13c81
	.quad	-9217803080606598015    # 0x8013c8efaaf13c81
	.quad	-9217803080606598015    # 0x8013c8efaaf13c81
	.quad	-9217803080606598015    # 0x8013c8efaaf13c81
	.quad	-9217803080606598015    # 0x8013c8efaaf13c81
	.quad	-9217803080606598015    # 0x8013c8efaaf13c81
	.quad	-9217803080606598015    # 0x8013c8efaaf13c81
	.quad	-9217803080606598015    # 0x8013c8efaaf13c81
	.quad	-9217803080606598015    # 0x8013c8efaaf13c81
	.quad	-9217803080606598015    # 0x8013c8efaaf13c81
	.size	g_442, 80

	.type	.L.str.24,@object       # @.str.24
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.24:
	.asciz	"g_442[i]"
	.size	.L.str.24, 9

	.type	g_894,@object           # @g_894
	.data
	.p2align	3
g_894:
	.quad	-6447180495342931730    # 0xa687037f8441f0ee
	.size	g_894, 8

	.type	.L.str.25,@object       # @.str.25
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.25:
	.asciz	"g_894"
	.size	.L.str.25, 6

	.type	g_895,@object           # @g_895
	.data
	.p2align	2
g_895:
	.long	3449582239              # 0xcd9c729f
	.size	g_895, 4

	.type	.L.str.26,@object       # @.str.26
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.26:
	.asciz	"g_895"
	.size	.L.str.26, 6

	.type	g_1036,@object          # @g_1036
	.data
	.p2align	1
g_1036:
	.short	16369                   # 0x3ff1
	.size	g_1036, 2

	.type	.L.str.27,@object       # @.str.27
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.27:
	.asciz	"g_1036"
	.size	.L.str.27, 7

	.type	g_1131,@object          # @g_1131
	.data
g_1131:
	.byte	213                     # 0xd5
	.size	g_1131, 1

	.type	.L.str.28,@object       # @.str.28
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.28:
	.asciz	"g_1131"
	.size	.L.str.28, 7

	.type	g_1143,@object          # @g_1143
	.data
	.p2align	2
g_1143:
	.long	4294967295              # 0xffffffff
	.size	g_1143, 4

	.type	.L.str.29,@object       # @.str.29
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.29:
	.asciz	"g_1143"
	.size	.L.str.29, 7

	.type	g_1196,@object          # @g_1196
	.data
	.p2align	4
g_1196:
	.short	65531                   # 0xfffb
	.short	65531                   # 0xfffb
	.short	65531                   # 0xfffb
	.short	65531                   # 0xfffb
	.short	65531                   # 0xfffb
	.short	65531                   # 0xfffb
	.short	65531                   # 0xfffb
	.short	65531                   # 0xfffb
	.short	65531                   # 0xfffb
	.short	65531                   # 0xfffb
	.size	g_1196, 20

	.type	.L.str.30,@object       # @.str.30
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.30:
	.asciz	"g_1196[i][j]"
	.size	.L.str.30, 13

	.type	g_1295,@object          # @g_1295
	.data
	.p2align	2
g_1295:
	.long	2273761881              # 0x8786da59
	.size	g_1295, 4

	.type	.L.str.31,@object       # @.str.31
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.31:
	.asciz	"g_1295"
	.size	.L.str.31, 7

	.type	g_1299,@object          # @g_1299
	.data
g_1299:
	.byte	119                     # 0x77
	.size	g_1299, 1

	.type	.L.str.32,@object       # @.str.32
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.32:
	.asciz	"g_1299"
	.size	.L.str.32, 7

	.type	g_1362,@object          # @g_1362
	.local	g_1362
	.comm	g_1362,4,4
	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"g_1362"
	.size	.L.str.33, 7

	.type	g_1399,@object          # @g_1399
	.data
	.p2align	3
g_1399:
	.quad	-5050406226464559521    # 0xb9e95a4b9428ae5f
	.size	g_1399, 8

	.type	.L.str.34,@object       # @.str.34
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.34:
	.asciz	"g_1399"
	.size	.L.str.34, 7

	.type	g_1633,@object          # @g_1633
	.data
	.p2align	3
g_1633:
	.quad	2567663786782206115     # 0x23a22c9c29c9a8a3
	.size	g_1633, 8

	.type	.L.str.35,@object       # @.str.35
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.35:
	.asciz	"g_1633"
	.size	.L.str.35, 7

	.type	g_1642,@object          # @g_1642
	.data
	.p2align	1
g_1642:
	.short	65535                   # 0xffff
	.size	g_1642, 2

	.type	.L.str.36,@object       # @.str.36
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.36:
	.asciz	"g_1642"
	.size	.L.str.36, 7

	.type	crc32_context,@object   # @crc32_context
	.data
	.p2align	2
crc32_context:
	.long	4294967295              # 0xffffffff
	.size	crc32_context, 4

	.type	temp_var,@object        # @temp_var
	.comm	temp_var,40,16
	.type	crc32_tab,@object       # @crc32_tab
	.local	crc32_tab
	.comm	crc32_tab,1024,16
	.type	.L__const.func_1.l_18,@object # @__const.func_1.l_18
	.section	.rodata,"a",@progbits
	.p2align	4
.L__const.func_1.l_18:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.size	.L__const.func_1.l_18, 192

	.type	g_1622,@object          # @g_1622
	.data
	.p2align	3
g_1622:
	.quad	g_118
	.size	g_1622, 8

	.type	g_1129,@object          # @g_1129
	.p2align	3
g_1129:
	.quad	g_1130
	.size	g_1129, 8

	.type	g_731,@object           # @g_731
	.p2align	3
g_731:
	.quad	g_111
	.size	g_731, 8

	.type	.L__const.func_13.l_1889,@object # @__const.func_13.l_1889
	.section	.rodata,"a",@progbits
	.p2align	4
.L__const.func_13.l_1889:
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.size	.L__const.func_13.l_1889, 80

	.type	g_201,@object           # @g_201
	.data
	.p2align	4
g_201:
	.quad	g_202
	.quad	g_202
	.size	g_201, 16

	.type	g_170,@object           # @g_170
	.p2align	3
g_170:
	.quad	g_171
	.size	g_170, 8

	.type	g_669,@object           # @g_669
	.p2align	3
g_669:
	.quad	g_670+160
	.size	g_669, 8

	.type	g_1370,@object          # @g_1370
	.p2align	3
g_1370:
	.quad	g_201+8
	.size	g_1370, 8

	.type	g_1700,@object          # @g_1700
	.p2align	3
g_1700:
	.quad	g_1633
	.size	g_1700, 8

	.type	.L__const.func_13.l_1908,@object # @__const.func_13.l_1908
	.section	.rodata,"a",@progbits
	.p2align	4
.L__const.func_13.l_1908:
	.quad	g_58
	.quad	g_58
	.quad	g_58
	.quad	g_58
	.quad	g_58
	.quad	g_58
	.quad	g_58
	.quad	g_58
	.quad	g_58
	.quad	g_58
	.quad	g_58
	.quad	g_58
	.quad	g_58
	.quad	g_58
	.quad	g_58
	.quad	g_58
	.quad	g_58
	.quad	g_58
	.quad	g_58
	.quad	g_58
	.quad	g_58
	.quad	g_58
	.quad	g_58
	.quad	g_58
	.size	.L__const.func_13.l_1908, 192

	.type	g_1877,@object          # @g_1877
	.data
	.p2align	4
g_1877:
	.quad	g_1878
	.zero	8
	.quad	g_1878
	.zero	8
	.quad	g_1878
	.quad	g_1878
	.quad	g_1878
	.quad	g_1878
	.quad	g_1878
	.quad	g_1878
	.quad	g_1878
	.quad	g_1878
	.zero	8
	.quad	g_1878
	.zero	8
	.quad	g_1878
	.quad	g_1878
	.quad	g_1878
	.quad	g_1878
	.quad	g_1878
	.quad	g_1878
	.quad	g_1878
	.quad	g_1878
	.zero	8
	.quad	g_1878
	.zero	8
	.quad	g_1878
	.size	g_1877, 216

	.type	g_1640,@object          # @g_1640
	.p2align	3
g_1640:
	.quad	g_1641
	.size	g_1640, 8

	.type	g_1029,@object          # @g_1029
	.p2align	3
g_1029:
	.quad	g_1030
	.size	g_1029, 8

	.type	.L__const.func_13.l_2004,@object # @__const.func_13.l_2004
	.section	.rodata,"a",@progbits
	.p2align	4
.L__const.func_13.l_2004:
	.long	2416181662              # 0x9004019e
	.long	0                       # 0x0
	.long	3478485907              # 0xcf557b93
	.long	4294967295              # 0xffffffff
	.long	258286043               # 0xf6521db
	.long	2218959933              # 0x8442a43d
	.long	6                       # 0x6
	.long	535840617               # 0x1ff04769
	.long	619534093               # 0x24ed570d
	.long	2525683738              # 0x968ae01a
	.long	1                       # 0x1
	.long	3314474986              # 0xc58edfea
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	4109203187              # 0xf4ed76f3
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4109203187              # 0xf4ed76f3
	.long	4                       # 0x4
	.long	100791392               # 0x601f460
	.long	4294967288              # 0xfffffff8
	.long	974877126               # 0x3a1b71c6
	.long	3482017945              # 0xcf8b6099
	.long	1448526362              # 0x5656c21a
	.long	3490899821              # 0xd012e76d
	.long	3482017945              # 0xcf8b6099
	.long	4294967295              # 0xffffffff
	.long	6                       # 0x6
	.long	3459949152              # 0xce3aa260
	.long	1130325412              # 0x435f65a4
	.long	4                       # 0x4
	.long	534564464               # 0x1fdcce70
	.long	2416181662              # 0x9004019e
	.long	2917476965              # 0xade52a65
	.long	4294967288              # 0xfffffff8
	.long	3250786822              # 0xc1c31206
	.long	0                       # 0x0
	.long	100791392               # 0x601f460
	.long	2525683738              # 0x968ae01a
	.long	2917476965              # 0xade52a65
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	258286043               # 0xf6521db
	.long	46579154                # 0x2c6bdd2
	.long	1104798639              # 0x41d9e3af
	.long	46579154                # 0x2c6bdd2
	.long	4294967288              # 0xfffffff8
	.long	619534093               # 0x24ed570d
	.long	619534093               # 0x24ed570d
	.long	4294967288              # 0xfffffff8
	.long	1                       # 0x1
	.long	3314474986              # 0xc58edfea
	.long	2392342420              # 0x8e983f94
	.long	4282217746              # 0xff3d7512
	.long	0                       # 0x0
	.long	4109203187              # 0xf4ed76f3
	.long	3459949152              # 0xce3aa260
	.long	4294967295              # 0xffffffff
	.long	4109203187              # 0xf4ed76f3
	.long	369082207               # 0x15ffbf5f
	.long	1                       # 0x1
	.long	169106542               # 0xa145c6e
	.long	4294967287              # 0xfffffff7
	.long	1053893774              # 0x3ed1248e
	.long	535840617               # 0x1ff04769
	.long	1                       # 0x1
	.long	2392342420              # 0x8e983f94
	.long	3269999004              # 0xc2e8399c
	.long	4282217746              # 0xff3d7512
	.long	3459949152              # 0xce3aa260
	.long	6                       # 0x6
	.long	534564464               # 0x1fdcce70
	.long	3681366937              # 0xdb6d3399
	.long	46579154                # 0x2c6bdd2
	.long	2040001626              # 0x7997f45a
	.long	1448526362              # 0x5656c21a
	.long	2917476965              # 0xade52a65
	.long	4294967290              # 0xfffffffa
	.long	3482017945              # 0xcf8b6099
	.long	4294967290              # 0xfffffffa
	.long	2917476965              # 0xade52a65
	.long	46579154                # 0x2c6bdd2
	.long	46579154                # 0x2c6bdd2
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	5                       # 0x5
	.long	2416181662              # 0x9004019e
	.long	4294967295              # 0xffffffff
	.long	4294967290              # 0xfffffffa
	.long	2525683738              # 0x968ae01a
	.long	4294967288              # 0xfffffff8
	.long	4294967290              # 0xfffffffa
	.long	2040001626              # 0x7997f45a
	.long	3482017945              # 0xcf8b6099
	.long	534564464               # 0x1fdcce70
	.long	4294967295              # 0xffffffff
	.long	4282217746              # 0xff3d7512
	.long	4                       # 0x4
	.long	0                       # 0x0
	.long	1104798639              # 0x41d9e3af
	.long	254503427               # 0xf2b6a03
	.long	4294967290              # 0xfffffffa
	.long	1                       # 0x1
	.long	1053893774              # 0x3ed1248e
	.long	2917476965              # 0xade52a65
	.long	3314474986              # 0xc58edfea
	.long	4294967295              # 0xffffffff
	.long	1                       # 0x1
	.long	6                       # 0x6
	.long	2840728460              # 0xa952138c
	.long	4294967295              # 0xffffffff
	.long	4282217746              # 0xff3d7512
	.long	4294967295              # 0xffffffff
	.long	2840728460              # 0xa952138c
	.long	6                       # 0x6
	.long	9                       # 0x9
	.long	2525683738              # 0x968ae01a
	.long	2716910607              # 0xa1f0c40f
	.long	3490899821              # 0xd012e76d
	.long	0                       # 0x0
	.long	1600841529              # 0x5f6ae739
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1587943352              # 0x5ea617b8
	.long	1130325412              # 0x435f65a4
	.long	1                       # 0x1
	.long	3681366937              # 0xdb6d3399
	.long	3269999004              # 0xc2e8399c
	.long	4282217746              # 0xff3d7512
	.long	2                       # 0x2
	.long	4294967287              # 0xfffffff7
	.long	2716910607              # 0xa1f0c40f
	.long	4294967290              # 0xfffffffa
	.long	202267674               # 0xc0e5c1a
	.long	2716910607              # 0xa1f0c40f
	.long	3250786822              # 0xc1c31206
	.long	2218959933              # 0x8442a43d
	.long	6                       # 0x6
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	1587943352              # 0x5ea617b8
	.long	3478485907              # 0xcf557b93
	.long	3478485907              # 0xcf557b93
	.long	2040001626              # 0x7997f45a
	.long	2                       # 0x2
	.long	1053893774              # 0x3ed1248e
	.long	2                       # 0x2
	.long	2040001626              # 0x7997f45a
	.long	4294967288              # 0xfffffff8
	.long	0                       # 0x0
	.long	3459949152              # 0xce3aa260
	.long	1104798639              # 0x41d9e3af
	.long	2995246907              # 0xb287d73b
	.long	4294967295              # 0xffffffff
	.long	254503427               # 0xf2b6a03
	.long	4294967295              # 0xffffffff
	.long	6                       # 0x6
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	9                       # 0x9
	.long	202267674               # 0xc0e5c1a
	.long	3250786822              # 0xc1c31206
	.long	974877126               # 0x3a1b71c6
	.long	2716910607              # 0xa1f0c40f
	.long	3459949152              # 0xce3aa260
	.long	4294967295              # 0xffffffff
	.long	46579154                # 0x2c6bdd2
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	369082207               # 0x15ffbf5f
	.long	2040001626              # 0x7997f45a
	.long	9                       # 0x9
	.long	1306621548              # 0x4de1766c
	.long	3314474986              # 0xc58edfea
	.long	4294967287              # 0xfffffff7
	.long	4294967287              # 0xfffffff7
	.long	3314474986              # 0xc58edfea
	.long	2218959933              # 0x8442a43d
	.long	4                       # 0x4
	.long	2218959933              # 0x8442a43d
	.long	3478485907              # 0xcf557b93
	.long	369082207               # 0x15ffbf5f
	.long	4294967295              # 0xffffffff
	.long	4089088808              # 0xf3ba8b28
	.long	2                       # 0x2
	.long	619534093               # 0x24ed570d
	.long	4294967295              # 0xffffffff
	.long	2917476965              # 0xade52a65
	.long	2040001626              # 0x7997f45a
	.long	535840617               # 0x1ff04769
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.long	4089088808              # 0xf3ba8b28
	.long	369082207               # 0x15ffbf5f
	.long	5                       # 0x5
	.long	4294967295              # 0xffffffff
	.long	1587943352              # 0x5ea617b8
	.long	9                       # 0x9
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	9                       # 0x9
	.long	4294967290              # 0xfffffffa
	.long	4294967287              # 0xfffffff7
	.long	974877126               # 0x3a1b71c6
	.long	6                       # 0x6
	.long	534564464               # 0x1fdcce70
	.long	4294967295              # 0xffffffff
	.long	3681366937              # 0xdb6d3399
	.long	3681366937              # 0xdb6d3399
	.long	4294967295              # 0xffffffff
	.long	534564464               # 0x1fdcce70
	.long	4294967290              # 0xfffffffa
	.long	1306621548              # 0x4de1766c
	.long	1600841529              # 0x5f6ae739
	.long	2525683738              # 0x968ae01a
	.long	1                       # 0x1
	.long	974877126               # 0x3a1b71c6
	.long	2917476965              # 0xade52a65
	.long	4294967295              # 0xffffffff
	.long	6                       # 0x6
	.long	2218959933              # 0x8442a43d
	.long	2995246907              # 0xb287d73b
	.long	4109203187              # 0xf4ed76f3
	.long	4294967295              # 0xffffffff
	.long	5                       # 0x5
	.long	1                       # 0x1
	.long	3250786822              # 0xc1c31206
	.long	4294967295              # 0xffffffff
	.long	2525683738              # 0x968ae01a
	.long	3314474986              # 0xc58edfea
	.long	4294967288              # 0xfffffff8
	.long	2                       # 0x2
	.long	1587943352              # 0x5ea617b8
	.long	5                       # 0x5
	.long	2840728460              # 0xa952138c
	.long	3681366937              # 0xdb6d3399
	.long	1104798639              # 0x41d9e3af
	.long	3478485907              # 0xcf557b93
	.long	3459949152              # 0xce3aa260
	.long	2716910607              # 0xa1f0c40f
	.long	2525683738              # 0x968ae01a
	.long	9                       # 0x9
	.long	9                       # 0x9
	.long	2525683738              # 0x968ae01a
	.long	2716910607              # 0xa1f0c40f
	.long	3490899821              # 0xd012e76d
	.size	.L__const.func_13.l_2004, 1008

	.type	g_1244,@object          # @g_1244
	.data
	.p2align	3
g_1244:
	.quad	g_118
	.size	g_1244, 8

	.type	g_668,@object           # @g_668
	.p2align	3
g_668:
	.quad	g_669
	.size	g_668, 8

	.type	.Lconstinit,@object     # @constinit
	.p2align	3
.Lconstinit:
	.quad	g_161+67
	.quad	g_161+93
	.quad	g_161+67
	.quad	g_161+153
	.quad	g_161+66
	.quad	0
	.quad	g_161+35
	.quad	g_161+35
	.quad	0
	.size	.Lconstinit, 72

	.type	.Lconstinit.37,@object  # @constinit.37
	.p2align	3
.Lconstinit.37:
	.quad	g_161+67
	.quad	g_161+93
	.quad	g_161+67
	.quad	g_161+153
	.quad	g_161+66
	.quad	0
	.quad	g_161+35
	.quad	g_161+35
	.quad	0
	.size	.Lconstinit.37, 72

	.type	g_1516,@object          # @g_1516
	.p2align	3
g_1516:
	.quad	g_1517
	.size	g_1516, 8

	.type	g_930,@object           # @g_930
	.local	g_930
	.comm	g_930,8,8
	.type	g_202,@object           # @g_202
	.p2align	3
g_202:
	.quad	g_58
	.size	g_202, 8

	.type	g_171,@object           # @g_171
	.local	g_171
	.comm	g_171,8,8
	.type	g_670,@object           # @g_670
	.p2align	4
g_670:
	.quad	0
	.quad	g_393
	.quad	g_393
	.quad	g_393
	.quad	g_393
	.quad	g_393
	.quad	g_393
	.quad	g_393
	.quad	g_393
	.quad	0
	.quad	g_393
	.quad	g_393
	.quad	0
	.quad	g_393
	.quad	g_393
	.quad	g_393
	.quad	g_393
	.quad	0
	.quad	g_393
	.quad	g_393
	.quad	g_393
	.quad	g_393
	.quad	0
	.quad	g_393
	.size	g_670, 192

	.type	g_393,@object           # @g_393
	.p2align	3
g_393:
	.quad	g_394+24
	.size	g_393, 8

	.type	g_394,@object           # @g_394
	.p2align	4
g_394:
	.quad	g_187
	.quad	g_187
	.quad	g_187
	.quad	g_187
	.size	g_394, 32

	.type	g_1369,@object          # @g_1369
	.p2align	4
g_1369:
	.quad	g_1370
	.quad	g_1370
	.quad	g_1370
	.quad	g_1370
	.quad	g_1370
	.quad	g_1370
	.quad	g_1370
	.quad	g_1370
	.quad	g_1370
	.size	g_1369, 72

	.type	.L__const.func_36.l_1718,@object # @__const.func_36.l_1718
	.section	.rodata,"a",@progbits
	.p2align	4
.L__const.func_36.l_1718:
	.long	3845381689              # 0xe533de39
	.long	4294967295              # 0xffffffff
	.long	964515843               # 0x397d5803
	.long	4294967295              # 0xffffffff
	.long	3845381689              # 0xe533de39
	.long	1                       # 0x1
	.long	4294967287              # 0xfffffff7
	.long	4294967295              # 0xffffffff
	.long	4294967287              # 0xfffffff7
	.long	4294967295              # 0xffffffff
	.long	4294967287              # 0xfffffff7
	.long	1                       # 0x1
	.long	3845381689              # 0xe533de39
	.long	4294967295              # 0xffffffff
	.long	964515843               # 0x397d5803
	.long	4294967295              # 0xffffffff
	.long	3845381689              # 0xe533de39
	.long	1                       # 0x1
	.long	4294967287              # 0xfffffff7
	.long	4294967295              # 0xffffffff
	.long	4294967287              # 0xfffffff7
	.long	4294967295              # 0xffffffff
	.long	4294967287              # 0xfffffff7
	.long	1                       # 0x1
	.long	3845381689              # 0xe533de39
	.long	4294967295              # 0xffffffff
	.long	964515843               # 0x397d5803
	.long	4294967295              # 0xffffffff
	.long	3845381689              # 0xe533de39
	.long	1                       # 0x1
	.long	4294967287              # 0xfffffff7
	.long	4294967295              # 0xffffffff
	.long	4294967287              # 0xfffffff7
	.long	4294967295              # 0xffffffff
	.long	4294967287              # 0xfffffff7
	.long	1                       # 0x1
	.long	3845381689              # 0xe533de39
	.long	4294967295              # 0xffffffff
	.long	964515843               # 0x397d5803
	.long	1                       # 0x1
	.long	4294967287              # 0xfffffff7
	.long	9                       # 0x9
	.long	964515843               # 0x397d5803
	.long	1                       # 0x1
	.long	964515843               # 0x397d5803
	.long	1                       # 0x1
	.long	964515843               # 0x397d5803
	.long	9                       # 0x9
	.size	.L__const.func_36.l_1718, 192

	.type	.L__const.func_36.l_1773,@object # @__const.func_36.l_1773
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.L__const.func_36.l_1773:
	.long	3422883007              # 0xcc050cbf
	.long	3422883007              # 0xcc050cbf
	.long	3422883007              # 0xcc050cbf
	.long	3422883007              # 0xcc050cbf
	.size	.L__const.func_36.l_1773, 16

	.type	.L__const.func_36.l_1799,@object # @__const.func_36.l_1799
	.section	.rodata,"a",@progbits
	.p2align	4
.L__const.func_36.l_1799:
	.quad	g_17
	.quad	g_17
	.quad	0
	.quad	g_1633
	.quad	g_307
	.quad	g_1633
	.quad	0
	.quad	g_17
	.quad	0
	.quad	g_1633
	.quad	g_307
	.quad	g_1399
	.quad	g_307
	.quad	0
	.quad	0
	.quad	g_17
	.quad	g_307
	.quad	g_1633
	.quad	g_307
	.quad	g_1633
	.quad	g_1633
	.quad	g_1633
	.quad	g_17
	.quad	g_17
	.quad	0
	.quad	g_1399
	.quad	0
	.quad	g_1633
	.quad	g_17
	.quad	g_17
	.quad	g_17
	.quad	g_1633
	.quad	0
	.quad	g_17
	.quad	g_307
	.quad	g_17
	.zero	24
	.quad	0
	.quad	g_307
	.quad	g_17
	.quad	g_307
	.quad	g_17
	.quad	0
	.quad	g_1399
	.quad	g_307
	.quad	g_17
	.quad	g_307
	.quad	g_17
	.quad	g_1633
	.quad	0
	.quad	g_17
	.quad	g_1633
	.zero	24
	.quad	g_17
	.quad	g_17
	.quad	g_1399
	.quad	g_17
	.quad	g_17
	.quad	0
	.quad	g_1633
	.quad	g_307
	.quad	g_1633
	.quad	0
	.quad	g_17
	.quad	0
	.quad	g_1633
	.quad	g_307
	.quad	g_1399
	.quad	g_307
	.quad	0
	.quad	0
	.quad	g_17
	.quad	g_307
	.quad	g_1633
	.quad	g_307
	.quad	g_1633
	.quad	g_1633
	.quad	g_1633
	.quad	g_17
	.quad	g_17
	.quad	0
	.quad	g_1399
	.quad	0
	.quad	g_1633
	.quad	g_17
	.quad	g_17
	.quad	g_17
	.quad	g_1633
	.quad	0
	.quad	g_17
	.quad	g_307
	.quad	g_17
	.zero	24
	.quad	0
	.quad	g_307
	.quad	g_17
	.quad	g_307
	.quad	g_17
	.quad	0
	.quad	g_1399
	.quad	g_307
	.quad	g_17
	.quad	g_307
	.quad	g_17
	.quad	g_1633
	.quad	0
	.quad	g_17
	.quad	g_1633
	.zero	24
	.quad	g_17
	.quad	g_17
	.quad	g_1399
	.quad	g_17
	.quad	g_17
	.quad	0
	.quad	g_1633
	.quad	g_307
	.quad	g_1633
	.quad	0
	.quad	g_17
	.quad	0
	.quad	g_1633
	.quad	g_307
	.quad	g_1399
	.quad	g_307
	.quad	0
	.quad	0
	.quad	g_17
	.quad	g_307
	.quad	g_1633
	.quad	g_307
	.quad	g_1633
	.quad	g_1633
	.quad	g_1633
	.quad	g_17
	.quad	g_17
	.quad	0
	.quad	g_1399
	.quad	0
	.quad	g_1633
	.quad	g_17
	.quad	g_17
	.quad	g_17
	.quad	g_1633
	.quad	0
	.quad	g_17
	.quad	g_307
	.quad	g_17
	.quad	g_17
	.quad	g_1633
	.quad	g_17
	.quad	g_17
	.quad	g_17
	.quad	g_1633
	.quad	g_307
	.quad	g_307
	.quad	g_1633
	.quad	g_17
	.quad	g_307
	.quad	g_17
	.quad	g_307
	.quad	g_1399
	.quad	0
	.quad	g_17
	.quad	g_1399
	.quad	g_307
	.quad	g_17
	.quad	g_17
	.quad	g_1633
	.quad	g_17
	.quad	g_1399
	.quad	g_17
	.quad	g_307
	.quad	g_1399
	.quad	g_17
	.quad	g_1633
	.quad	g_307
	.quad	g_1633
	.quad	g_17
	.quad	g_307
	.quad	g_17
	.quad	g_1399
	.quad	g_17
	.quad	g_17
	.quad	g_307
	.quad	g_1633
	.quad	g_1633
	.quad	g_1633
	.quad	g_307
	.quad	g_307
	.quad	g_307
	.quad	0
	.quad	0
	.quad	g_1399
	.quad	g_1399
	.quad	g_17
	.quad	g_17
	.quad	0
	.quad	g_1633
	.quad	g_1633
	.quad	g_1399
	.quad	g_1633
	.quad	g_307
	.quad	0
	.quad	g_17
	.quad	g_17
	.quad	g_307
	.quad	g_17
	.quad	g_17
	.quad	g_1633
	.quad	g_17
	.quad	g_17
	.quad	g_17
	.quad	g_1633
	.quad	g_307
	.quad	g_307
	.quad	g_1633
	.quad	g_17
	.quad	g_307
	.quad	g_17
	.quad	g_307
	.quad	g_1399
	.quad	0
	.quad	g_17
	.quad	g_1399
	.quad	g_307
	.quad	g_17
	.quad	g_17
	.quad	g_1633
	.quad	g_17
	.quad	g_1399
	.quad	g_17
	.size	.L__const.func_36.l_1799, 1920

	.type	g_1614,@object          # @g_1614
	.data
	.p2align	3
g_1614:
	.quad	g_1326
	.size	g_1614, 8

	.type	g_1027,@object          # @g_1027
	.p2align	3
g_1027:
	.quad	g_1028
	.size	g_1027, 8

	.type	g_1641,@object          # @g_1641
	.p2align	3
g_1641:
	.quad	g_1642
	.size	g_1641, 8

	.type	g_1864,@object          # @g_1864
	.p2align	4
g_1864:
	.quad	g_895
	.quad	g_112+24
	.quad	g_895
	.quad	g_112+8
	.quad	g_112+8
	.quad	g_895
	.quad	0
	.quad	0
	.quad	g_112+8
	.quad	g_118
	.quad	g_112+8
	.quad	0
	.size	g_1864, 96

	.type	g_1326,@object          # @g_1326
	.p2align	3
g_1326:
	.quad	g_1327
	.size	g_1326, 8

	.type	g_1327,@object          # @g_1327
	.local	g_1327
	.comm	g_1327,8,8
	.type	.L__const.func_97.l_682,@object # @__const.func_97.l_682
	.section	.rodata,"a",@progbits
	.p2align	4
.L__const.func_97.l_682:
	.long	4                       # 0x4
	.long	1058822096              # 0x3f1c57d0
	.long	1058822096              # 0x3f1c57d0
	.long	4                       # 0x4
	.long	1058822096              # 0x3f1c57d0
	.long	1058822096              # 0x3f1c57d0
	.long	4                       # 0x4
	.long	1058822096              # 0x3f1c57d0
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	7                       # 0x7
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	7                       # 0x7
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	1058822096              # 0x3f1c57d0
	.long	4                       # 0x4
	.long	1058822096              # 0x3f1c57d0
	.long	1058822096              # 0x3f1c57d0
	.long	4                       # 0x4
	.long	1058822096              # 0x3f1c57d0
	.long	1058822096              # 0x3f1c57d0
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	1058822096              # 0x3f1c57d0
	.long	1058822096              # 0x3f1c57d0
	.long	4                       # 0x4
	.long	1058822096              # 0x3f1c57d0
	.long	1058822096              # 0x3f1c57d0
	.long	4                       # 0x4
	.long	1058822096              # 0x3f1c57d0
	.size	.L__const.func_97.l_682, 128

	.type	.L__const.func_97.l_708,@object # @__const.func_97.l_708
	.p2align	4
.L__const.func_97.l_708:
	.long	761593479               # 0x2d64fe87
	.long	8                       # 0x8
	.long	3533850294              # 0xd2a246b6
	.long	761593479               # 0x2d64fe87
	.long	8                       # 0x8
	.long	4294967292              # 0xfffffffc
	.long	8                       # 0x8
	.long	761593479               # 0x2d64fe87
	.long	3533850294              # 0xd2a246b6
	.long	8                       # 0x8
	.long	761593479               # 0x2d64fe87
	.long	4294967292              # 0xfffffffc
	.long	2593971626              # 0x9a9cddaa
	.long	2593971626              # 0x9a9cddaa
	.long	3533850294              # 0xd2a246b6
	.long	2593971626              # 0x9a9cddaa
	.long	2593971626              # 0x9a9cddaa
	.long	4294967292              # 0xfffffffc
	.size	.L__const.func_97.l_708, 72

	.type	.L__const.func_97.l_734,@object # @__const.func_97.l_734
	.p2align	4
.L__const.func_97.l_734:
	.quad	g_112+24
	.quad	g_112+24
	.quad	g_112+24
	.quad	g_112+24
	.quad	g_112+24
	.quad	g_112+24
	.quad	g_112+24
	.quad	g_112+24
	.quad	g_112+24
	.size	.L__const.func_97.l_734, 72

	.type	.L__const.func_97.l_676,@object # @__const.func_97.l_676
	.p2align	4
.L__const.func_97.l_676:
	.quad	g_118
	.quad	g_58
	.quad	g_58
	.quad	g_118
	.quad	g_58
	.quad	g_58
	.quad	g_118
	.quad	g_58
	.quad	g_58
	.size	.L__const.func_97.l_676, 72

	.type	g_590,@object           # @g_590
	.data
	.p2align	3
g_590:
	.quad	g_112+24
	.size	g_590, 8

	.type	g_730,@object           # @g_730
	.p2align	4
g_730:
	.quad	g_731
	.quad	0
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	0
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	0
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	0
	.quad	g_731
	.quad	0
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	0
	.quad	g_731
	.quad	g_731
	.quad	0
	.quad	g_731
	.quad	0
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	0
	.quad	0
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	0
	.quad	0
	.quad	g_731
	.quad	g_731
	.quad	0
	.quad	g_731
	.quad	0
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	0
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	0
	.quad	0
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	0
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	g_731
	.quad	g_731
	.quad	0
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	0
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	0
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	0
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	0
	.quad	0
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	0
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	0
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	0
	.quad	0
	.quad	g_731
	.quad	g_731
	.quad	0
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	0
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	0
	.quad	g_731
	.quad	0
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	0
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	0
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	0
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	0
	.quad	0
	.quad	0
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	0
	.quad	0
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	0
	.quad	g_731
	.quad	g_731
	.quad	0
	.quad	0
	.quad	g_731
	.quad	g_731
	.quad	0
	.quad	g_731
	.quad	0
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	0
	.quad	g_731
	.quad	g_731
	.quad	0
	.quad	g_731
	.quad	0
	.quad	g_731
	.quad	0
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	0
	.quad	0
	.quad	g_731
	.quad	0
	.quad	0
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	g_731
	.quad	0
	.quad	g_731
	.size	g_730, 1920

	.type	.L__const.func_97.l_751,@object # @__const.func_97.l_751
	.section	.rodata,"a",@progbits
	.p2align	4
.L__const.func_97.l_751:
	.long	3                       # 0x3
	.long	4                       # 0x4
	.long	3153376217              # 0xbbf4b3d9
	.long	64353889                # 0x3d5f661
	.long	3972780991              # 0xeccbd3bf
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	4                       # 0x4
	.long	4294967295              # 0xffffffff
	.long	1913744899              # 0x72116e03
	.long	1817184433              # 0x6c5008b1
	.long	1                       # 0x1
	.long	2223775864              # 0x848c2078
	.long	1827131781              # 0x6ce7d185
	.long	816362799               # 0x30a8b52f
	.long	3194963283              # 0xbe6f4553
	.long	3081404912              # 0xb7aa81f0
	.long	1827131781              # 0x6ce7d185
	.long	3153376217              # 0xbbf4b3d9
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	4                       # 0x4
	.long	3082675945              # 0xb7bde6e9
	.long	468262653               # 0x1be91efd
	.long	4                       # 0x4
	.long	4017334030              # 0xef73a70e
	.long	3194963283              # 0xbe6f4553
	.long	3153376217              # 0xbbf4b3d9
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	3194963283              # 0xbe6f4553
	.long	3194963283              # 0xbe6f4553
	.long	706040034               # 0x2a1550e2
	.long	2223775864              # 0x848c2078
	.long	816362799               # 0x30a8b52f
	.long	291233973               # 0x115be0b5
	.long	1913744899              # 0x72116e03
	.long	1674993120              # 0x63d65de0
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	4294967291              # 0xfffffffb
	.long	922363550               # 0x36fa269e
	.long	64353889                # 0x3d5f661
	.long	1913744899              # 0x72116e03
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	4294967288              # 0xfffffff8
	.long	291233973               # 0x115be0b5
	.long	3082675945              # 0xb7bde6e9
	.long	3153376217              # 0xbbf4b3d9
	.long	706040034               # 0x2a1550e2
	.long	3405315425              # 0xcaf8fd61
	.long	4294967292              # 0xfffffffc
	.long	4294967295              # 0xffffffff
	.long	3972780991              # 0xeccbd3bf
	.long	1                       # 0x1
	.long	3194963283              # 0xbe6f4553
	.long	2179845675              # 0x81edce2b
	.long	706040034               # 0x2a1550e2
	.long	468262653               # 0x1be91efd
	.long	1827131781              # 0x6ce7d185
	.long	706040034               # 0x2a1550e2
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	1                       # 0x1
	.long	1827131781              # 0x6ce7d185
	.long	816362799               # 0x30a8b52f
	.long	4294967292              # 0xfffffffc
	.long	816362799               # 0x30a8b52f
	.long	922363550               # 0x36fa269e
	.long	3153376217              # 0xbbf4b3d9
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.long	4294967288              # 0xfffffff8
	.long	4294967295              # 0xffffffff
	.long	1                       # 0x1
	.long	4017334030              # 0xef73a70e
	.long	64353889                # 0x3d5f661
	.long	4                       # 0x4
	.long	4049682187              # 0xf1613f0b
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	4                       # 0x4
	.long	1913744899              # 0x72116e03
	.long	3                       # 0x3
	.long	3405315425              # 0xcaf8fd61
	.long	2223775864              # 0x848c2078
	.long	1674993120              # 0x63d65de0
	.long	4294967295              # 0xffffffff
	.long	3194963283              # 0xbe6f4553
	.long	3405315425              # 0xcaf8fd61
	.long	468262653               # 0x1be91efd
	.long	3153376217              # 0xbbf4b3d9
	.long	816362799               # 0x30a8b52f
	.long	3153376217              # 0xbbf4b3d9
	.long	4                       # 0x4
	.long	3972780991              # 0xeccbd3bf
	.long	4294967295              # 0xffffffff
	.long	4                       # 0x4
	.long	2223775864              # 0x848c2078
	.long	3081404912              # 0xb7aa81f0
	.long	3153376217              # 0xbbf4b3d9
	.long	706040034               # 0x2a1550e2
	.long	3194963283              # 0xbe6f4553
	.long	3194963283              # 0xbe6f4553
	.long	1                       # 0x1
	.long	3972780991              # 0xeccbd3bf
	.long	2223775864              # 0x848c2078
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	1913744899              # 0x72116e03
	.long	4294967288              # 0xfffffff8
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	4294967292              # 0xfffffffc
	.long	706040034               # 0x2a1550e2
	.long	64353889                # 0x3d5f661
	.long	2179845675              # 0x81edce2b
	.long	4294967295              # 0xffffffff
	.long	3                       # 0x3
	.long	4017334030              # 0xef73a70e
	.long	4294967295              # 0xffffffff
	.long	3082675945              # 0xb7bde6e9
	.long	1817184433              # 0x6c5008b1
	.long	3972780991              # 0xeccbd3bf
	.long	3405315425              # 0xcaf8fd61
	.long	4294967295              # 0xffffffff
	.long	3194963283              # 0xbe6f4553
	.long	3972780991              # 0xeccbd3bf
	.long	0                       # 0x0
	.long	3081404912              # 0xb7aa81f0
	.long	2179845675              # 0x81edce2b
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	1827131781              # 0x6ce7d185
	.long	4294967295              # 0xffffffff
	.long	3153376217              # 0xbbf4b3d9
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	468262653               # 0x1be91efd
	.long	816362799               # 0x30a8b52f
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	922363550               # 0x36fa269e
	.long	1817184433              # 0x6c5008b1
	.long	3405315425              # 0xcaf8fd61
	.long	4294967295              # 0xffffffff
	.long	4017334030              # 0xef73a70e
	.long	4                       # 0x4
	.long	4294967288              # 0xfffffff8
	.long	2179845675              # 0x81edce2b
	.long	4049682187              # 0xf1613f0b
	.long	1674993120              # 0x63d65de0
	.long	4294967292              # 0xfffffffc
	.long	4017334030              # 0xef73a70e
	.long	4294967288              # 0xfffffff8
	.long	4294967288              # 0xfffffff8
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	922363550               # 0x36fa269e
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.long	816362799               # 0x30a8b52f
	.long	706040034               # 0x2a1550e2
	.long	1913744899              # 0x72116e03
	.long	4294967295              # 0xffffffff
	.long	2223775864              # 0x848c2078
	.long	922363550               # 0x36fa269e
	.long	1827131781              # 0x6ce7d185
	.long	3972780991              # 0xeccbd3bf
	.long	922363550               # 0x36fa269e
	.long	2179845675              # 0x81edce2b
	.long	816362799               # 0x30a8b52f
	.long	1913744899              # 0x72116e03
	.long	3972780991              # 0xeccbd3bf
	.long	3405315425              # 0xcaf8fd61
	.long	4294967295              # 0xffffffff
	.long	3405315425              # 0xcaf8fd61
	.long	1674993120              # 0x63d65de0
	.long	0                       # 0x0
	.long	3082675945              # 0xb7bde6e9
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	4017334030              # 0xef73a70e
	.long	64353889                # 0x3d5f661
	.long	4                       # 0x4
	.long	4049682187              # 0xf1613f0b
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	4                       # 0x4
	.long	1913744899              # 0x72116e03
	.long	3                       # 0x3
	.long	3405315425              # 0xcaf8fd61
	.long	2223775864              # 0x848c2078
	.long	1674993120              # 0x63d65de0
	.long	4294967295              # 0xffffffff
	.long	3194963283              # 0xbe6f4553
	.long	3405315425              # 0xcaf8fd61
	.long	468262653               # 0x1be91efd
	.long	3153376217              # 0xbbf4b3d9
	.long	816362799               # 0x30a8b52f
	.long	3153376217              # 0xbbf4b3d9
	.long	4                       # 0x4
	.long	3972780991              # 0xeccbd3bf
	.long	4294967295              # 0xffffffff
	.long	4                       # 0x4
	.long	2223775864              # 0x848c2078
	.long	3081404912              # 0xb7aa81f0
	.long	3153376217              # 0xbbf4b3d9
	.long	706040034               # 0x2a1550e2
	.long	3194963283              # 0xbe6f4553
	.long	3194963283              # 0xbe6f4553
	.long	1                       # 0x1
	.long	3972780991              # 0xeccbd3bf
	.long	2223775864              # 0x848c2078
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	1913744899              # 0x72116e03
	.long	4294967288              # 0xfffffff8
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	4294967292              # 0xfffffffc
	.long	706040034               # 0x2a1550e2
	.long	64353889                # 0x3d5f661
	.long	2179845675              # 0x81edce2b
	.long	4294967295              # 0xffffffff
	.long	3                       # 0x3
	.long	4017334030              # 0xef73a70e
	.long	4294967295              # 0xffffffff
	.long	3082675945              # 0xb7bde6e9
	.long	1817184433              # 0x6c5008b1
	.long	3972780991              # 0xeccbd3bf
	.long	3405315425              # 0xcaf8fd61
	.long	4294967295              # 0xffffffff
	.long	3194963283              # 0xbe6f4553
	.long	3972780991              # 0xeccbd3bf
	.size	.L__const.func_97.l_751, 960

	.type	g_746,@object           # @g_746
	.data
	.p2align	3
g_746:
	.quad	g_747
	.size	g_746, 8

	.type	.L__const.func_97.l_771,@object # @__const.func_97.l_771
	.section	.rodata,"a",@progbits
	.p2align	4
.L__const.func_97.l_771:
	.long	4292986099              # 0xffe1c4f3
	.long	404453831               # 0x181b79c7
	.long	404453831               # 0x181b79c7
	.long	4292986099              # 0xffe1c4f3
	.long	4292986099              # 0xffe1c4f3
	.long	404453831               # 0x181b79c7
	.long	404453831               # 0x181b79c7
	.long	4292986099              # 0xffe1c4f3
	.long	4292986099              # 0xffe1c4f3
	.long	404453831               # 0x181b79c7
	.long	404453831               # 0x181b79c7
	.long	4292986099              # 0xffe1c4f3
	.long	4292986099              # 0xffe1c4f3
	.long	404453831               # 0x181b79c7
	.long	404453831               # 0x181b79c7
	.long	4292986099              # 0xffe1c4f3
	.long	4292986099              # 0xffe1c4f3
	.long	404453831               # 0x181b79c7
	.long	404453831               # 0x181b79c7
	.long	4292986099              # 0xffe1c4f3
	.long	4292986099              # 0xffe1c4f3
	.long	404453831               # 0x181b79c7
	.long	404453831               # 0x181b79c7
	.long	4292986099              # 0xffe1c4f3
	.long	4292986099              # 0xffe1c4f3
	.long	404453831               # 0x181b79c7
	.long	404453831               # 0x181b79c7
	.long	4292986099              # 0xffe1c4f3
	.size	.L__const.func_97.l_771, 112

	.type	g_747,@object           # @g_747
	.p2align	3
g_747:
	.quad	g_748+144
	.size	g_747, 8

	.type	g_748,@object           # @g_748
	.data
	.p2align	4
g_748:
	.quad	g_201
	.quad	0
	.quad	g_201
	.quad	0
	.quad	0
	.quad	g_201
	.quad	0
	.quad	g_201
	.quad	g_201
	.quad	g_201
	.quad	0
	.quad	g_201+8
	.quad	g_201
	.quad	g_201+8
	.quad	g_201
	.quad	0
	.quad	0
	.quad	g_201
	.quad	0
	.quad	g_201
	.quad	0
	.quad	g_201
	.quad	g_201
	.quad	g_201
	.quad	0
	.quad	g_201
	.quad	g_201
	.quad	g_201
	.quad	g_201
	.quad	0
	.quad	g_201
	.quad	0
	.quad	g_201
	.quad	g_201
	.quad	0
	.quad	g_201
	.quad	g_201
	.quad	g_201
	.quad	g_201
	.quad	g_201
	.quad	g_201+8
	.quad	g_201+8
	.size	g_748, 336

	.type	g_1028,@object          # @g_1028
	.section	.rodata,"a",@progbits
	.p2align	3
g_1028:
	.quad	g_1029
	.size	g_1028, 8

	.type	g_1878,@object          # @g_1878
	.data
	.p2align	3
g_1878:
	.quad	g_265
	.size	g_1878, 8

	.type	g_1030,@object          # @g_1030
	.p2align	3
g_1030:
	.quad	g_394
	.size	g_1030, 8

	.type	g_1517,@object          # @g_1517
	.p2align	4
g_1517:
	.quad	g_201
	.quad	g_201
	.quad	g_201
	.quad	g_201
	.size	g_1517, 32

	.type	.Lconstinit.38,@object  # @constinit.38
	.p2align	3
.Lconstinit.38:
	.quad	g_895
	.quad	0
	.quad	g_895
	.quad	g_112+12
	.quad	g_895
	.quad	0
	.quad	g_112+24
	.size	.Lconstinit.38, 56

	.type	.Lconstinit.39,@object  # @constinit.39
	.p2align	3
.Lconstinit.39:
	.quad	g_112+16
	.quad	g_895
	.quad	g_118
	.quad	g_112+24
	.quad	g_58
	.quad	g_58
	.quad	g_58
	.size	.Lconstinit.39, 56

	.type	.Lconstinit.40,@object  # @constinit.40
	.p2align	3
.Lconstinit.40:
	.quad	g_112+8
	.quad	0
	.quad	g_895
	.quad	g_112+24
	.quad	g_58
	.quad	g_112+24
	.quad	g_895
	.size	.Lconstinit.40, 56

	.type	.Lconstinit.41,@object  # @constinit.41
	.p2align	3
.Lconstinit.41:
	.quad	g_129
	.quad	g_129
	.quad	g_118
	.quad	0
	.quad	g_129
	.quad	0
	.quad	g_895
	.size	.Lconstinit.41, 56

	.type	.Lconstinit.42,@object  # @constinit.42
	.p2align	3
.Lconstinit.42:
	.quad	g_112+16
	.quad	g_129
	.quad	g_112+16
	.quad	g_58
	.quad	g_58
	.quad	g_118
	.quad	g_112+8
	.size	.Lconstinit.42, 56

	.type	.Lconstinit.43,@object  # @constinit.43
	.p2align	3
.Lconstinit.43:
	.quad	g_118
	.quad	g_129
	.quad	g_129
	.quad	g_112+12
	.quad	g_129
	.quad	g_129
	.quad	g_118
	.size	.Lconstinit.43, 56

	.type	.Lconstinit.44,@object  # @constinit.44
	.p2align	3
.Lconstinit.44:
	.quad	g_895
	.quad	0
	.quad	g_112+8
	.quad	g_112+16
	.quad	g_112+16
	.quad	g_112+8
	.quad	0
	.size	.Lconstinit.44, 56

	.type	.L__const.func_24.l_44,@object # @__const.func_24.l_44
	.section	.rodata,"a",@progbits
	.p2align	4
.L__const.func_24.l_44:
	.quad	g_45
	.quad	0
	.quad	g_45
	.zero	24
	.quad	g_45
	.quad	0
	.quad	g_45
	.zero	24
	.size	.L__const.func_24.l_44, 96

	.type	g_1130,@object          # @g_1130
	.p2align	3
g_1130:
	.quad	g_1131
	.size	g_1130, 8

	.type	.L.str.45,@object       # @.str.45
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.45:
	.asciz	"...checksum after hashing %s : %lX\n"
	.size	.L.str.45, 36

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"checksum = %X\n"
	.size	.L.str.46, 15

	.ident	"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym strcmp
	.addrsig_sym platform_main_begin
	.addrsig_sym crc32_gentab
	.addrsig_sym func_1
	.addrsig_sym transparent_crc
	.addrsig_sym printf
	.addrsig_sym platform_main_end
	.addrsig_sym safe_mul_func_uint16_t_u_u
	.addrsig_sym safe_sub_func_int32_t_s_s
	.addrsig_sym safe_mod_func_uint32_t_u_u
	.addrsig_sym safe_lshift_func_uint8_t_u_u
	.addrsig_sym func_13
	.addrsig_sym safe_mod_func_uint64_t_u_u
	.addrsig_sym safe_mod_func_uint16_t_u_u
	.addrsig_sym func_24
	.addrsig_sym safe_lshift_func_uint16_t_u_u
	.addrsig_sym func_36
	.addrsig_sym safe_mod_func_uint8_t_u_u
	.addrsig_sym safe_lshift_func_uint8_t_u_s
	.addrsig_sym safe_sub_func_int64_t_s_s
	.addrsig_sym safe_mul_func_int16_t_s_s
	.addrsig_sym safe_mod_func_int16_t_s_s
	.addrsig_sym safe_add_func_int16_t_s_s
	.addrsig_sym safe_div_func_int8_t_s_s
	.addrsig_sym safe_sub_func_uint16_t_u_u
	.addrsig_sym safe_rshift_func_int16_t_s_s
	.addrsig_sym safe_mul_func_uint8_t_u_u
	.addrsig_sym safe_add_func_uint8_t_u_u
	.addrsig_sym safe_lshift_func_int16_t_s_u
	.addrsig_sym safe_sub_func_uint8_t_u_u
	.addrsig_sym safe_add_func_uint16_t_u_u
	.addrsig_sym safe_mul_func_int8_t_s_s
	.addrsig_sym safe_sub_func_int8_t_s_s
	.addrsig_sym safe_sub_func_int16_t_s_s
	.addrsig_sym safe_unary_minus_func_uint16_t_u
	.addrsig_sym safe_lshift_func_int8_t_s_s
	.addrsig_sym safe_add_func_uint32_t_u_u
	.addrsig_sym safe_unary_minus_func_int8_t_s
	.addrsig_sym safe_add_func_int64_t_s_s
	.addrsig_sym safe_div_func_uint64_t_u_u
	.addrsig_sym safe_mod_func_int64_t_s_s
	.addrsig_sym safe_add_func_int32_t_s_s
	.addrsig_sym safe_div_func_int16_t_s_s
	.addrsig_sym safe_lshift_func_int16_t_s_s
	.addrsig_sym safe_div_func_uint8_t_u_u
	.addrsig_sym safe_rshift_func_int8_t_s_s
	.addrsig_sym safe_div_func_uint16_t_u_u
	.addrsig_sym func_97
	.addrsig_sym safe_div_func_int32_t_s_s
	.addrsig_sym safe_div_func_uint32_t_u_u
	.addrsig_sym safe_div_func_int64_t_s_s
	.addrsig_sym safe_add_func_uint64_t_u_u
	.addrsig_sym safe_add_func_int8_t_s_s
	.addrsig_sym safe_sub_func_uint64_t_u_u
	.addrsig_sym safe_lshift_func_int8_t_s_u
	.addrsig_sym safe_unary_minus_func_uint64_t_u
	.addrsig_sym safe_mod_func_int8_t_s_s
	.addrsig_sym safe_rshift_func_uint16_t_u_u
	.addrsig_sym safe_sub_func_uint32_t_u_u
	.addrsig_sym crc32_8bytes
	.addrsig_sym crc32_byte
	.addrsig_sym g_4
	.addrsig_sym g_17
	.addrsig_sym g_45
	.addrsig_sym g_58
	.addrsig_sym g_73
	.addrsig_sym g_96
	.addrsig_sym g_108
	.addrsig_sym g_111
	.addrsig_sym g_112
	.addrsig_sym g_115
	.addrsig_sym g_118
	.addrsig_sym g_119
	.addrsig_sym g_129
	.addrsig_sym g_161
	.addrsig_sym g_187
	.addrsig_sym g_205
	.addrsig_sym g_242
	.addrsig_sym g_265
	.addrsig_sym g_307
	.addrsig_sym g_442
	.addrsig_sym g_894
	.addrsig_sym g_895
	.addrsig_sym g_1036
	.addrsig_sym g_1131
	.addrsig_sym g_1143
	.addrsig_sym g_1196
	.addrsig_sym g_1295
	.addrsig_sym g_1299
	.addrsig_sym g_1362
	.addrsig_sym g_1399
	.addrsig_sym g_1633
	.addrsig_sym g_1642
	.addrsig_sym crc32_context
	.addrsig_sym crc32_tab
	.addrsig_sym g_1622
	.addrsig_sym g_1129
	.addrsig_sym g_731
	.addrsig_sym g_201
	.addrsig_sym g_170
	.addrsig_sym g_669
	.addrsig_sym g_1370
	.addrsig_sym g_1700
	.addrsig_sym g_1877
	.addrsig_sym g_1640
	.addrsig_sym g_1029
	.addrsig_sym g_1244
	.addrsig_sym g_668
	.addrsig_sym .Lconstinit
	.addrsig_sym .Lconstinit.37
	.addrsig_sym g_1516
	.addrsig_sym g_930
	.addrsig_sym g_202
	.addrsig_sym g_171
	.addrsig_sym g_670
	.addrsig_sym g_393
	.addrsig_sym g_394
	.addrsig_sym g_1369
	.addrsig_sym g_1614
	.addrsig_sym g_1027
	.addrsig_sym g_1641
	.addrsig_sym g_1864
	.addrsig_sym g_1326
	.addrsig_sym g_1327
	.addrsig_sym g_590
	.addrsig_sym g_730
	.addrsig_sym g_746
	.addrsig_sym g_747
	.addrsig_sym g_748
	.addrsig_sym g_1028
	.addrsig_sym g_1878
	.addrsig_sym g_1030
	.addrsig_sym g_1517
	.addrsig_sym .Lconstinit.38
	.addrsig_sym .Lconstinit.39
	.addrsig_sym .Lconstinit.40
	.addrsig_sym .Lconstinit.41
	.addrsig_sym .Lconstinit.42
	.addrsig_sym .Lconstinit.43
	.addrsig_sym .Lconstinit.44
	.addrsig_sym g_1130
