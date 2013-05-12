;
; FizzBuzz ASM 32bit version
;
section .data
 
i:              db 0
 
k:              dd 0
 
newline:        db 0xa
 
section .text
 
global _start
_start:
        call main
        mov al, 1
        mov bl, 0
        int 0x80
 
main:
        mov BYTE [i], 1
        mov bl, 1
count_loop:
        mov BYTE [k], 0
       
        mov al, [i]
        mov dl, 0
        mov ecx, 3
        idiv ecx
       
        cmp dl, 0
        jne no_fizz
       
        or BYTE [k], 1
       
        push DWORD 0x7a7a6966
        mov al, 4
        mov ecx, esp
        mov dl, 4
        int 0x80
        add esp, 4
       
no_fizz:
       
        mov al, [i]
        mov dl, 0
        mov ecx, 5
        idiv ecx
       
        cmp edx, 0
        jne no_buzz
       
        or BYTE [k], 1
       
        push DWORD 0x7a7a7562
        mov al, 4
        mov ecx, esp
        mov dl, 4
        int 0x80
        add esp, 4
       
no_buzz:
       
        cmp BYTE [k], 0
        jne no_number
       
        call print_number
       
no_number:
       
        mov al, 4
        mov bl, 1
        mov ecx, newline
        mov dl, 1
        int 0x80
       
        inc BYTE [i]
        cmp BYTE [i], 100
        jle count_loop
       
        ret
 
;
print_number:
        push DWORD [i]
        push BYTE 0
       
        ;       at = [esp + 4]
        ;       block = [esp]
       
        mov bl, 4
       
number_loop:
        mov eax, [esp + 4]
        mov dl, 0
        mov ecx, 10
        idiv ecx
       
        mov [esp + 4], al
       
        add dl, 0x30
       
        dec bl
        mov [esp + ebx], dl
       
        cmp al, 0
        jne number_loop
        ;
       
        lea ecx, [esp + ebx]
        mov dl, 4
        sub dl, bl
       
        mov al, 4
        mov bl, 1
        int 0x80
       
        add esp, 8
        ret

