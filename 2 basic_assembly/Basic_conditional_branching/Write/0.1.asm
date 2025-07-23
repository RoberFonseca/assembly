format PE console
entry start

include 'win32a.inc' 

; ===============================================
section '.text' code readable executable
;  0.1 Write a program that takes the value m as input. It then receives m
;      consecutive numbers from the user, sums all those numbers and prints back
;      the total sum to the console.
start:
	call	read_hex
	mov	ebx,0
	mov	ecx,0
l1:	
	mov	ecx,eax
	call	read_hex
	add	ebx,eax
	mov	eax,ecx
	dec	eax
	jnz	l1

	mov	eax,ebx
	call	print_eax
	
    ; Exit the process:
	push	0
	call	[ExitProcess]

include 'training.inc'

