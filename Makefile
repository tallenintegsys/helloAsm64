
hello: hello.o
	ld -s -o $@ $<

hello.o: hello.asm
	nasm -f elf64 $<

.PHONY: clean
clean:
	rm -f hello.o hello
