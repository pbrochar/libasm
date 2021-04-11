bits 64

global ft_tolower

segment .text
ft_tolower:
	push rbp
	mov rbp, rsp
	mov rax, rdi
	cmp rdi, 0x41
	jl end
	cmp rdi, 0x5a
	jg end
	add rax, 0x20
end:
	leave
	ret