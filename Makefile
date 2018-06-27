johnmayeros.flp: johnmayeros.bin
	dd status=noxfer conv=notrunc if=johnmayeros.bin of=johnmayeros.flp
johnmayeros.bin: src.asm
	nasm -f bin -o johnmayeros.bin src.asm
run:
	qemu-system-i386 -fda johnmayeros.flp
clean:
	rm -f johnmayeros.flp johnmayeros.bin
