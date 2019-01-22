	.file	"lab1_q2.c"
	.intel_syntax noprefix
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	push	ebp              ;stack[top-0] <- [ebp]
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp         ;ebp <- [esp]
	.cfi_def_cfa_register 5
	push	esi              ;stack[top-1] <- [esi]
	push	ebx              ;stack[top-2] <- [ebx]
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	mov	ebx, 10          ; ebx <- 10;
	mov	esi, 20          ; esi <- 20;
	add	ebx, esi         ; ebx <- [ebx] + [esi] ; ebx <- 30
	mov	eax, ebx         ; eax <- [ebx] ; eax <- 30;
	sub	eax, esi         ; eax <- [eax] - [esi] ; eax <- 10
	mov	esi, eax         ; esi <- [eax] ; esi <- 10;
	sub	ebx, esi         ; ebx <- [ebx] - [esi] ; ebx <- 0
	mov	eax, 0           ; eax <- 0;
	pop	ebx              ; ebx <- stack[top-2] ; 
	.cfi_restore 3
	pop	esi              ; esi <- stack[top-1] ; 
	.cfi_restore 6
	pop	ebp              ; ebp <- stack[top-0] ; 
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
