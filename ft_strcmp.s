section .text
	global _ft_strcmp
_ft_strcmp:
	mov rax, 0
	mov rdx, 0
	mov rcx, 0
_again:
	cmp rdi, 0
	je _err
	cmp rsi, 0
	je _err
	mov dl, byte[rdi + rax]
	mov cl, byte[rsi + rax]
	cmp dl, 0
	je _ret
	cmp cl, 0
	je _ret
	cmp dl, cl
	jne _ret
	inc rax
	jmp _again

_ret:
	sub rdx, rcx
	mov rax, rdx
	ret
_err:
	mov rax, -1
	ret