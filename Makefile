PREFIX = /usr
DATA = /share
DOC = $(DATA)/doc
LICENSES = $(DATA)/licenses
PKGNAME = bash.d

SRC = $(shell find src | grep '\.bash$$' | cut -d '/' -f 1 --complement)

SRC_SRC = $(foreach S, $(SRC), src/$(S))


.PHONY: all
all:


.PHONY: install
install:
	install -Dm755                -- "$(DESTDIR)$(PREFIX)$(DATA)/$(PKGNAME)"
	install -m644 $(SRC_SRC)      -- "$(DESTDIR)$(PREFIX)$(DATA)/$(PKGNAME)"
	install -Dm755                -- "$(DESTDIR)$(PREFIX)$(DOC)"
	install -m644 README          -- "$(DESTDIR)$(PREFIX)$(DOC)/$(PKGNAME)"
	install -Dm755                -- "$(DESTDIR)$(PREFIX)$(LICENSES)/$(PKGNAME)"
	install -m644 COPYING LICENSE -- "$(DESTDIR)$(PREFIX)$(LICENSES)/$(PKGNAME)"


.PHONY: uninstall
uninstall:
	-rm    -- $(foreach S, $(SRC), "$(DESTDIR)$(PREFIX)$(DATA)/$(PKGNAME)/$(S)")
	-rmdir -- "$(DESTDIR)$(PREFIX)$(DATA)/$(PKGNAME)"
	-rm    -- "$(DESTDIR)$(PREFIX)$(DOC)/$(PKGNAME)"
	-rm    -- "$(DESTDIR)$(PREFIX)$(LICENSES)/$(PKGNAME)/COPYING"
	-rm    -- "$(DESTDIR)$(PREFIX)$(LICENSES)/$(PKGNAME)/LICENSE"
	-rmdir -- "$(DESTDIR)$(PREFIX)$(LICENSES)/$(PKGNAME)"


.PHONY: clean
clean:

