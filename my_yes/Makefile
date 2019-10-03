all:
	gcc yes.c -O3 -o yes
	strip ./yes

install:
	sudo rm -f `which yes`
	sudo cp yes /usr/bin/
