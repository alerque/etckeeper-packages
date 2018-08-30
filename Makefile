CFGDIR  = $(DESTDIR)/etc/etckeeper-packages
HOOKDIR = $(DESTDIR)/usr/share/libalpm/hooks
BINDIR  = $(DESTDIR)/usr/bin

.PHONY: install
install:
	mkdir -p $(CFGDIR)
	install -Dm0644 -t $(HOOKDIR) etckeeper-packages.hook
	install -Dm0755 -t $(BINDIR)  etckeeper-packages.sh
