VERSION = 0.0.1
PREFIX  = /usr/local
BINDIR  = $(PREFIX)/bin
MANDIR  = $(PREFIX)/share/man

all: install

install:
	@chmod 755 gwiki
	@cp gwiki ${BINDIR}/gwiki
	@chmod 644 gwiki.1
	@sed "s/VERSION/${VERSION}/g" < gwiki.1 > ${MANDIR}/man1/gwiki.1

uninstall:
	@rm ${BINDIR}/gwiki \
		${MANDIR}/man1/gwiki.1

.PHONY: all install uninstall
