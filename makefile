
image:image.c image.h
	gcc -g image.c -o image -lpthread
clean:
	rm -f image output.png
