	.file	"cc-test.c"
	.comm	_arr, 5, 2
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "ARRAY_LENGTH was %d\15\12\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB10:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$32, %esp
	call	___main
	movl	$0, 28(%esp)
	jmp	L2
L3:
	movl	28(%esp), %eax
	leal	(%eax,%eax), %edx
	movl	28(%esp), %eax
	addl	$_arr, %eax
	movb	%dl, (%eax)
	addl	$1, 28(%esp)
L2:
	cmpl	$4, 28(%esp)
	jle	L3
	movl	$5, 4(%esp)
	movl	$LC0, (%esp)
	call	_printf
	movl	$0, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE10:
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
	.def	_printf;	.scl	2;	.type	32;	.endef
