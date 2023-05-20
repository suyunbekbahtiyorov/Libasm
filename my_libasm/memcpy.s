section .text
    ; declare functions

    global my_memcpy

my_memcpy:
	xor	rcx, rcx
    
    loop_memcpy:
        cmp	rcx, rdx
        jz	return_memcpy
        mov	al, byte[rsi + rcx]
        mov	[rdi + rcx], byte al
        inc	rcx
        jmp	loop_memcpy

    return_memcpy:
        mov	rax, rdi
        ret
