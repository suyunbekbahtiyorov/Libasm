#include "my_libasm.h"
#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>

int main()
{
    // call iplements
    int num = my_strcmp("abc", "abc");
    printf("%d\n", num);

    int fd = open("text", O_RDWR);
    char* str = (char*)malloc(sizeof(char)*20);
    my_read(fd, str, 20);
    my_write(1, str, 20);

    int gg = my_strlen("Suyunbek");
    printf("\n%d\n", gg);
    
    return 0;
}