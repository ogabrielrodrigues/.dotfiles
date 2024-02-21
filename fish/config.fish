set FISH_PROMPT_ADD_NEWLINE false

# Init ssh agent. ref: https://github.com/ivakyb/fish_ssh_agent
fish_ssh_agent

# Only on WSL
set DOCKER_DISTRO "Arch"
set DOCKER_DIR /mnt/wsl/shared-docker
set DOCKER_SOCK "$DOCKER_DIR/docker.sock"
export DOCKER_HOST="unix://$DOCKER_SOCK"

if [ ! -S "$DOCKER_SOCK" ];
    mkdir -pm o=,ug=rwx "$DOCKER_DIR"
    chgrp docker "$DOCKER_DIR"
    /mnt/c/Windows/System32/wsl.exe -d $DOCKER_DISTRO sh -c "nohup sudo -b dockerd < /dev/null > $DOCKER_DIR/dockerd.log 2>&1"
end

export EDITOR=nvim
set GOROOT $HOME/go
set PATH $PATH $GOROOT/bin
set PATH $PATH $HOME/.local/bin

alias cls="clear"
alias dev="cd $HOME/www"
alias reload="source $HOME/.config/fish/config.fish"
alias cfg="nvim $HOME/.config/fish/config.fish"
alias ls="exa --icons -la"
alias cat="bat"
alias htop="ytop"

starship init fish | source
source /opt/asdf-vm/asdf.fish

