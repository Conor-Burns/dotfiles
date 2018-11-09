export ZSH="/home/conor/.oh-my-zsh"

ZSH_THEME="rkj-repos"

plugins=(
  git
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

alias bw="wal -i ~/.config/wall.png -g"
alias clock="tty-clock -scD"
alias dot="cd ~/dotfiles"
alias screen="ffmpeg -y -f pulse -ac 2 -i default -framerate 25 -video_size 2560:1440 -f x11grab -i :0.0 -c:v libx264rgb -crf 0 -preset ultrafast ~/Videos/out.mp4"

eval $(thefuck --alias --enable-experimental-instant-mode)

(cat ~/.cache/wal/sequences &)

source ~/.cache/wal/colors-tty.sh
