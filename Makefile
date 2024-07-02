VERSION := v1.27.9
TARGET_DIR := $(HOME)/.local/bin

syncthing-linux-amd64-$(VERSION).tar.gz:
	wget https://github.com/syncthing/syncthing/releases/download/$(VERSION)/syncthing-linux-amd64-$(VERSION).tar.gz

install: syncthing-linux-amd64-$(VERSION).tar.gz
	tar xzf syncthing-linux-amd64-$(VERSION).tar.gz
	cp "./syncthing-linux-amd64-$(VERSION)/syncthing" "$(TARGET_DIR)/"

clean:
	rm -rf syncthing-linux-amd64-$(VERSION)/
	rm -f syncthing-linux-amd64-$(VERSION).tar.gz

version:
	syncthing --version

upgrade: install clean version
