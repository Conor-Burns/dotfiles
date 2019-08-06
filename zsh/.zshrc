export ZSH="/home/conor/.oh-my-zsh"

ZSH_THEME="rkj-repos"

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

alias bw="wpg --backend wal -s ~/.config/wall.png"
alias wp="pywal-spotify -r 2560x1440 -q"
alias clock="tty-clock -scD"
alias dot="cd ~/dotfiles"
alias screen="ffmpeg -y -f pulse -ac 2 -i default -framerate 24 -video_size 2560:1440 -f x11grab -i :0.0 -c:v libx264rgb -crf 0 -preset ultrafast ~/Videos/out.mp4"
alias render="ffmpeg -i ~/Videos/out.mp4 -codec:v libx264 -crf 21 -bf 2 -flags +cgop -pix_fmt yuv420p -codec:a aac -strict -2 -b:a 384k -r:a 48000 -movflags faststart ~/Videos/final.mp4"

eval $(thefuck --alias --enable-experimental-instant-mode)

(cat ~/.cache/wal/sequences &)

GPG_AGENT_SOCKET="${XDG_RUNTIME_DIR}/gnupg/S.gpg-agent.ssh"
if [ ! -S $GPG_AGENT_SOCKET ]; then
  gpg-agent --daemon >/dev/null 2>&1
  export GPG_TTY=$(tty)
fi

# Set SSH to use gpg-agent if it is configured to do so 
GNUPGCONFIG=${GNUPGHOME:-"$HOME/.gnupg/gpg-agent.conf"}
if grep -q enable-ssh-support "$GNUPGCONFIG"; then
  unset SSH_AGENT_PID
  export SSH_AUTH_SOCK=$GPG_AGENT_SOCKET
fi

source ~/.cache/wal/colors-tty.sh
umask 022
