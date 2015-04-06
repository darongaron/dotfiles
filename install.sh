#!/bin/bash

install_dotfiles () {
	cd "$(dirname "$0")/.."

	DATE=$(date +%y%m%d-%H%M%S)
	DOTFILES_ROOT=$(pwd)

	info "installing dotfiles..."

	for src in $(find "$DOTFILES_ROOT" -maxdepth 2 -name '*.symlink')
	do
		dst="$HOME/.$(basename "${src%.*}")"
		link_file "$src" "$dst" false
	done

	for src in $(find "$DOTFILES_ROOT" -maxdepth 2 -name '*.copy')
	do
		dst="$HOME/.$(basename "${src%.*}")"
		link_file "$src" "$dst" true
	done

	if [ ! -d "$HOME/.vim_tmp" ]; then
		mkdir $HOME/.vim_tmp
		info "created $HOME/.vim_tmp"
	fi
}

install_dotfiles
