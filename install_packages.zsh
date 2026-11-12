#!/usr/bin/bash
pacman -Syu \
  bat \
  cowsay \
  curl \
  eza \
  fd \
  fzf \
  lazygit \
  man-db \
  nano \
  neovim \
  openssh \
  ripgrep \
  rsync \
  thefuck \
  tmux \
  tree \
  tree-sitter-cli \
  unzip \
  wezterm \
  wget \
  xclip \
  zsh

wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
sh install.sh

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

