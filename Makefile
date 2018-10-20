all: vimrc
install: vimrc

vimrc:
	install -m 0644 dotvimrc ~/.vimrc

clean:
	@echo 'nothing :)'
