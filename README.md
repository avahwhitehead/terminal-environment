Install wezterm:
    
    yay wezterm

Move .zshrc to ~/.zshrc

Move .zfuncs/ to ~/.zfuncs/

Move wezterm.lua to ~/.config/wezterm/wezterm/lua
    
Install oh my zsh:

    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

Install dependencies:
    yay cowsay
    yay thefuck
    yay fzf
    
Install plugins:
    
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
    
    # git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

Add to .zshrc:

```
# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git
	thefuck
	fzf
	web-search
	# git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
	zsh-autosuggestions
	# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
	zsh-syntax-highlighting
)

export FZF_BASE=/usr/bin/fzf

# Automatically load custom functions
# from the ~/.zfuncs/ directory
typeset -U fpath
my_functions=~/.zfuncs
if [[ -z ${fpath[(r)$my_functions]} ]] ; then
    fpath=($my_functions $fpath)
    autoload -Uz ${my_functions}/*(:t)
fi

source $ZSH/oh-my-zsh.sh
```
