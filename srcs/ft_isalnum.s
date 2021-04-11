bits 64

global ft_isalnum
extern ft_isdigit
extern ft_isalpha

segment .text
ft_isalnum:
	push rbp
	mov rbp, rsp
	push rdi
	call ft_isdigit
	cmp rax, 0x0
	jne pos_ret
	call ft_isalpha
	cmp rax, 0x0
	jne pos_ret
	mov rax, 0x0
	jmp end

pos_ret:
	mov rax, 0x8
	jmp end

end:
	pop rdi
	leave
	ret
