section .text
	global _ft_read
	extern ___error
_ft_read:
	mov rax, 0x2000003
	syscall
	jnb _return
	push rax
	call ___error
	pop r10
	mov [rax], r10
	mov rax, -1
	ret
_return:
	ret