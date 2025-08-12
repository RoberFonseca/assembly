; Basic Assembly
; ==============
; 
; Structured branching
; --------------------
;
; Roots
; @@@@
;
; 0.    Assemble and run this program.
; 
; 1.    How many inputs does this program expect? (Maybe non at all?)
;
; 2.    Read the program's code below, and try to understand what does it do. 
;       Try to describe it as simply as you can. What are the numbers seen at
;       the outputs? What do they mean?
;
; 3.    Add comments to the code, to make it more readable.
; 
; 4.    Identify the different structured branching constructs inside this
;       code: Identify IF,FOR,WHILE and BREAK.
;
; 5.    What happens if you change the first "mov ecx,10000000h" instruction?
;       For example, to the number 0ffffffffh? Why?

format PE console
entry start

include 'win32a.inc' 

; ===============================================
section '.text' code readable executable

; Las instrucciones representan la ecuación f(x) = x^3 - 18 * x^2 + 101 * x - 168 = 0
; Cuando fx es 8 7 o 3 se cumple
start:
    
    mov     ecx,10000000h

looper:
    mov     eax,ecx ; eax vale 0
    mul     ecx     ; ecx sería 0*10000000
    mov     esi,eax ; guardo 0 en esi
    mul     ecx	    ; vuelvo a hacer 0*10000000	
    mov     edi,eax ; guardo 0 en edi
			; eax vale 0, esi vale 0, edi vale 0, ecx vale 10000000
    mov     eax,esi ; muevo 0 a eax?
    mov     esi,18d ; muevo 18d a esi
    mul     esi     ; hago 0*18d?
    sub     edi,eax ; resto 0 a 0

    mov     eax,ecx ; muevo 10000000 a eax
    mov     ebx,101d ;muevo 101d a ebx
    mul     ebx     ; multiplico 10000000*65h
    add     edi,eax ; sumo 50000000 + 0

    sub     edi,168d ; le resto A8H edi vale 4FFFFF58

    cmp     edi,0    ; le resto 0 xd
    jnz     skip_print ; si no es 0, salto a skip_print, es decir no printeo nada y loope

    mov     eax,ecx  ; si la resta dio 0, muevo el valor de ecx a eax y prineto
    call    print_eax

skip_print:
    loop    looper 


    ; Exit the process:
	push	0
	call	[ExitProcess]

include 'training.inc'

