bits 64

global ft_putstr
extern ft_putchar

segment .text
ft_putstr:
	push rbp
	mov rbp, rsp
	sub rsp, 0x10
	mov edx, 0x1
	mov QWORD [rbp - 0x8], rdi
	mov DWORD [rbp - 0xc], 0x0
loop:
	mov rsi, QWORD [rbp - 0x8]
	movsx rcx, DWORD [rbp - 0xc]
	cmp BYTE[rsi + rcx], 0x0
	je end
	add rsi, rcx
	mov edi, 0x1
	mov eax, 0x1
	syscall
	inc DWORD [rbp - 0xc]
	jmp loop
end:
	leave
	ret

	
