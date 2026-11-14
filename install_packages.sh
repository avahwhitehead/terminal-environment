#!/usr/bin/bash

if which wslinfo >/dev/null 2>&1; then
  MY_SUDO=""
else
  MY_SUDO="sudo"
fi

$MY_SUDO pacman -Syu \
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

if [ -d "~/.oh-my-zsh" ]; then
  wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
  ./install.sh
fi

if [ -d "~/.tmux/plugins/tpm" ]; then
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi

if [ -d "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions" ]; then
  git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
fi

if [ -d "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting" ]; then
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
fi
