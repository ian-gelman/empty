# somehow force gcc to make a program from an empty file
all: empty.c
	gcc -Wl,--defsym=_start=_exit -Wl,--undefined=_exit -nostartfiles -static -o empty empty.c

clean:
	$(RM) empty
