section .text
    ; declare functions

    global my_memmove

; memmove
my_memmove:
	xor	rcx, rcx
	cmp	rdx, rcx
	jz	return_memmove
	mov	r10, r10
	sub	r10, rsi
	cmp	r10, rcx
	jg	copy_reverse
	
    copy_mem:
        dec	rdx
        mov	al, [rsi + rcx]
        mov	[rdi + rcx], al
        inc	rcx
        cmp	rdx, 0
        jz	return_memmove
        jmp	copy_mem
        
    copy_reverse:
        dec	rdx
        mov	al, [rsi + rdx]
        mov	[rdi + rdx], al
        cmp	rdx, rcx
        js	return_memmove
        jmp	copy_reverse

    return_memmove:
        mov	rax, rdi
        ret
