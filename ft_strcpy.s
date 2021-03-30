section .text
	global _ft_strcpy
_ft_strcpy:
	mov rax, 0
_again:
	mov cl, byte[rsi + rax]
	cmp cl, 0
	je _return
	mov byte[rdi + rax], cl
	inc rax
	jmp _again
_return:
	mov rax, rdi
	ret