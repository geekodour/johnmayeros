# What is this?
John Mayer is my favorite artist and I decided to make a resume OS.
Basically you'll get my extremely tiny resume of me if you run this on your computer.

## Requirements
- NASM
- QEMU

## Instructions
- Make changes to the `.asm` file if you want to.
- Assemble the file:
```
nasm -f bin -o johnmayeros.bin src.asm
```
- Write the binary to a floppy drive
```
dd status=noxfer conv=notrunc if=johnmayeros.bin of=johnmayeros.flp
```
- Run your OS
```
qemu-system-i386 -fda johnmayeros.flp
```

## Reference
[MikeOS](http://mikeos.sourceforge.net/write-your-own-os.html)
