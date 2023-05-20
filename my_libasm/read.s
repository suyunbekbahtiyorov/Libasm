section .text
    ; declare functions

    global my_read

; read
my_read:
  mov  rax, 0  
  syscall     ; system call: http://laihoconsulting.com/blog/2021-08-getting-started-with-x64-assembly/
    ret 