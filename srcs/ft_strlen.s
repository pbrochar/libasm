bits 64

global ft_strlen

segment .text
ft_strlen:
	push rbp
	mov rbp, rsp
	xor rcx, rcx
loop:
	cmp BYTE [rdi + rcx], 0
	jz end
	inc rcx
	jmp loop
end:
	mov rax, rcx
	leave
	ret