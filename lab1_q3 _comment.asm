	.file	"lab1_q3.c"
	.intel_syntax noprefix
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	lea	ecx, [esp+4]                   ; ecx <- [esp+4] ; 
	.cfi_def_cfa 1, 0
	and	esp, -16                       ; esp <- [esp] & [-16] ;
	push	DWORD PTR [ecx-4]              ; PUSHES 32 BITS FROM THE MEMORY LOCATION [ecx-4] 
	push	ebp                            ; stack[top-0] <- [ebp] ;
	.cfi_escape 0x10,0x5,0x2,0x75,0
	mov	ebp, esp                       ; ebp <- [esp] ; 
	push	ecx                            ; stack[top-1] <- [rbp] ;
	.cfi_escape 0xf,0x3,0x75,0x7c,0x6
	sub	esp, 52                        ; esp < [esp] - 52 ;
	mov	eax, DWORD PTR gs:20           ; 
	mov	DWORD PTR [ebp-12], eax        ; [ebp-12] <- eax ;
	xor	eax, eax                       ; eax <- [eax] ^ [eax] ; eax <- 0 
	mov	DWORD PTR [ebp-52], 0          ; [ebp-52] <- 0 ;
	mov	DWORD PTR [ebp-48], 1          ; [ebp-48] <- 1 ;
	mov	DWORD PTR [ebp-44], 2          ; [ebp-44] <- 2 ;
	mov	DWORD PTR [ebp-40], 3          ; [ebp-40] <- 3 ;
	mov	DWORD PTR [ebp-36], 4          ; [ebp-36] <- 4 ;
	mov	DWORD PTR [ebp-32], 5          ; [ebp-32] <- 5 ;
	mov	DWORD PTR [ebp-28], 6          ; [ebp-28] <- 6 ;
	mov	DWORD PTR [ebp-24], 7          ; [ebp-24] <- 7 ;
	mov	DWORD PTR [ebp-20], 8          ; [ebp-20] <- 8 ;
	mov	DWORD PTR [ebp-16], 9          ; [ebp-16] <- 9 ;
	mov	DWORD PTR [ebp-56], 0          ; [ebp-56] <- 0 ;
	jmp	.L2                            ; JUMP TO LINE 2 ;
.L3:
	mov	eax, DWORD PTR [ebp-56]        ; eax <- [ebp-56] ; eax <- 0
 	mov	eax, DWORD PTR [ebp-52+eax*4]  ; eax <- [ebp-52+eax*4] ; 
	lea	edx, [eax+1]                   ; edx <- [eax + 1] ;
	mov	eax, DWORD PTR [ebp-56]        ; eax <- [ebp-56] ;
	mov	DWORD PTR [ebp-52+eax*4], edx  ; [ebp-52+eax*4] <- [edx] ;
	add	DWORD PTR [ebp-56], 1          ; [ebp-56] <- [ebp-56] + 1 ;
.L2:
	cmp	DWORD PTR [ebp-56], 9          ; Compare  Operands ([ebp-56],9)
	jle	.L3                            ; JUMP TO LINE 3 IF LESS THAN OR EQUAL TO CONDITION SATISFY
	mov	eax, 0                         ; eax <- 0 ; 
	mov	ecx, DWORD PTR [ebp-12]        ; ecx <- [ebp-12] ;
	xor	ecx, DWORD PTR gs:20
	je	.L5                            ; JUMP TO LINE 5 IF EQUAL 
	call	__stack_chk_fail
.L5:
	add	esp, 52                        ; esp <- [esp] + 52 ;
	pop	ecx                            ; ecx <- stack[top-1] ;
	.cfi_restore 1
	.cfi_def_cfa 1, 0
	pop	ebp                            ; ebp <- stack[top-0];
	.cfi_restore 5  
	lea	esp, [ecx-4]                   ; esp <- [ecx-4] ;
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
