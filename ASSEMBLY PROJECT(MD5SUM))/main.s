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
digest:         resb 32

SECTION .text
global _start

_start:
    mov dword [h0], 1732584193
    mov dword [h1], 4023233417
    mov dword [h2], 2562383102
    mov dword [h3], 271733878
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
    mov [ecx], byte 80h
    jmp looppad

complete2:                          ;add 64
    add dword[tlenght], 1           ;add lenght in 64 bytes
    sub ecx, 7
    mov [ecx], byte 80h
    mov edi, 63
    jmp looppad

complete3:                          ;otherwise add to 64 and add 56
    add dword [tlenght], 1          ;add lenght in 64 bytes
    mov edi, 64
    sub edi, eax                    
    sub ecx, edi
    mov [ecx], byte 80h
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

    mov edx, fileallocmem

foreachchunk64:                     ;main loop for each 64 bytes
    mov edi, inita                  ;store hn values on registers 
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
                                    ;start round 1
    push dword [h0]                 ;1ff
    push dword [h1]                 ;push the func parameters on the stack
    push dword [h2]
    push dword [h3]
    push dword [edx]                ;move on the vector(64 bytes segment)
    push dword 7
    push dword 3614090360           
    call ff
    pop dword[h0]                   ;retrieve the value of 'a'

    push dword [h3]                 ;2ff
    push dword [h0]
    push dword [h1]
    push dword [h2]
    push dword [edx + 4]
    push dword 12
    push dword 3905402710
    call ff
    pop dword[h3]

    push dword [h2]                 ;3ff
    push dword [h3]
    push dword [h0]
    push dword [h1]
    push dword [edx + 8]
    push dword 17
    push dword 606105819
    call ff
    pop dword[h2]

    push dword [h1]                 ;4ff
    push dword [h2]
    push dword [h3]
    push dword [h0]
    push dword [edx + 12]
    push dword 22
    push dword 3250441966
    call ff
    pop dword[h1]

    push dword [h0]                 ;5ff
    push dword [h1]                 
    push dword [h2]
    push dword [h3]
    push dword [edx + 16]                
    push dword 7
    push dword 4118548399           
    call ff
    pop dword[h0]

    push dword [h3]                 ;6ff
    push dword [h0]
    push dword [h1]
    push dword [h2]
    push dword [edx + 20]
    push dword 12
    push dword 1200080426
    call ff
    pop dword[h3]

    push dword [h2]                 ;7ff
    push dword [h3]
    push dword [h0]
    push dword [h1]
    push dword [edx + 24]
    push dword 17
    push dword 2821735955
    call ff
    pop dword[h2]

    push dword [h1]                 ;8ff
    push dword [h2]
    push dword [h3]
    push dword [h0]
    push dword [edx + 28]
    push dword 22
    push dword 4249261313
    call ff
    pop dword[h1]

    push dword [h0]                 ;9ff
    push dword [h1]                 
    push dword [h2]
    push dword [h3]
    push dword [edx + 32]                
    push dword 7
    push dword 1770035416           
    call ff
    pop dword[h0]

    push dword [h3]                 ;10ff
    push dword [h0]
    push dword [h1]
    push dword [h2]
    push dword [edx + 36]
    push dword 12
    push dword 2336552879
    call ff
    pop dword[h3]

    push dword [h2]                 ;11ff
    push dword [h3]
    push dword [h0]
    push dword [h1]
    push dword [edx + 40]
    push dword 17
    push dword 4294925233
    call ff
    pop dword[h2]

    push dword [h1]                 ;12ff
    push dword [h2]
    push dword [h3]
    push dword [h0]
    push dword [edx + 44]
    push dword 22
    push dword 2304563134
    call ff
    pop dword[h1]

    push dword [h0]                 ;13ff
    push dword [h1]                 
    push dword [h2]
    push dword [h3]
    push dword [edx + 48]                
    push dword 7
    push dword 1804603682           
    call ff
    pop dword[h0]

    push dword [h3]                 ;14ff
    push dword [h0]
    push dword [h1]
    push dword [h2]
    push dword [edx + 52]
    push dword 12
    push dword 4254626195
    call ff
    pop dword[h3]

    push dword [h2]                 ;15ff
    push dword [h3]
    push dword [h0]
    push dword [h1]
    push dword [edx + 56]
    push dword 17
    push dword 2792965006
    call ff
    pop dword[h2]

    push dword [h1]                 ;16ff
    push dword [h2]
    push dword [h3]
    push dword [h0]
    push dword [edx + 60]
    push dword 22
    push dword 1236535329
    call ff
    pop dword[h1]

    push dword [h0]                 ;1gg
    push dword [h1]                 
    push dword [h2]
    push dword [h3]
    push dword [edx + 4]                
    push dword 5
    push dword 4129170786           
    call gg
    pop dword[h0]

    push dword [h3]                 ;2gg
    push dword [h0]
    push dword [h1]
    push dword [h2]
    push dword [edx + 24]
    push dword 9
    push dword 3225465664
    call gg
    pop dword[h3]

    push dword [h2]                 ;3gg
    push dword [h3]
    push dword [h0]
    push dword [h1]
    push dword [edx + 44]
    push dword 14
    push dword 643717713
    call gg
    pop dword[h2]

    push dword [h1]                 ;4gg
    push dword [h2]
    push dword [h3]
    push dword [h0]
    push dword [edx]
    push dword 20
    push dword 3921069994
    call gg
    pop dword[h1]

    push dword [h0]                 ;5gg
    push dword [h1]                 
    push dword [h2]
    push dword [h3]
    push dword [edx + 20]                
    push dword 5
    push dword 3593408605           
    call gg
    pop dword[h0]

    push dword [h3]                 ;6gg
    push dword [h0]
    push dword [h1]
    push dword [h2]
    push dword [edx + 40]
    push dword 9
    push dword 38016083
    call gg
    pop dword[h3]

    push dword [h2]                 ;7gg
    push dword [h3]
    push dword [h0]
    push dword [h1]
    push dword [edx + 60]
    push dword 14
    push dword 3634488961
    call gg
    pop dword[h2]

    push dword [h1]                 ;8gg
    push dword [h2]
    push dword [h3]
    push dword [h0]
    push dword [edx + 16]
    push dword 20
    push dword 3889429448
    call gg
    pop dword[h1]

    push dword [h0]                 ;9gg
    push dword [h1]                 
    push dword [h2]
    push dword [h3]
    push dword [edx + 36]                
    push dword 5
    push dword 568446438           
    call gg
    pop dword[h0]

    push dword [h3]                 ;10gg
    push dword [h0]
    push dword [h1]
    push dword [h2]
    push dword [edx + 56]
    push dword 9
    push dword 3275163606
    call gg
    pop dword[h3]

    push dword [h2]                 ;11gg
    push dword [h3]
    push dword [h0]
    push dword [h1]
    push dword [edx + 12]
    push dword 14
    push dword 4107603335
    call gg
    pop dword[h2]

    push dword [h1]                 ;12gg
    push dword [h2]
    push dword [h3]
    push dword [h0]
    push dword [edx + 32]
    push dword 20
    push dword 1163531501
    call gg
    pop dword[h1]

    push dword [h0]                 ;13gg
    push dword [h1]                 
    push dword [h2]
    push dword [h3]
    push dword [edx + 52]                
    push dword 5
    push dword 2850285829           
    call gg
    pop dword[h0]

    push dword [h3]                 ;14gg
    push dword [h0]
    push dword [h1]
    push dword [h2]
    push dword [edx + 8]
    push dword 9
    push dword 4243563512
    call gg
    pop dword[h3]

    push dword [h2]                 ;15gg
    push dword [h3]
    push dword [h0]
    push dword [h1]
    push dword [edx + 28]
    push dword 14
    push dword 1735328473
    call gg
    pop dword[h2]

    push dword [h1]                 ;16gg
    push dword [h2]
    push dword [h3]
    push dword [h0]
    push dword [edx + 48]
    push dword 20
    push dword 2368359562
    call gg
    pop dword[h1]

    push dword [h0]                 ;1hh
    push dword [h1]                 
    push dword [h2]
    push dword [h3]
    push dword [edx + 20]                
    push dword 4
    push dword 4294588738           
    call hh
    pop dword[h0]

    push dword [h3]                 ;2hh
    push dword [h0]
    push dword [h1]
    push dword [h2]
    push dword [edx + 32]
    push dword 11
    push dword 2272392833
    call hh
    pop dword[h3]

    push dword [h2]                 ;3hh
    push dword [h3]
    push dword [h0]
    push dword [h1]
    push dword [edx + 44]
    push dword 16
    push dword 1839030562
    call hh
    pop dword[h2]

    push dword [h1]                 ;4hh
    push dword [h2]
    push dword [h3]
    push dword [h0]
    push dword [edx + 56]
    push dword 23
    push dword 4259657740
    call hh
    pop dword[h1]

    push dword [h0]                 ;5hh
    push dword [h1]                 
    push dword [h2]
    push dword [h3]
    push dword [edx + 4]                
    push dword 4
    push dword 2763975236           
    call hh
    pop dword[h0]

    push dword [h3]                 ;6hh
    push dword [h0]
    push dword [h1]
    push dword [h2]
    push dword [edx + 16]
    push dword 11
    push dword 1272893353
    call hh
    pop dword[h3]

    push dword [h2]                 ;7hh
    push dword [h3]
    push dword [h0]
    push dword [h1]
    push dword [edx + 28]
    push dword 16
    push dword 4139469664
    call hh
    pop dword[h2]

    push dword [h1]                 ;8hh
    push dword [h2]
    push dword [h3]
    push dword [h0]
    push dword [edx + 40]
    push dword 23
    push dword 3200236656
    call hh
    pop dword[h1]

    push dword [h0]                 ;9hh
    push dword [h1]                 
    push dword [h2]
    push dword [h3]
    push dword [edx + 52]                
    push dword 4
    push dword 681279174           
    call hh
    pop dword[h0]

    push dword [h3]                 ;10hh
    push dword [h0]
    push dword [h1]
    push dword [h2]
    push dword [edx]
    push dword 11
    push dword 3936430074
    call hh
    pop dword[h3]

    push dword [h2]                 ;11hh
    push dword [h3]
    push dword [h0]
    push dword [h1]
    push dword [edx + 12]
    push dword 16
    push dword 3572445317
    call hh
    pop dword[h2]

    push dword [h1]                 ;12hh
    push dword [h2]
    push dword [h3]
    push dword [h0]
    push dword [edx + 18]
    push dword 23
    push dword 76029189
    call hh
    pop dword[h1]

    push dword [h0]                 ;13hh
    push dword [h1]                 
    push dword [h2]
    push dword [h3]
    push dword [edx + 36]                
    push dword 4
    push dword 3654602809           
    call hh
    pop dword[h0]

    push dword [h3]                 ;14hh
    push dword [h0]
    push dword [h1]
    push dword [h2]
    push dword [edx + 48]
    push dword 11
    push dword 3873151461
    call hh
    pop dword[h3]

    push dword [h2]                 ;15hh
    push dword [h3]
    push dword [h0]
    push dword [h1]
    push dword [edx + 60]
    push dword 16
    push dword 530742520
    call hh
    pop dword[h2]

    push dword [h1]                 ;16hh
    push dword [h2]
    push dword [h3]
    push dword [h0]
    push dword [edx + 8]
    push dword 23
    push dword 3299628645
    call hh
    pop dword[h1]

    push dword [h0]                 ;1ii
    push dword [h1]                 
    push dword [h2]
    push dword [h3]
    push dword [edx]                
    push dword 6
    push dword 4096336452           
    call ii
    pop dword[h0]

    push dword [h3]                 ;2ii
    push dword [h0]
    push dword [h1]
    push dword [h2]
    push dword [edx + 28]
    push dword 10
    push dword 1126891415
    call ii
    pop dword[h3]

    push dword [h2]                 ;3ii
    push dword [h3]
    push dword [h0]
    push dword [h1]
    push dword [edx + 56]
    push dword 15
    push dword 2878612391
    call ii
    pop dword[h2]

    push dword [h1]                 ;4ii
    push dword [h2]
    push dword [h3]
    push dword [h0]
    push dword [edx + 20]
    push dword 21
    push dword 4237533241
    call ii
    pop dword[h1]

    push dword [h0]                 ;5ii
    push dword [h1]                 
    push dword [h2]
    push dword [h3]
    push dword [edx + 48]                
    push dword 6
    push dword 1700485571           
    call ii
    pop dword[h0]

    push dword [h3]                 ;6ii
    push dword [h0]
    push dword [h1]
    push dword [h2]
    push dword [edx + 12]
    push dword 10
    push dword 2399980690
    call ii
    pop dword[h3]

    push dword [h2]                 ;7ii
    push dword [h3]
    push dword [h0]
    push dword [h1]
    push dword [edx + 40]
    push dword 15
    push dword 4293915773
    call ii
    pop dword[h2]

    push dword [h1]                 ;8ii
    push dword [h2]
    push dword [h3]
    push dword [h0]
    push dword [edx + 4]
    push dword 21
    push dword 2240044497
    call ii
    pop dword[h1]

    push dword [h0]                 ;9ii
    push dword [h1]                 
    push dword [h2]
    push dword [h3]
    push dword [edx + 32]                
    push dword 6
    push dword 1873313359           
    call ii
    pop dword[h0]

    push dword [h3]                 ;10ii
    push dword [h0]
    push dword [h1]
    push dword [h2]
    push dword [edx + 60]
    push dword 10
    push dword 4264355552
    call ii
    pop dword[h3]

    push dword [h2]                 ;11ii
    push dword [h3]
    push dword [h0]
    push dword [h1]
    push dword [edx + 24]
    push dword 15
    push dword 2734768916
    call ii
    pop dword[h2]

    push dword [h1]                 ;12ii
    push dword [h2]
    push dword [h3]
    push dword [h0]
    push dword [edx + 52]
    push dword 21
    push dword 1309151649
    call ii
    pop dword[h1]

    push dword [h0]                 ;13ii
    push dword [h1]                 
    push dword [h2]
    push dword [h3]
    push dword [edx + 16]                
    push dword 6
    push dword 4149444226           
    call ii
    pop dword[h0]                   

    push dword [h3]                 ;14ii
    push dword [h0]
    push dword [h1]
    push dword [h2]
    push dword [edx + 44]
    push dword 10
    push dword 3174756917
    call ii
    pop dword[h3]

    push dword [h2]                 ;15ii
    push dword [h3]
    push dword [h0]
    push dword [h1]
    push dword [edx + 8]
    push dword 15
    push dword 718787259
    call ii
    pop dword[h2]

    push dword [h1]                 ;16ii
    push dword [h2]
    push dword [h3]
    push dword [h0]
    push dword [edx + 36]
    push dword 21
    push dword 3951481745
    call ii
    pop dword[h1]

    mov edi, dword[h0]              ;increment hn
    add edi, dword[inita]
    mov dword[h0], edi
    mov edi, dword[h1]
    add edi, dword[initb]
    mov dword[h1], edi
    mov edi, dword[h2]
    add edi, dword[initc]
    mov dword[h2], edi
    mov edi, dword[h3]
    add edi, dword[initd]
    mov dword[h3], edi

    
    add edx, 64                     ;move to the next 64 byte segment
    sub dword [tlenght], 1
    jnz foreachchunk64               ;keep doing it if there's more chunks to process

hntohex:
    mov edx, digest
    mov edi, h0
    mov esi, 4

digestloop0:    
    mov al, byte[edi]
    
    call to2characters
    mov byte[edx], bh
    mov byte[edx+1], ch
    add edx, 2
    add edi, 1
    sub esi, 1
    jnz digestloop0

    mov edi, h1
    mov esi, 4

digestloop1:    
    mov al, byte[edi]
    
    call to2characters
    mov byte[edx], bh
    mov byte[edx+1], ch
    add edx, 2
    add edi, 1
    sub esi, 1
    jnz digestloop1

    mov edi, h2
    mov esi, 4

digestloop2:    
    mov al, byte[edi]
    
    call to2characters
    mov byte[edx], bh
    mov byte[edx+1], ch
    add edx, 2
    add edi, 1
    sub esi, 1
    jnz digestloop2

    mov edi, h3
    mov esi, 4

digestloop3:    
    mov al, byte[edi]
    
    call to2characters
    mov byte[edx], bh
    mov byte[edx+1], ch
    add edx, 2
    add edi, 1
    sub esi, 1
    jnz digestloop3

print:
    mov eax, 4
    mov ebx, 1
    mov ecx, digest
    mov edx, 32
    int 80h
   
    mov eax, 1
    mov ebx, 0
    int 80h


to2characters:                      ;transform a byte in 2 hex caracters
    mov ah, al
    shr ah, 4
    and al, 0fh
    cmp ah, 10
    jl numappendh
    jmp charappendh

rethere:
    cmp al, 10
    jl numappendl
    jmp charappendl

numappendh:
    mov bh, 48
    add bh, ah
    jmp rethere

charappendh:
    sub ah, 9
    mov bh, 96
    add bh, ah
    jmp rethere

numappendl:
    mov ch, 48
    add ch, al
    ret

charappendl:
    sub al, 9
    mov ch, 96
    add ch, al
    ret

ff:                                 ;tranformation functions
    pop esi                         ;saving return adress
    pop dword [ac]
    pop dword [s]
    pop dword [x]
    pop dword [d]
    pop dword [c]
    pop dword [b]
    pop dword [a]

    mov ebx, dword [b]
    and ebx, dword [c]  
    mov eax, dword [b]
    not eax
    and eax, dword [d]
    or eax, ebx
    
    add dword [a], eax
    mov ebx, dword [x]
    add dword [a], ebx
    mov ebx, dword[ac]
    add dword [a], ebx

    mov ebx, dword[s]
    mov eax, dword[a]
rotateleftf:    
    rol eax, 1                      ;segfault
    sub ebx, 1
    jnz rotateleftf

    add eax, dword[b] 

    push eax

    push esi                        ;return adress
    ret

gg:
    pop esi                         ;saving return adress

    pop dword [ac]
    pop dword [s]
    pop dword [x]
    pop dword [d]
    pop dword [c]
    pop dword [b]
    pop dword [a]

    mov ebx, dword [b]
    and ebx, dword [d]
    mov eax, dword [c]   
    not eax
    and eax, dword [d]
    or eax, ebx

    add dword [a], eax
    mov ebx, dword [x]
    add dword [a], ebx
    mov ebx, dword[ac]
    add dword [a], ebx

    mov ebx, dword[s]
    mov eax, dword[a]
rotateleftg:    
    rol eax, 1
    sub ebx, 1
    jnz rotateleftg

    add eax, dword[b] 

    push eax

    push esi                        ;return adress
    ret

hh:
    pop esi                         ;saving return adress

    pop dword [ac]
    pop dword [s]
    pop dword [x]
    pop dword [d]
    pop dword [c]
    pop dword [b]
    pop dword [a]

    mov eax, dword [b]
    xor eax, dword [c]
    xor eax, dword [d]

    add dword [a], eax
    mov ebx, dword [x]
    add dword [a], ebx
    mov ebx, dword[ac]
    add dword [a], ebx

    mov ebx, dword[s]
    mov eax, dword[a]
rotatelefth:    
    rol eax, 1
    sub ebx, 1
    jnz rotatelefth

    add eax, dword[b] 

    push eax
    
    push esi                        ;return adress
    ret

ii:
    pop esi                         ;saving return adress

    mov eax, dword [c]
    mov ebx, dword [b]
    mov ecx, dword [d]
    not ecx
    or ebx, ecx
    xor eax, ebx

    add dword [a], eax
    mov ebx, dword [x]
    add dword [a], ebx
    mov ebx, dword[ac]
    add dword [a], ebx

    mov ebx, dword[s]
    mov eax, dword[a]
rotatelefti:    
    rol eax, 1
    sub ebx, 1
    jnz rotatelefti

    add eax, dword[b] 

    push eax

    push esi                        ;return adress
    ret