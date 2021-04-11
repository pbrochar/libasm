bits 64

global ft_isprint

segment .text
ft_isprint:
	push rbp
	mov rbp, rsp
	mov rax, 0x0
	cmp rdi, 0x1f
	jle end
	cmp rdi, 0x7f
	jge end
	mov rax, 0x4000
	jmp end

end:
	leave
	ret
