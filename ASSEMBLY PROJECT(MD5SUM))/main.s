SECTION .data
firstpad        db 80h
npad            db 0
bycount         dd 0

SECTION .bss
fileallocmem:   resb 2000000
flenght:        resb 8

SECTION .text
global _start

_start:
    mov eax, 5                      ;open file 
    mov ebx, [esp + 4]
    mov ecx, 0
    mov edx, 0644o
    INT 80h


    mov ebx, eax                    ;read 512bit from the file if possible
    mov eax, 3
    mov ecx, fileallocmem
    mov edx, 64
    int 80h

    add ecx, 64                     ;move 64 bytes on the allocated memory

    mov esi, 0
    mov [flenght], esi

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
    syscall
    
    add ecx, 64                     ;move 64 bytes on the allocated memory

    add [flenght], eax              ;add lenght in bits
    add [flenght], eax
    add [flenght], eax
    add [flenght], eax
    add [flenght], eax
    add [flenght], eax
    add [flenght], eax
    add [flenght], eax

    
    cmp esi, eax                     ;if there is no more to read
    je complete3
    cmp edi, eax                     ;if read bytes are less than 64, go to padding
    jg padding
    jmp readalloc                    ;otherwise keep looping

padding:
    sub ecx, 63
    mov edi, 56
    cmp edi, eax                     ;if read bytes are less than 56, go to complete(to add bytes until it's properly padded)
    jg complete
    je complete2                    ;otherwise add 64 bytes(first byte 10000000)
    jl complete4                    ;otherwise add to 64 and add 56

complete:                           ;complete 56
    mov [ecx], byte 80h
    mov edi, 56
    sub edi, eax
    sub edi, 1
    jmp looppad

complete2:                          ;add 64
    mov [ecx], byte 80h
    mov edi, 63
    jmp looppad

complete3:                          ;add 56
    sub ecx, 63
    mov [ecx], byte 80h
    mov edi, 55
    jmp looppad

complete4:                          ;otherwise add to 64 and add 56
    mov [ecx], byte 80h
    mov edi, 64
    sub edi, eax
    add edi, 55

looppad:                            ;add fisrt padding and loop for the rest
    jz addbitlenght
    add ecx, 1
    mov [ecx], byte 0
    sub edi, 1
    jmp looppad

addbitlenght:
    add ecx, 1
    mov ebx, dword[flenght]
    mov [ecx], ebx
    add ecx, 4
    mov ebx, dword[flenght+4]
    mov [ecx], ebx

print:
    mov eax, 4
    mov ebx, 1
    mov ecx, fileallocmem
    mov edx, 100
    syscall
    mov eax, 1
    mov ebx, 0
    syscall