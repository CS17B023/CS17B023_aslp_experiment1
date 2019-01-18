	.file	"lab1_q1.c"
	.intel_syntax noprefix
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
        push	rbp                      ; stack[top-0] <- [rbp]
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
        mov	rbp, rsp                 ; rbp <- [rsp]
	.cfi_def_cfa_register 6
        push	r12                      ; stack[top-1] <- [r12]
	push	rbx                      ; stack[top-2] <- [rbx]
	.cfi_offset 12, -24
	.cfi_offset 3, -32
        mov	ebx, 30                  ; ebx <- 30
	mov	r12d, 10                 ; r12d <- 10
        lea	eax, [rbx+r12]           ; eax <- [rbx + r12] ; eax <- 40
	mov	DWORD PTR [rbp-44], eax  ; [rbp-44]<-eax ; eax <- 40 
	mov	eax, ebx                 ; eax <- [ebx] ; eax <- 30
	sub	eax, r12d                ; eax <- [eax] - [r12d] ; eax <- 20
	mov	DWORD PTR [rbp-40], eax  ; [rbp-40] <- eax ;
	mov	eax, ebx                 ; eax <- [ebx] ; eax<- 30
	imul	eax, r12d                ; eax <- [eax] * [r12d] ; eax <- 300
	mov	DWORD PTR [rbp-36], eax  ; [rbp-36]<-eax ; eax <-300
	mov	eax, ebx                 ; eax <- [ebx] ; eax <- 30
	cdq                              ; copies the sign (bit 31) of the value in the 
                                           EAX register into every bit position in the EDX register.
	idiv	r12d                     ; eax <- [eax] / [r12d] ; eax <- 3
	mov	DWORD PTR [rbp-32], eax  ; [rbp-32] <- eax ;
	mov	eax, ebx                 ; eax <- [ebx] ; eax <-30
	and	eax, r12d                ; eax <- [eax]&[r12d] ;  eax <- 10
	mov	DWORD PTR [rbp-28], eax  ; [rbp-28] <-eax ;
	mov	eax, ebx                 ; eax <- ebx ; eax <- 30 
	or	eax, r12d                ; eax <- [eax] | [r12d] ; eax <- 30
	mov	DWORD PTR [rbp-24], eax  ; [rbp - 24] <- eax ;
	mov	eax, ebx                 ; eax <- [ebx] ; eax <- 30 
	xor	eax, r12d                ;  eax <- [eax] ^ [r12d] ; eax <- 20
	mov	DWORD PTR [rbp-20], eax  ; [rbp-20] <- eax ; eax <-30
	mov	eax, 0                   ; eax <- 0
        pop	rbx                      ; rbx <- stack[top-2] ; 
	pop	r12                      ; rbx <- stack[top-1] ; 
	pop	rbp                      ; rbp <- stack[top -0]; 
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.11) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
