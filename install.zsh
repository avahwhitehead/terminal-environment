#!/usr/bin/zsh

rsync -avhW --no-compress --progress --delete \
  ./config/wezterm/ \
  ~/.config/wezterm/

rsync -avhW --no-compress --progress --delete \
  ./config/nvim/ \
  ~/.config/nvim/

rsync -avhW --no-compress --progress --delete \
  ./zshrc \
  ~/.zshrc

rsync -avhW --no-compress --progress --delete \
  ./zfuncs/ \
  ~/.zfuncs/

rsync -avhW --no-compress --progress --delete \
  ./oh-my-zsh/ \
  ~/.oh-my-zsh/

