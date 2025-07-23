format PE console
entry start

include 'win32a.inc' 

; ===============================================
section '.text' code readable executable

;	Write a program that takes as input the number n, and prints back the n-th
;	element of the fibonacci series.

start:
	call	read_hex
	mov	ebx,1
	mov	ecx,0
	mov	edx,0
	dec	eax
	jz	o1

l1:
	mov	edx,ebx
	add	ebx,ecx
	mov	ecx,edx
	dec	eax
	jnz	l1

	mov	eax,ebx
	call	print_eax
	jmp	f1

o1:
	mov	eax,1
	call	print_eax
	
f1:
    ; Exit the process:
	push	0
	call	[ExitProcess]

include 'training.inc'

; ts was hard :(
