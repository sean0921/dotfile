all: 
	@echo 'nothing :)'

install:
	$(MAKE) vimrc zshrc bashrc tmuxconf libinput

activate:
	test -e "$$HOME"/dotvimrc     && ( echo 'Installed!' )  || ( echo 'source  $$HOME/dotvimrc'        >> "$$HOME"/.vimrc      )
	test -e "$$HOME"/dotbashrc    && ( echo 'Installed!' )  || ( echo 'source "$$HOME"/dotbashrc'      >> "$$HOME"/.bashrc     )
	test -e "$$HOME"/dotzshrc     && ( echo 'Installed!' )  || ( echo 'source "$$HOME"/dotzshrc'       >> "$$HOME"/.zshrc      )
	test -e "$$HOME"/dottmux.conf && ( echo 'Installed!' )  || ( echo 'source "$$HOME"/dottmux.conf'   >> "$$HOME"/.tmux.conf  )

vimrc:
	install -m 0644 dotvimrc "$$HOME"

zshrc:
	install -m 0644 shellrc  "$$HOME"
	install -m 0644 dotzshrc "$$HOME"

bashrc:
	install -m 0644 shellrc  "$$HOME"
	install -m 0644 dotbashrc "$$HOME"

tmuxconf:
	install -m 0644 dottmux.conf "$$HOME"

libinput:
	mkdir -p "$$HOME"/.config
	install -m 0644 libinput-gestures.conf "$$HOME"/.config

clean:
	@echo 'nothing :)'
