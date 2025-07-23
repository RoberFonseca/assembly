; This program show the remainder from the division of 2 numbers
format PE console
entry start

include 'win32a.inc' 

; ===============================================
section '.text' code readable executable

start:
    ; The program begins here:

	call	read_hex
	mov	ebx,eax
	
	call	read_hex
	mov	ecx,eax
	
	mov	edx,0
	mov	eax, ebx
	div	ecx
	mov	eax,edx
	
	call	print_eax

    ; Exit the process:
	push	0
	call	[ExitProcess]

include 'training.inc'

