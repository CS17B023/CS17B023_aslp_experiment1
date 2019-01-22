	.file	"lab1_q4.c"
	.intel_syntax noprefix
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	lea	ecx, [esp+4]                  ; ecx <- [esp+4] ;
	.cfi_def_cfa 1, 0
	and	esp, -16                      ; esp <- esp & -16 ;
	push	DWORD PTR [ecx-4]             ; PUSHES 32 BITS FROM THE MEMORY LOCATION [ecx-4] 
	push	ebp                           ; stack[top-0] <- [ebp] ;
	.cfi_escape 0x10,0x5,0x2,0x75,0
	mov	ebp, esp                      ; ebp <- [esp]
	push	ecx                           ; stack[top-1] <- [ecx] ;
	.cfi_escape 0xf,0x3,0x75,0x7c,0x6
	sub	esp, 100                      ; esp <- 100 ;
	mov	eax, DWORD PTR gs:20          ;
	mov	DWORD PTR [ebp-12], eax       ; [ebp-12] <- eax ;
	xor	eax, eax
	mov	DWORD PTR [ebp-92], 3         ; [ebp-92] <- 3  ;
	mov	DWORD PTR [ebp-88], 77        ; [ebp-88] <- 77 ;
	mov	DWORD PTR [ebp-84], 1         ; [ebp-84] <- 1  ;
	mov	DWORD PTR [ebp-80], 43        ; [ebp-80] <- 43 ;
	mov	DWORD PTR [ebp-76], 103       ; [ebp-76] <-103 ;
	mov	DWORD PTR [ebp-72], 56        ; [ebp-72] <- 56 ;
	mov	DWORD PTR [ebp-68], 98        ; [ebp-68] <- 98 ;
	mov	DWORD PTR [ebp-64], 52        ; [ebp-64] <- 52 ;
	mov	DWORD PTR [ebp-60], 12        ; [ebp-60] <- 12 ;
	mov	DWORD PTR [ebp-56], 88        ; [ebp-56] <- 88 ;
	mov	DWORD PTR [ebp-52], 0         ; [ebp-52] <-  0 ;
	mov	DWORD PTR [ebp-48], 1         ; [ebp-48] <-  1 ;
	mov	DWORD PTR [ebp-44], 2         ; [ebp-44] <-  2 ;
	mov	DWORD PTR [ebp-40], 3         ; [ebp-40] <-  3 ;
	mov	DWORD PTR [ebp-36], 4         ; [ebp-36] <-  4 ;
	mov	DWORD PTR [ebp-32], 5         ; [ebp-32] <-  5 ;
	mov	DWORD PTR [ebp-28], 6         ; [ebp-28] <-  6 ;
	mov	DWORD PTR [ebp-24], 7         ; [ebp-24] <-  7 ;
	mov	DWORD PTR [ebp-20], 8         ; [ebp-20] <-  8 ;
	mov	DWORD PTR [ebp-16], 9         ; [ebp-16] <-  9 ;
	mov	DWORD PTR [ebp-100], 0        ; [ebp-100] <- 0 ;
	jmp	.L2                           ; JUMP TO LINE 2 ;
.L3:
	mov	eax, DWORD PTR [ebp-100]      ; eax <- [ebp-100] ;
	mov	eax, DWORD PTR [ebp-92+eax*4] ; eax <- [ebp-92+eax*4] ;
	mov	DWORD PTR [ebp-96], eax       ; [ebp-96]  <- eax ;
	mov	eax, DWORD PTR [ebp-100]      ; [ebp-100] <- edx ;
	mov	edx, DWORD PTR [ebp-52+eax*4] ; [ebp-52+eax*4] <- edx ;
	mov	eax, DWORD PTR [ebp-100]      ; eax <- [ebp-100] ;
	mov	DWORD PTR [ebp-92+eax*4], edx ; [ebp_92+eax*4]  <- edx ;
	mov	eax, DWORD PTR [ebp-100]      ; eax <- [ebp-100] ;
	mov	edx, DWORD PTR [ebp-96]       ; edx <- [ebp-96]  ;
	mov	DWORD PTR [ebp-52+eax*4], edx ; [edp-52+eax*4]  <- edx ;
	add	DWORD PTR [ebp-100], 1        ; [ebp-100] <- [ebp-100] + 1 ;
.L2:
	cmp	DWORD PTR [ebp-100], 9        ; Compare  Operands ([ebp-100],9)
	jle	.L3                           ; JUMP TO LINE 3 IF LESS THAN OR EQUAL TO CONDITION SATISFY
	mov	eax, 0                        ; eax <- 0 ;
	mov	ecx, DWORD PTR [ebp-12]       ; ecx <- [ebp-12] ;
	xor	ecx, DWORD PTR gs:20
	je	.L5                           ; JUMP TO LINE 5 IF EQUAL CONDITION SATISFY
	call	__stack_chk_fail
.L5:
	add	esp, 100                      ; esp <- [esp] + 100 ;
	pop	ecx                           ; ecx <- stack[top-1] ;                 
	.cfi_restore 1
	.cfi_def_cfa 1, 0
	pop	ebp                           ; ecx <- stack[top-0] ;
	.cfi_restore 5
	lea	esp, [ecx-4]                  ; esp <- [ecx-4] ;
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
