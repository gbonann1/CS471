	.file	"powF.c"
	.text
	.p2align 4,,15
	.globl	powF
	.type	powF, @function
powF:
.LFB0:
	.cfi_startproc
	testl	%edi, %edi
	movl	$1, %eax
	je	.L4
	.p2align 4,,10
	.p2align 3
.L3:
	imull	%esi, %eax
	subl	$1, %edi
	jne	.L3
	rep
	ret
.L4:
	.p2align 4,,5
	rep
	ret
	.cfi_endproc
.LFE0:
	.size	powF, .-powF
	.ident	"GCC: (Debian 4.7.2-5) 4.7.2"
	.section	.note.GNU-stack,"",@progbits
