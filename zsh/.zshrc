export ZSH="/home/conor/.oh-my-zsh"

ZSH_THEME="rkj-repos"

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting 
)

source $ZSH/oh-my-zsh.sh

alias bw="wpg --backend wal -s ~/.config/wall.png"
alias wp="pywal-spotify -r 2560x1440 -q"
alias update="trizen --noconfirm -Syuu --sudo-autorepeat-at-runtime"
alias lsblk="lsblk -f"

(cat ~/.config/wpg/sequences)

export EDITOR=/usr/bin/nano
export VISUAL=/usr/bin/nano

umask 022
