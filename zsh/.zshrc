export ZSH="/home/conor/.oh-my-zsh"

ZSH_THEME="rkj-repos"

plugins=(
  git
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

alias bw="wal -i ~/.config/wall.png"
alias clock="tty-clock -scD"
alias dot="cd ~/dotfiles"
alias screen="ffmpeg -y -f pulse -ac 2 -i default -framerate 24 -video_size 2560:1440 -f x11grab -i :0.0 -c:v libx264rgb -crf 0 -preset ultrafast ~/Videos/out.mp4"
alias render="ffmpeg -i ~/Videos/out.mp4 -codec:v libx264 -crf 21 -bf 2 -flags +cgop -pix_fmt yuv420p -codec:a aac -strict -2 -b:a 384k -r:a 48000 -movflags faststart ~/Videos/final.mp4"

eval $(thefuck --alias --enable-experimental-instant-mode)

(cat ~/.cache/wal/sequences &)

source ~/.cache/wal/colors-tty.sh
umask 022
