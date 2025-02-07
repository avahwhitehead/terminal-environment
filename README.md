This is written with Manjaro Linux in mind.

1. Install wezterm:

    ```    
    yay wezterm
    ```

1. Move files:

    1. Move [.zshrc]() to `~/`

    1. Move [.zfuncs/]() to `~/`

    1. Move [wezterm.lua]() to `~/.config/wezterm/`

    1. Move [aliases.zsh]() to `~/.oh-my-zsh/custom/`

1. Install useful programs:

    ```
    yay cowsay
    yay thefuck
    yay fzf
    yay eza
    ```
    
1. Install oh-my-zsh:

    ```
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    ```

1. Install oh-my-zsh plugins:
    
    ```
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
    
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
    ```

1. Update `.zshrc` (should already be done):

    1. Register the plugins:

        ```
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
        ```

    1. Add fzf support:

        ```
        export FZF_BASE=/usr/bin/fzf
        ```

    1. Automatically load custom functions from the [.zfuncs/]() directory

        ```
        typeset -U fpath
        my_functions=~/.zfuncs
        if [[ -z ${fpath[(r)$my_functions]} ]] ; then
            fpath=($my_functions $fpath)
            autoload -Uz ${my_functions}/*(:t)
        fi
        ```

    1. Use oh-my-zsh by default:
    
        ```
        source $ZSH/oh-my-zsh.sh
        ```
