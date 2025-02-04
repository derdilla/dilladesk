#!/bin/sh

dotconfigs=("dunst" "havoc" "hypr" "waybar" "alacritty.toml" "yazi" "helix" "wofi" "starship.toml")

config_dir="$HOME/.config"
backup_dir="$HOME/confbackup"

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'

mkdir -p "$backup_dir"

echo "Installing packages:"
pacman -Syu                 || echo "skipping updates, no root"
pacman -S - < packages.list || echo "skipping packages, no root"

echo "Symlinking .configs:"
for item in "${dotconfigs[@]}"; do
    if [[ -e "$item" ]]; then
        if [[ -e "$config_dir/$item" ]]; then
            mv "$config_dir/$item" "$backup_dir/" || (echo -e  "${RED}Failed to backup $item$NC" && exit)
        fi
        ln -s "$(pwd)/$item" "$config_dir/$item" || (echo -e  "${RED}Failed to create symlink for $item$NC" && exit)
        echo -e  "${GREEN}+${NC} $item"
    else
        echo -e  "${RED}Error:${NC} Failed to copy $item." && exit
    fi
done

echo "+ linking .zshrc"
ls -s "$(pwd)/on_shell.sh" "$HOME/" || (echo -e  "${RED}Failed to install .zshrc$NC" && exit)
mv "$HOME/on_shell.sh" "$HOME/.zshrc"

echo "Installation finished. Old config preserved in: $backup_dir"
