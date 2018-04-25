obj=main.c serial.c
target=a.out

${target}:${obj}
	gcc ${obj} -o ${target}
