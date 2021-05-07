SECTION .data
h0              db 67452301h
h1              db EFCDAB89h
h2              db 98BADCFEh
h3              db 10325476h
tlenght         dd 0    

SECTION .bss
fileallocmem:   resb 2000000
flenght:        resb 8

SECTION .text
global _start

_start:
    mov eax, 5                      ;open file 
    mov ebx, [esp + 8]
    mov ecx, 0
    mov edx, 0644o
    int 80h


    mov ebx, eax                    ;read 512bit from the file if possible
    mov eax, 3
    mov ecx, fileallocmem
    mov edx, 64
    int 80h

    add ecx, 64                     ;move 64 bytes on the allocated memory

    mov esi, 0
    mov [flenght], esi

    add [tlenght], 1                ;add lenght in 64 bytes

    add [flenght], eax              ;add lenght in bits
    add [flenght], eax
    add [flenght], eax
    add [flenght], eax
    add [flenght], eax
    add [flenght], eax
    add [flenght], eax
    add [flenght], eax

    mov edi, 64
    cmp edi, eax
    jg padding                      ;if read bytes are less than 64, go to padding

readalloc:                          ;read on allocated memory until the end                         
    mov eax, 3
    int 80h
    
    add ecx, 64                     ;move 64 bytes on the allocated memory

    add [tlenght], 1                ;add lenght in 64 bytes

    add [flenght], eax              ;add lenght in bits
    add [flenght], eax
    add [flenght], eax
    add [flenght], eax
    add [flenght], eax
    add [flenght], eax
    add [flenght], eax
    add [flenght], eax

    cmp edi, eax                     ;if read bytes are less than 64, go to padding
    jg padding
    jmp readalloc                    ;otherwise keep looping

padding:
    mov edi, 56
    cmp edi, eax                     
    jg complete                     ;if read bytes are less than 56, go to complete(to add bytes until it's properly padded)
    je complete2                    ;otherwise add 64 bytes(first byte 10000000)
    jl complete3                    ;otherwise add to 64 and add 56

complete:                           ;complete 56
    mov edi, 55
    sub edi, eax
    sub ecx, edi
    mov [ecx], byte 4ah
    jmp looppad

complete2:                          ;add 64
    add [tlenght], 1                ;add lenght in 64 bytes
    sub ecx, 7
    mov [ecx], byte 4ah
    mov edi, 63
    jmp looppad

complete3:                          ;otherwise add to 64 and add 56
    add [tlenght], 1                ;add lenght in 64 bytes
    mov edi, 64
    sub edi, eax                    
    sub ecx, edi
    mov [ecx], byte 4ah
    add edi, 55

looppad:                            ;add fisrt padding and loop for the rest
    jz addbitlenght
    add ecx, 1
    mov [ecx], byte 4bh
    sub edi, 1
    jmp looppad

addbitlenght:
    add ecx, 1
    mov ebx, dword[flenght]
    mov [ecx], ebx
    add ecx, 1
    mov ebx, dword[flenght+4]
    mov [ecx], ebx

foreachchunk64:
    
    sub [tlenght], 1
    jz foreachchunk64

print:
    mov eax, 4
    mov ebx, 1
    mov ecx, fileallocmem
    mov edx, 1000000
    int 80h
   
    mov eax, 1
    mov ebx, 0
    int 80h