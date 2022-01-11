PREFIX := /usr/local

#install by default
all: install

install:
	cp manga-cli $(DESTDIR)$(PREFIX)/bin/manga-cli
	chmod 0755 $(DESTDIR)$(PREFIX)/bin/manga-cli

uninstall:
	rm -rf $(DESTDIR)$(PREFIX)/bin/manga-cli

.PHONY: all install uninstall