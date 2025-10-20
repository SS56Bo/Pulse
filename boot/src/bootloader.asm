;; This is a bootloader

bits 16
[org 0x07C00]    ;; tells the assembler that your code will be loaded at memory address 0x07C00

main:
    hlt  ;; halt the cpu

.halt:
    jmp .halt   ;; jumps to the same .jmp over and over again

times 510-($-$$) db 0   ;; ensures boot sector is exactly 512 bytes long
                        ;; ($-$$) = number of bytes assembled so far
                        ;; db 0 means "define byte 0"

dw 0xAA55       ;; boot signature -- two bytes ()