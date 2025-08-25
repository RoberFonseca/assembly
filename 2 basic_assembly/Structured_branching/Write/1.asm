format PE console
entry start

include 'win32a.inc' 

; ===============================================
section '.text' code readable executable

start:
	call	read_hex
	mov	esi,eax
	mov	ebx,0
	dec	eax
	mov	ecx,eax
for_y:
while_x:
	cmp	ebx,ecx
	jae	end_while
	mov	eax,ebx
	call	print_eax
	mov	eax,ecx
	call	print_eax
	inc	ebx
	jmp	while_x	
end_while:
	mov	ebx,0
	loop	for_y
    ; Exit the process:
	push	0
	call	[ExitProcess]

include 'training.inc'

