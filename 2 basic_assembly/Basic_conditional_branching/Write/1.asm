format PE console
entry start

include 'win32a.inc' 

; ===============================================
section '.text' code readable executable

;	Write a program that takes three numbers as input: x,y,z. Then it prints 1
;	to the console if x < y < z. It prints 0 otherwise. Unsigned

start:
	mov	ebx,0
	mov	ecx,0
	call 	read_hex
	mov	ebx,eax
	call	read_hex
	mov	ecx,eax
	call	read_hex
	
; Doing the checks, im using carry flag to check for a wrong result

	sub	ebx,ecx
	jnc	q1		
	sub	ecx,eax
	jnc	q1
	mov	eax,1
	call	print_eax
	jmp	f1

q1:
	mov	eax,0
	call	print_eax

f1:
    ; Exit the process:
	push	0
	call	[ExitProcess]

include 'training.inc'

