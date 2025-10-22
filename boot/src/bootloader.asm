;; This is a bootloader

[bits 16]        ;; 
[org 0x07C00]    ;; tells the assembler that your code will be loaded at memory address 0x07C00

%define ENDL 0x0D, 0x0A

start:
    jmp main

main:
    mov ax, 0    ; ax is a general purpose registers
    mov ds, ax   ; ds is a segment register
    mov es, ax   ; ds is a segment register
    
    ;stack
    mov ss, ax
    mov sp, 0x07C00

    ; print string
    mov si, msg_hello
    call puts

    hlt  ;; halt the cpu

puts:
    push si 
    push ax 


.loop:
    lodsb
    or al, al
    jz .done

    mov ah, 0x0E
    mov bh, 0x00
    int 0x10

    jmp .loop

.done:
    pop si
    pop ax
    ret

.halt:
    jmp .halt   ;; jumps to the same .jmp over and over again

msg_hello: db 'Hello from the Kernel!', ENDL, 0

times 510-($-$$) db 0   ;; ensures boot sector is exactly 512 bytes long
                        ;; ($-$$) = number of bytes assembled so far
                        ;; db 0 means "define byte 0"

dw 0xAA55       ;; boot signature -- two bytes = AA and 55
