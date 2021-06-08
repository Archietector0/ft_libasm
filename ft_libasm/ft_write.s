section .text
	global		_ft_write
	extern		___error

_ft_write:
	mov			rax, 0x2000004
	syscall
	jc			_syserror
	ret

_syserror:
	push		r15
	mov			r15, rax
	call 		___error
	mov 		qword [rax], r15
	pop			r15
	mov			rax, -1
	ret
