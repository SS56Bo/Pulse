bits 16]
[org 0x7c00]

boot:
	mov si,hello
	mov ah,0x0E
.loop:
	lodsb
	or al,al
	jz .next_exec
	int 0x10
	jmp .loop

.next_exec:
	jmp .message

.message:
	mov si,load_message
	mov ah,0x0E

.exec_loop:
	lodsb
	or al,al 
	jz .halt
	int 0x10
	jmp .exec_loop

.halt:
	cli
	hlt

hello: db "Hello from Kernel!", 0x0D, 0x0A, 0
load_message: db "Loading 32-bit mode....", 0x0D, 0x0A, 0

times 510-($-$$) db 0
dw 0xAA55
