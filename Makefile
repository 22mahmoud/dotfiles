packages := desktop src scripts fontconfig bat dunst git gnupg isync isync \
						lynx mangohud mpv msmtp neomutt newsboat nnn npm paru nsxiv picom \
						zsh zathura x11 tmux sxhkd shell ripgrep qutebrowser lazygit \
						gtk qt

all: submodule patch stow theming

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
	touch "$$XDG_CONFIG_HOME/ricing/theme.Xresources"
	touch "$$XDG_CONFIG_HOME/ricing/colorscheme.lua"
	touch "$$XDG_CONFIG_HOME/ricing/theme.zsh"
	touch "$$XDG_CONFIG_HOME/ricing/theme-tmux.conf"
	touch "$$XDG_CONFIG_HOME/ricing/theme-qutebrowser.py"
	touch "$$XDG_CONFIG_HOME/ricing/delta-theme.gitcofig"
	touch "$$XDG_CONFIG_HOME/ricing/lazygit-theme.yml"
	touch "$$XDG_CONFIG_HOME/ricing/zathura-theme"
	touch "$$XDG_CONFIG_HOME/ricing/theme.dunstrc"

gruvbox:
	scripts/.local/bin/rice base16-gruvbox-dark-hard

patch:
	@if patch -p1 --forward --dry-run < patches/readability-js.patch >/dev/null 2>&1; then \
		patch -p1 --forward < patches/readability-js.patch; \
	else \
		echo "Patch already applied or cannot be applied"; \
	fi

.PHONY: all submodule update stow theming gruvbox restow patch
