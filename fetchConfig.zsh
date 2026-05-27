#!/usr/bin/zsh

rsync -avhW --no-compress --progress --delete \
  ~/.config/wezterm/ \
  config/wezterm/

rsync -avhW --no-compress --progress --delete \
  ~/.config/nvim/ \
  config/nvim/

rsync -avhW --no-compress --progress --delete \
  ~/.zshrc \
  zshrc

rsync -avhW --no-compress --progress --delete \
  ~/.zfuncs/ \
  zfuncs/

mkdir -p oh-my-zsh/custom

rsync -avhW --no-compress --progress --delete \
  ~/.oh-my-zsh/custom/ \
  oh-my-zsh/custom/ \
  --exclude="*example.zsh" \
  --include="*.zsh" \
  --exclude="*"

cp ~/.tmux.conf tmux.conf

