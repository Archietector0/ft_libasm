section .text
	global	_ft_strcpy			; инициализируем _ft_strcpy

_ft_strcpy:
	mov	rcx, 0					; зануляем rcx
	jmp	_loop					; прыгаем в _loop

_loop:
	cmp	byte[rsi + rcx], 0		; срвниваем символ rsi + rcx с концом строки
	je	_ret					; если равно, то прыгаем в _ret
	mov	dl, byte[rsi + rcx]		; переносим в dl символ rsi + rcx
	mov	byte[rdi + rcx], dl		; переносим в rdi + rcx dl
	inc	rcx						; rcx++
	jmp	_loop					; прыгаем в _loop

_ret:
	mov	byte[rdi + rcx], 0		; переносим в rdi + rcx символ пустой строки
	mov	rax, rdi				; переносим в rax указатель на rdi
	ret							; вывод
