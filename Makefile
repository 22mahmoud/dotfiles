packages := desktop scripts fontconfig bat dunst git gnupg isync isync lynx \
						mangohud mpv msmtp neomutt newsboat nnn npm paru nsxiv picom \
						zsh zathura x11 tmux sxhkd shell ripgrep qutebrowser

all: submodule stow theming gruvbox

submodule:
	git submodule init
	git submodule update

update:
	git submodule update --remote --init --recursive

stow:
	for pkg in $(packages); do \
		stow -t ~ -S $$pkg; \
	done

restow:
	for pkg in $(packages); do \
		stow -t ~ -R $$pkg; \
	done

theming:

gruvbox:
	scripts/.local/bin/rice base16-gruvbox-dark-hard


.PHONY: all submodule update stow theming gruvbox restow
