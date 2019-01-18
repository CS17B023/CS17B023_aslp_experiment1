	.file	"lab1_q5.c"
	.intel_syntax noprefix
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	lea	ecx, [esp+4]
	.cfi_def_cfa 1, 0
	and	esp, -16
	push	DWORD PTR [ecx-4]
	push	ebp
	.cfi_escape 0x10,0x5,0x2,0x75,0
	mov	ebp, esp
	push	ecx
	.cfi_escape 0xf,0x3,0x75,0x7c,0x6
	sub	esp, 68
	mov	eax, DWORD PTR gs:20
	mov	DWORD PTR [ebp-12], eax
	xor	eax, eax
	mov	DWORD PTR [ebp-52], 3
	mov	DWORD PTR [ebp-48], 77
	mov	DWORD PTR [ebp-44], 1
	mov	DWORD PTR [ebp-40], 43
	mov	DWORD PTR [ebp-36], 103
	mov	DWORD PTR [ebp-32], 56
	mov	DWORD PTR [ebp-28], 98
	mov	DWORD PTR [ebp-24], 52
	mov	DWORD PTR [ebp-20], 12
	mov	DWORD PTR [ebp-16], 88
	mov	eax, DWORD PTR [ebp-52]
	mov	DWORD PTR [ebp-60], eax
	mov	eax, DWORD PTR [ebp-52]
	mov	DWORD PTR [ebp-56], eax
	mov	DWORD PTR [ebp-64], 0
	jmp	.L2
.L5:
	mov	eax, DWORD PTR [ebp-64]
	mov	eax, DWORD PTR [ebp-52+eax*4]
	cmp	eax, DWORD PTR [ebp-56]
	jge	.L3
	mov	eax, DWORD PTR [ebp-64]
	mov	eax, DWORD PTR [ebp-52+eax*4]
	mov	DWORD PTR [ebp-56], eax
.L3:
	mov	eax, DWORD PTR [ebp-64]
	mov	eax, DWORD PTR [ebp-52+eax*4]
	cmp	eax, DWORD PTR [ebp-60]
	jle	.L4
	mov	eax, DWORD PTR [ebp-64]
	mov	eax, DWORD PTR [ebp-52+eax*4]
	mov	DWORD PTR [ebp-60], eax
.L4:
	add	DWORD PTR [ebp-64], 1
.L2:
	cmp	DWORD PTR [ebp-64], 9
	jle	.L5
	mov	eax, 0
	mov	edx, DWORD PTR [ebp-12]
	xor	edx, DWORD PTR gs:20
	je	.L7
	call	__stack_chk_fail
.L7:
	add	esp, 68
	pop	ecx
	.cfi_restore 1
	.cfi_def_cfa 1, 0
	pop	ebp
	.cfi_restore 5
	lea	esp, [ecx-4]
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
