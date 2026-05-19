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
  tree-sitter-cli

mv ./.zshrc ~
mv ./.zfuncs/ ~
mv ./wezterm.lua ~/.config/wezterm/
mv ./aliases.zsh ~/.oh-my-zsh/custom/


