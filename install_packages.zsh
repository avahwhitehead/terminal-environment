#!/usr/bin/zsh
pacman -Syu \
  wezterm \
  cowsay \
  thefuck \
  fzf \
  eza \
  fd \
  ripgrep \
  lazygit \
  neovim \
  curl \
  lazygit \
  tree-sitter-cli \
  xclip \
  tmux

wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
sh install.sh

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

