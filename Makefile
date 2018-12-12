all: 
	@echo 'nothing :)'

install:
	install -m 0644 dotvimrc ~/.vimrc
	install -m 0644 dottmux.conf ~/.tmux.conf

update:
	cp ~/.vimrc ~/.vimrc.bak && install -m 0644 dotvimrc ~/.vimrc
	cp ~/.tmux.conf ~/.tmux.conf.bak && install -m 0644 dottmux.conf ~/.tmux.conf

vimrc:
	install -m 0644 dotvimrc ~/.vimrc

tmuxconf:
	install -m 0644 dottmux.conf ~/.tmux.conf

clean:
	@echo 'nothing :)'
