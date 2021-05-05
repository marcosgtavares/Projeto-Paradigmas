SECTION .data
flenght dq 0
firstpad db 128
npad db 0

SECTION .bss
initial_break: resb 8
current_break: resb 8
new_break: resb 8

SECTION .text
global _start

_start:
    mov rax, 0ch                    ;system call brk
    mov rdi, 0                      ;invalid address to get break
    syscall
    mov [current_break], rax
    mov [initial_break], rax

    mov rax, 0ch                    ;system call brk
    mov [rdi], initial_break        
    add rdi, 64                     ;allocate 512 bits   
    syscall
    mov [new_break], rax
    add [new_break], 64
    mov [current_break], rax

    mov rax, 2                      ;open file 
    mov rdi, [rsp+4]
    mov rsi, O_RDONLY
    mov rdx, 0644o
    syscall

    mov rdi, rax                    ;read 512bit from the file if possible
    mov rax, 0
    mov [rsi], initial_break
    mov rdx, 64
    syscall

    add [flenght], rax                ;add lenght in bits
    add [flenght], rax
    add [flenght], rax
    add [flenght], rax
    add [flenght], rax
    add [flenght], rax
    add [flenght], rax
    add [flenght], rax

    cmp 64, rax
    jg padding                      ;if read bytes are less than 64, go to padding

readalloc:                          ;read and allocate memory until the end                         
    mov rax, 0ch                    ;system call brk
    mov rdi, new_break        
    syscall
    add [new_break], 64               ;512 bits
    mov [current_break], rax
    
    mov rdi, rax                    ;read 512bit from the file if possible
    mov rax, 0
    mov rsi, current_break
    mov rdx, 64
    syscall
    
    add [flenght], rax                ;add lenght in bits
    add [flenght], rax
    add [flenght], rax
    add [flenght], rax
    add [flenght], rax
    add [flenght], rax
    add [flenght], rax
    add [flenght], rax

    cmp 0, rax                      ;if there is no more to read
    je dealloc
    cmp 64, rax                     ;if read bytes are less than 64, go to padding
    jg padding
    jmp readalloc                   ;otherwise keep looping

dealloc:
    mov rax, 0ch                    ;system call brk
    mov rdi, current_break        
    syscall
    mov [new_break], current_break
    jmp complete3                   ;add 56 bytes

padding:
    cmp 56, rax                     ;if read bytes are less than 56, go to complete(to add bytes until it's properly padded)
    jg complete
    je complete2                    ;otherwise add 64 bytes(first byte 10000000)
    jl complete4                    ;otherwise add to 64 and add 56

complete:                           ;complete 56
    mov r8, 56
    sub r8, rax
    sub [new_break], 64
    add [new_break], r8
    mov rax, 0ch                    ;system call brk
    mov rdi, new_break        
    syscall
    mov [current_break], rax
    mov [current_break], firstpad
    add [current_break], 1
    sub r8, 1
looppad:                            ;add fisrt padding and loop for the rest
    cmp r8, 0
    je addbitlenght
    mov [current_break], npad
    add current_break, 1
    sub r8, 1
    jmp looppad

complete2:                          ;add 64
    mov rax, 0ch                    ;system call brk
    mov rdi, new_break        
    syscall
    mov new_break, rax
    mov current_break, rax
    mov [current_break], firstpad
    add current_break, 1
    mov r8, 63
looppad2:                            ;add fisrt padding and loop for the rest
    cmp r8, 0
    je addbitlenght
    mov [current_break], npad
    add current_break, 1
    sub r8, 1
    jmp looppad2

complete3:                          ;add 56
    add new_break, 56
    mov rax, 0ch                    ;system call brk
    mov rdi, new_break        
    syscall
    mov current_break, rax
    mov [current_break], firstpad
    add current_break, 1
    mov r8, 55
looppad3:                            ;add fisrt padding and loop for the rest
    cmp r8, 0
    je addbitlenght
    mov [current_break], npad
    add current_break, 1
    sub r8, 1
    jmp looppad3
complete4:                          ;otherwise add to 64 and add 56
    mov r8, 64
    sub r8, rax
    sub new_break, 64
    add new_break, r8
    mov rax, 0ch                    ;system call brk
    mov rdi, new_break        
    syscall
    add new_break, 56
    mov current_break, rax
    mov rax, 0ch                    ;system call brk
    mov rdi, new_break        
    syscall
    mov [current_break], firstpad
    add current_break, 1
    add r8, 55

looppad4:                            ;add fisrt padding and loop for the rest
    cmp r8, 0
    je addbitlenght
    mov [current_break], npad
    add current_break, 1
    sub r8, 1
    jmp looppad4

addbitlengh:
    add new_break, 8
    mov rax, 0ch                    ;system call brk
    mov rdi, new_break        
    syscall
    mov current_break, rax
    mov [current_break], flenght

print:
    mov rax, 1
    mov rdi, 1
    mov rsi, initial_break
    mov r9, 0
    add r9, new_break
    sub r9, initial_break
    mov rdx, r9
    syscall
    mov rax, 0ch                    ;system call brk
    mov rdi, initial_break 
    syscall
    mov rax, 60
    mov rdi, 0
    syscall