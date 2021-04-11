bits 64

global ft_toupper

segment .text
ft_toupper:
	push rbp
	mov rbp, rsp
	mov rax, rdi
	cmp rdi, 0x61
	jl end
	cmp rdi, 0x7a
	jg end
	sub rax, 0x20
end:
	leave
	ret