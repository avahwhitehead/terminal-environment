This is written with Manjaro Linux in mind.


1. Install oh-my-zsh:

    ```
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

    yay eza
    ```

1. Install oh-my-zsh plugins:
    
    ```
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
    
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
    ```

1. Install packages and plugins:

    ```
    sudo ./install_packages.zsh
    ```

1. Copy over config files:

    ```
    ./install.zsh
    ```

