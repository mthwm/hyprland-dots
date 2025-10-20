export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="gallois"
zstyle ':omz:update' mode auto      # update automatically without asking
plugins=(git)
source $ZSH/oh-my-zsh.sh

# User configuration

fastfetch

## Aliases

# general
alias cls="clear"
alias ll="exa -l -g --icons --git"
alias llt="exa -1 --icons --tree --git-ignore"
alias lgit="lazygit"
alias vim="nvim"
alias vi="nvim"
alias nf="fastfetch"

# lazne
alias ldocker="sudo docker compose -f ~/docker/lazne/compose.yml up -d"

## Exports
# export PATH=/usr/local/go/bin:$PATH
# export PATH=/home/mthwm/go/bin:$PATH
# export PATH=$PATH:/usr/local/bin/sass
# export PATH=$PATH:/usr/bin/less
# export PATH=$PATH:/home/mthwm/.cargo/bin
# export PATH=$PATH:/home/mthwm/.local/bin
# export PATH=$PATH:/home/mthwm/.local/scripts/tmux-sessionizer
# export PATH=$PATH:/opt/nvim-linux-x86_64/bin

PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"

export PATH="$HOME/go/bin:$HOME/.cargo/bin:$HOME/.local/bin:$HOME/.local/scripts:/opt/nvim-linux-x86_64/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"


bindkey -s ^f "tmux-sessionizer\n"
