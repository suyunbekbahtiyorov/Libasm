NASM = nasm
NASMFLG = -felf64
CC = gcc

all: strlen index memcpy memmove memset read write strcasecmp strchr strcmp strncmp bin

strlen:
	$(NASM) $(NASMFLG) strlen.s

index:
	$(NASM) $(NASMFLG) index.s

memcpy:
	$(NASM) $(NASMFLG) memcpy.s

memmove:
	$(NASM) $(NASMFLG) memmove.s

memset:
	$(NASM) $(NASMFLG) memset.s

read:
	$(NASM) $(NASMFLG) read.s

write:
	$(NASM) $(NASMFLG) write.s

strcasecmp:
	$(NASM) $(NASMFLG) strcasecmp.s

strchr:
	$(NASM) $(NASMFLG) strchr.s

strcmp:
	$(NASM) $(NASMFLG) strcmp.s
	
strncmp:
	$(NASM) $(NASMFLG) strncmp.s

bin:
	$(CC) strlen.o index.o memcpy.o memmove.o memset.o read.o write.o strcasecmp.o strchr.o strcmp.o strncmp.o my_libasm.c -o out

fclean:
	rm -f out *.o