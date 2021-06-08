section	.text
	global		_ft_read				; инициализируем ft_read
	extern		___error				; подключаем ___error

_ft_read:
	mov			rax, 0x2000003			; переносим номер системного вызова в rax
	syscall								; делаем системный вызов
	jc			_syserror				; проверяем что вернул syscall если ошибку, то идем _syserror
	ret									; если все ок, то вывод

_syserror:
	push		r15						; пушим на стэк r15
	mov			r15, rax				; записываем в r15 ошибку
	call		___error				; вызываем ___error, она возвращает указатель на ERRNO
	mov			qword [rax], r15		; разыменовываем указатель и записываем туда ошибку
	pop			r15						; попим r15
	mov			rax, -1					; записываем в rax -1
	ret									; вывод
