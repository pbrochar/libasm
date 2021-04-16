bits 64

global ft_write
extern __errno_location

segment .text
ft_write:
	push rbp
	mov rbp, rsp
	mov rax, 1
	syscall
	cmp rax, 0
	jl error
	leave
	ret
error:
	neg rax
	push rax
	call __errno_location
	pop rdi
	mov [rax], rdi
	mov rax, -1
	leave
	ret