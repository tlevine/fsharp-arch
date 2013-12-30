source:
	makepkg -S

build:
	makepkg
	sudo pacman -U fsharp-git-*.pkg.tar.xz
