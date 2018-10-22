all: vimrc tmuxconf
install: vimrc tmuxconf

vimrc:
	install -m 0644 dotvimrc ~/.vimrc

tmuxconf:
	install -m 0644 dottmux.conf ~/.tmux.conf

clean:
	@echo 'nothing :)'
