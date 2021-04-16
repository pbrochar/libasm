bits 64

global ft_strcmp
 
segment .text
ft_strcmp:
	push rbp
	mov rbp, rsp
	mov rax, 0
loop_parse:
	mov al, BYTE [rdi]
	mov ah, BYTE [rsi]
	cmp ah, al
	ja not_equal_sup
	jb not_equal_inf
	cmp al, 0
	je end
	cmp ah, 0
	je end
	inc rdi
	inc rsi
	jmp loop_parse
not_equal_sup:
	mov rax, -1
	jmp end
not_equal_inf:
	mov rax, 1
	jmp end
end:
	leave
	ret