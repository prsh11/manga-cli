PREFIX := /usr/local

#install by default
all: install

install:
	# copies manga-cli file to /usr/local/bin/manga-cli, which should be in path
	cp manga-cli $(DESTDIR)$(PREFIX)/bin/manga-cli
	# marks manga-cli executable
	chmod 0755 $(DESTDIR)$(PREFIX)/bin/manga-cli

uninstall:
	rm -rf $(DESTDIR)$(PREFIX)/bin/manga-cli

.PHONY: all install uninstall