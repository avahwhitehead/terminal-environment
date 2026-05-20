#!/usr/bin/zsh

rsync -avhW --no-compress --progress -v \
  ~/.config/wezterm/ \
  config/wezterm/

rsync -avhW --no-compress --progress -v \
  ~/.config/nvim/ \
  config/nvim/

rsync -avhW --no-compress --progress -v \
  ~/.zshrc \
  zshrc

rsync -avhW --no-compress --progress -v \
  ~/.zfuncs/ \
  zfuncs/


rsync -avhW --no-compress --progress -v \
  ~/.oh-my-zsh/ \
  oh-my-zsh/



#mv ./.zshrc ~
#mv ./.zfuncs/ ~
#mv ./wezterm.lua ~/.config/wezterm/
#mv ./aliases.zsh ~/.oh-my-zsh/custom/


