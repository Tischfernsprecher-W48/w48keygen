
.PHONY: all

all: clean w48keygen

w48keygen :
	gcc w48keygen.c -o w48keygen -lssl -lcrypto

.PHONY: clean
clean :
	rm -f w48keygen *.deb

.PHONY: install
install :
	cp -f w48keygen /usr/sbin
