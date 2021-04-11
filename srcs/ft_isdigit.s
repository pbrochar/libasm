bits 64

global ft_isdigit

segment .text
ft_isdigit:
	push rbp
	mov rbp, rsp
	add rsp, 0x8
	mov DWORD [rbp - 0x4], edi
	mov rax, 2048
	cmp DWORD [rbp - 0x4], 0x30
	jl neg_ret
	cmp DWORD [rbp - 0x4], 0x39
	jg neg_ret
	jmp end
end:
	leave
	ret

neg_ret:
	mov rax, 0
	jmp end