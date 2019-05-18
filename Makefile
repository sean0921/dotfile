all: 
	@echo 'nothing :)'

install:
	$(MAKE) vimrc zshrc tmuxconf

activate:
	test -e $$HOME/dotvimrc && echo 'source $$HOME/dotvimrc' >> $$HOME/.vimrc
	test -e $$HOME/dotzshrc && echo 'source $$HOME/dotzshrc' >> $$HOME/.zshrc
	test -e $$HOME/dottmux.conf && echo 'source $$HOME/dottmux.conf' >> $$HOME/.tmux.conf

vimrc:
	install -m 0644 dotvimrc $$HOME

zshrc:
	install -m 0644 dotzshrc $$HOME

tmuxconf:
	install -m 0644 dottmux.conf $$HOME

libinput:
	mkdir -p $$HOME/.config
	install -m 0644 libinput-gestures.conf $$HOME/.config

clean:
	@echo 'nothing :)'
