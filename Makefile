all: 
	@echo 'nothing :)'

install:
	$(MAKE) vimrc zshrc tmuxconf

vimrc:
	install -m 0644 dotvimrc $$HOME

zshrc:
	install -m 0644 dotzshrc $$HOME

tmuxconf:
	install -m 0644 dottmux.conf $$HOME

clean:
	@echo 'nothing :)'
