SECTION .data
SECTION .bss
fileallocmem:   resb 2000000
flenght:        resb 8
inita:          resb 4
initb:          resb 4
initc:          resb 4
initd:          resb 4
h0:             resb 4 
h1:             resb 4 
h2:             resb 4 
h3:             resb 4 
tlenght:        resb 4    
nofww:          resb 4 

SECTION .text
global _start

_start:
    mov dword [h0], 67452301h
    mov dword [h1], 4023233417
    mov dword [h2], 98badcfeh
    mov dword [h3], 10325476h
    mov dword [tlenght], 0
    mov dword [nofww], 16

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

    add dword [tlenght], 1                ;add lenght in 64 bytes

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

    add dword [tlenght], 1                ;add lenght in 64 bytes

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
    add dword[tlenght], 1                ;add lenght in 64 bytes
    sub ecx, 7
    mov [ecx], byte 4ah
    mov edi, 63
    jmp looppad

complete3:                          ;otherwise add to 64 and add 56
    add dword [tlenght], 1                ;add lenght in 64 bytes
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

foreachchunk64:                     ;main loop for each 64 bytes
foreach4bytes:                      ;loop for each 4 bytes


    sub dword [nofww], 1
    jz foreach4bytes

    add dword [nofww], 16
    sub dword [tlenght], 1
    jz foreachchunk64

appendhn:

print:
    mov eax, 4
    mov ebx, 1
    mov ecx, fileallocmem
    mov edx, 1000000
    int 80h
   
    mov eax, 1
    mov ebx, 0
    int 80h

ff:
    mov ebx, b
    and ebx, c   
    mov eax, 4294967295
    xor eax, b
    and eax, d
    or eax, ebx
    
    add a, eax
    add a, x
    add a, s
    add a, ac

gg:
    mov ebx, b
    and ebx, d   
    mov eax, 4294967295
    xor eax, d
    and eax, c
    or eax, ebx

    add a, eax
    add a, x
    add a, s
    add a, ac

hh:
    mov ebx, b
    xor ebx, c
    xor ebx, d

    add a, eax
    add a, x
    add a, s
    add a, ac

ii:
    mov eax, c
    mov ebx, b
    mov ecx, 4294967295
    xor ecx, d
    or ebx, ecx
    xor eax, ebx

    add a, eax
    add a, x
    add a, s
    add a, ac