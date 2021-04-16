bits 64

global ft_read
extern __errno_location

segment .text
ft_read:
	push rbp
	mov rbp, rsp
	mov rax, 0
	syscall
	cmp rax, 0
	jl errno_management
	leave
	ret
errno_management:
	neg rax
	push rax
	call __errno_location
	pop rdi
	mov [rax], rdi
	mov rax, -1
	leave
	ret