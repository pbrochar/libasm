bits 64

global ft_list_push_front
extern malloc


segment .text
ft_list_push_front:
	push rbp
	mov rbp, rsp
	push rsi
	push rdi
	mov rdi, 16
	call malloc
	cmp rax, 0
	jz end
	pop rdi
	pop rsi
	mov [rax], rsi
	mov rbx, [rdi]
	mov [rax + 8], rbx
	mov [rdi], rax
	jmp end
end:
	leave
	ret