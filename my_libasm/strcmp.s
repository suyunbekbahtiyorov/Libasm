section .text
    ; declare functions

    global my_strcmp

; strcmp
my_strcmp:
	xor	rcx, rcx    
	
    count_cmp:      
        mov	al, [rdi + rcx]     

        cmp	byte[rsi + rcx], 0  
        jz	return_cmp         
      
        cmp	byte[rdi + rcx], 0  
        jz	return_cmp         
  
        cmp	al, byte[rsi + rcx]  
        jz	increment          

    return_cmp:               
        sub	al, byte[rsi + rcx] 
        movsx	rax, al
        ret

    increment:      
        inc	rcx     
        jmp	count_cmp 
