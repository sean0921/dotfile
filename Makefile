all: 
	@echo 'nothing :)'

install:
	$(MAKE) vimrc zshrc tmuxconf

activate:
	echo 'source $$HOME/dotvimrc' >> $$HOME/.vimrc
	echo 'source $$HOME/dotzshrc' >> $$HOME/.zshrc
	echo 'source $$HOME/dottmux.conf' >> $$HOME/.tmux.conf

vimrc:
	install -m 0644 dotvimrc $$HOME

zshrc:
	install -m 0644 dotzshrc $$HOME

tmuxconf:
	install -m 0644 dottmux.conf $$HOME

clean:
	@echo 'nothing :)'
