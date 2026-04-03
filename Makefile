all:
	# Install dependencies
	sudo pacman -S zsh xclip scrot dmenu feh sxhkd picom-ftlabs-git ttf-hack

	# Install St
	git clone https://github.com/LukeSmithxyz/st
	cd st
	sudo make install
	cd ..
	
	# Install OhMyZSH
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
	
	# Move dotfiles
	cp -f ./zshrc ~/.zshrc
	cp -f ./xinitrc ~/.xinitrc
	cp -f ./picom.conf ~/.config/
	mkdir ~/.config/sxhkd
	cp -f ./sxhkdrc ~/.config/sxhkd/
	cp -f ./vimrc ~/.vimrc
	feh --bg-scale ./bg.jpg
	cp -f ./.fehbg ~/.fehbg

install:

	$(MAKE) -C suckless/dwm install
	cp -f ./scripts/* /usr/local/bin/
