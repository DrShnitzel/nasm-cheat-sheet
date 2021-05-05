# nasm-cheat-sheet

Code is written for 64bit Linux.

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

