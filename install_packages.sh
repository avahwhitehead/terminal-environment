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

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
