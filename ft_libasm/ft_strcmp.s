section .text
	global _ft_strcmp					; инициализируем _ft_strcmp

_ft_strcmp:
	mov	rcx, 0							; зануляем rcx
	jmp	_loop							; прыгаем в _loop без условий

_loop:
	mov 	al, byte[rdi + rcx]			; перемещаем в al символ rdi + rax
	cmp	al, 0							; сравниваем al с концом строки
	je	_result							; если равно концу строки, то прыгаем в _result
	mov 	dl, byte[rsi + rcx]			; перемещаем в dl символ rsi + rax
	cmp	dl, 0							; сравниваем dl с концом строки
	je	_result							; если равно концу строки, то прыгаем в _result
	cmp	al, dl							; сравниваем al с dl
	jne	_result							; если не равны, то прыгаем в _result
	inc	rcx								; rax++
	jmp	_loop							; прыгаем в _loop

_result:
	mov	dl, byte[rsi + rcx]				; переносим в dl символ rsi + rcx
	movzx	rdi, dl						; переводим dl в 64битный регистр
	movzx	rax, al						; переводим al в 64битный регистр
	sub	rax, rdi						; вычитаем из rax rdi
	ret									; возвращаем разницу
