bits 64

global ft_isalpha

segment .text
ft_isalpha:
	push rbp
	mov rbp, rsp
	add rsp, 0x8
	mov DWORD [rbp - 0x4], edi
	mov rax, 1024
	cmp DWORD [rbp - 0x4], 0x41
	jl neg_ret
	cmp DWORD [rbp - 0x4], 0x7b
	jg neg_ret
	cmp DWORD [rbp - 0x4], 0x5a
	jle end
	cmp DWORD [rbp - 0x4], 0x61
	jl neg_ret
	jmp end
neg_ret:
	mov rax, 0x0
end:
	leave
	ret