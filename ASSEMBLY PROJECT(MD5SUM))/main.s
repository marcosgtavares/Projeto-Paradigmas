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
a:              resb 4 
b:              resb 4 
c:              resb 4 
d:              resb 4
x:              resb 4
s:              resb 4
ac:             resb 4 
tlenght:        resb 4    

SECTION .text
global _start

_start:
    mov dword [h3], 1732584193
    mov dword [h2], 4023233417
    mov dword [h1], 2562383102
    mov dword [h0], 271733878
    mov dword [tlenght], 0

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

    add dword [tlenght], 1          ;add lenght in 64 bytes

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

    add dword [tlenght], 1          ;add lenght in 64 bytes

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
    add dword[tlenght], 1           ;add lenght in 64 bytes
    sub ecx, 7
    mov [ecx], byte 4ah
    mov edi, 63
    jmp looppad

complete3:                          ;otherwise add to 64 and add 56
    add dword [tlenght], 1          ;add lenght in 64 bytes
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

    mov edx, fileallocmem

foreachchunk64:                     ;main loop for each 64 bytes
    mov edi, inita
    mov esi, dword [h0]
    mov [edi], esi
    mov edi, initb
    mov esi, dword [h1]
    mov [edi], esi
    mov edi, initc
    mov esi, dword [h2]
    mov [edi], esi
    mov edi, initd
    mov esi, dword [h3]
    mov [edi], esi

    push dword [h0]
    push dword [h1]
    push dword [h2]
    push dword [h3]
    push dword [edx]
    push dword 7
    push dword 3614090360
    ;call ff
    pop dword[h3]
    pop dword[h2]
    pop dword[h1]
    pop dword[h0]

    sub dword [tlenght], 1
    add edx, 64
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
    pop dword [ac]
    pop dword [s]
    pop dword [x]
    pop dword [d]
    pop dword [c]
    pop dword [b]
    pop dword [a]

    mov ebx, dword [b]
    and ebx, dword [c]   
    not dword [b]
    mov eax, dword [b]
    and eax, dword [d]
    or eax, ebx
    
    add dword [a], eax
    mov ebx, dword [x]
    add dword [a], ebx
    mov ebx, dword[s]
    add dword [a], ebx
    mov ebx, dword[ac]
    add dword [a], ebx

    mov ebx, dword[s]
    mov eax, dword[a]
rotateleftf:    
    rol eax, 1                      ;segfault
    sub ebx, 1
    jz rotateleftf

    add eax, dword[b] 

    push eax
    push dword [b]
    push dword [c]
    push dword [d]

    ret

gg:
    pop dword [ac]
    pop dword [s]
    pop dword [x]
    pop dword [d]
    pop dword [c]
    pop dword [b]
    pop dword [a]

    mov ebx, dword [b]
    and ebx, dword [d]   
    not dword [d]
    mov eax, dword [d]
    and eax, dword [c]
    or eax, ebx

    add dword [a], eax
    mov ebx, dword [x]
    add dword [a], ebx
    mov ebx, dword[s]
    add dword [a], ebx
    mov ebx, dword[ac]
    add dword [a], ebx

    mov ebx, dword[s]
    mov eax, dword[a]
rotateleftg:    
    rol eax, 1
    sub ebx, 1
    jz rotateleftg

    add eax, dword[b] 

    push eax
    push dword [b]
    push dword [c]
    push dword [d]

    ret

hh:
    pop dword [ac]
    pop dword [s]
    pop dword [x]
    pop dword [d]
    pop dword [c]
    pop dword [b]
    pop dword [a]

    mov ebx, dword [b]
    xor ebx, dword [c]
    xor ebx, dword [d]

    add dword [a], eax
    mov ebx, dword [x]
    add dword [a], ebx
    mov ebx, dword[s]
    add dword [a], ebx
    mov ebx, dword[ac]
    add dword [a], ebx

    mov ebx, dword[s]
    mov eax, dword[a]
rotatelefth:    
    rol eax, 1
    sub ebx, 1
    jz rotatelefth

    add eax, dword[b] 

    push eax
    push dword [b]
    push dword [c]
    push dword [d]

    ret

ii:
    mov eax, dword [c]
    mov ebx, dword [b]
    not dword [d]
    mov ecx, dword [d]
    or ebx, ecx
    xor eax, ebx

    add dword [a], eax
    mov ebx, dword [x]
    add dword [a], ebx
    mov ebx, dword[s]
    add dword [a], ebx
    mov ebx, dword[ac]
    add dword [a], ebx

    mov ebx, dword[s]
    mov eax, dword[a]
rotatelefti:    
    rol eax, 1
    sub ebx, 1
    jz rotatelefti

    add eax, dword[b] 

    push eax
    push dword [b]
    push dword [c]
    push dword [d]

    ret