section .text
	global _ft_strdup
	extern _ft_strlen
	extern _ft_strcpy
	extern ___error
	extern _malloc
_ft_strdup:
	cmp rdi, 0
	je _err
	push rdi
	call _ft_strlen
	inc rax
	mov rdi, rax
	call _malloc
	mov rdi, rax
	cmp rdi, 0
	je _err
	pop rsi
	call _ft_strcpy
	ret
_err:
	mov rax, 0
	ret