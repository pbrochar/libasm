bits 64

global ft_putchar

segment .text
ft_putchar:
	push rbp
	mov rbp, rsp
	mov [rsi], rdi
	mov edi, 1
	mov edx, 1
	mov eax, 1
	syscall
	leave
	ret