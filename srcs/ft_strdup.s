bits 64

global ft_strdup
extern malloc
extern ft_strlen
extern ft_strcpy
extern __errno_location

segment .text
ft_strdup:
	push rbp,
	mov rbp, rsp
	push rdi
	call ft_strlen
	mov rdi, rax
	inc rdi
	call malloc
	cmp rax, 0
	jl errno_management
	mov rdi, rax
	pop rsi
	call ft_strcpy
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
