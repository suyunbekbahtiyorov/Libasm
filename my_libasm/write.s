section .text
    ; declare functions

    global my_write

; write
my_write:
	mov	rax, 1
	syscall     ; system call: https://blog.rchapman.org/posts/Linux_System_Call_Table_for_x86_64/

    ret         ; return rax