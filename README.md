# nasm-cheat-sheet

Code is written for 64bit Linux.

[Table of linux64 syscalls](https://github.com/torvalds/linux/blob/master/arch/x86/entry/syscalls/syscall_64.tbl)

## build

depends on nasm and ld

```sh
nasm -f elf64 app.asm && ld app.o -o app && ./app
```

## debug

```sh
nasm -g -f elf64 app.asm -l app.list && ld app.o -o app && ./app
gdb -q -x file.gdb
```

