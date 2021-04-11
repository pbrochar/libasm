bits 64

global ft_isascii

segment .text
ft_isascii:
	push rbp
	mov rbp, rsp
	mov rax, 0x0
	cmp rdi, 0x0
	jl end
	cmp rdi, 0x7f
	jg end
	mov rax, 0x1
	jmp end
end:
	leave
	ret