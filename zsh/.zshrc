export ZSH="/home/conor/.oh-my-zsh"

ZSH_THEME="rkj-repos"

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting 
)

source $ZSH/oh-my-zsh.sh

alias boot-fallback="sudo efibootmgr -c -d /dev/sda -p 1 -l \vmlinuz-linux-zen -L "Arch-Fallback" -u "root=PARTUUID=538eef20-56f9-41cd-9b56-350501a9dda6 rw initrd=\initramfs-linux-zen-fallback.img quiet" --verbose"
alias boot="sudo efibootmgr -c -d /dev/sda -p 1 -l \vmlinuz-linux-zen -L "Arch" -u 'initrd=\initramfs-linux-zen.img root=/dev/sda2 rw' --verbose"
alias wireguard-on="sudo systemctl start wg-quick@home.service"
alias wireguard-off="sudo systemctl stop wg-quick@home.service"
alias wifi-off="nmcli radio wifi off"
alias wifi-on="nmcli radio wifi on"
alias bw="wpg --backend wal -s ~/.config/wall.png"
alias wp="pywal-spotify -r 2560x1440 -q"
alias clock="tty-clock -scD"
alias backup="sudo proxmox-backup-client backup root-t440p.pxar:/ --repository 10.10.3.10:hdd"
alias dot="cd ~/dotfiles"
alias screenrec="ffmpeg -y -f pulse -ac 2 -i default -framerate 60 -video_size 1920:1080 -f x11grab -i :0.0 -c:v libx264rgb -crf 0 -preset ultrafast ~/Videos/out.mp4"
alias render="ffmpeg -i ~/Videos/out.mp4 -codec:v libx264 -crf 21 -bf 2 -flags +cgop -pix_fmt yuv420p -codec:a aac -strict -2 -b:a 384k -r:a 48000 -movflags faststart ~/Videos/final.mp4"
alias update="trizen --noconfirm -Syuu --sudo-autorepeat-at-runtime"
alias hybrid-sleep="systemctl hybrid-sleep"
alias suspend="systemctl suspend"
alias hibernate="systemctl hibernate"
alias dpsctl.py="/home/conor/Scripts/dpsctl/dpsctl.py"
alias files="ncdu"
alias lsblk="lsblk -f"

(cat ~/.config/wpg/sequences)

eval $(thefuck --alias --enable-experimental-instant-mode)

export EDITOR=/usr/bin/nano
export VISUAL=/usr/bin/nano

export GPG_TTY="$(tty)"
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpgconf --launch gpg-agent
echo "UPDATESTARTUPTTY" | gpg-connect-agent > /dev/null 2>&1

umask 022

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/bin/mcli mcli
