section .text
	global	_ft_strlen		; инициализируем _ft_strlen

_ft_strlen:
	mov	rax, 0				; зануляем счетчик rax
	jmp	_loop				; заходим в цикл

_loop:
	cmp	byte[rdi + rax], 0	; сравниваем символ с '\0'
	je	_ret				; если равен то return(rax)
	inc	rax					; rax++
	jmp	_loop				; заходим в цикл

_ret:
	ret						; return(rax)
