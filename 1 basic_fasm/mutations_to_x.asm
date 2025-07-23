; This program takes a number a do some transformations to it
format PE console
entry start

include 'win32a.inc' 

; ===============================================
section '.text' code readable executable

start:
    ; The program begins here:
	call 	read_hex
	mov	ebx,eax

	inc 	eax
	call	print_eax ; Printing n + 1
	dec	eax

	mul	eax
	call	print_eax ; Printing n ^ 2

	mul	ebx
	call	print_eax ; Printing n ^ 3
	
    ; Exit the process:
	push	0
	call	[ExitProcess]

include 'training.inc'

