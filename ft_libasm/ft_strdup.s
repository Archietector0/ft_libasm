section .text
	extern		_malloc				; подключаем _malloc
	extern		_ft_strlen			; подключаем _ft_strlen
	extern		_ft_strcpy			; подключаем _ft_strcpy
	extern		___error			; подключаем ___error
	global		_ft_strdup			; инициализируем _ft_strdup

_ft_strdup:
	push		rbx					; пушим rbx
	call		_ft_strlen			; вызываем _ft_strlen
	inc			rax					; rax++
	mov			rbx, rdi			; закидываем в rbx rdi
	mov			rdi, rax			; закидываем в rdi rax
	call		_malloc				; вызываем _malloc
	cmp			rax, 0				; сравниваем rax с NULL
	je			_exit				; если равно то прыгаем в _exit
	mov			rdi, rax			; закидываем в rdi rax
	mov			rsi, rbx			; закидываем в rsi rbx
	pop			rbx					; попим rbx
	call		_ft_strcpy			; вызываем _ft_strcpy
	ret								; вывод

_exit:
	pop		rbx						; попим rbx
	push	r15						; пушим r15
	mov		r15, rax				; закидываем в r15 rax
	call	___error				; вызывем ___error
	mov		qword [rax], r15		; разыменовывем rax и закидываем в него rax
	pop		r15						; попим r15
	mov		rax, 0					; закидываем в rax 0
	ret								; вывод
