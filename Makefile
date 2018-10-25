all: 
	@echo 'nothing :)'

install: vimrc tmuxconf

vimrc:
	mv ~/.vimrc ~/.vimrc.old
	install -m 0644 dotvimrc ~/.vimrc

tmuxconf:
	mv ~/.tmux.conf ~/.tmux.conf.old
	install -m 0644 dottmux.conf ~/.tmux.conf

clean:
	@echo 'nothing :)'
