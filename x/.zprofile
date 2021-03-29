# Enviroment variables
export ZSH="$HOME/.oh-my-zsh"
export LC_ALL=de_DE.UTF-8
export TERMINAL=terminator
export PAGER=less
export VISUAL=emacs
export TERM="xterm-256color"
export GPG_TTY=$(tty)

export EDITOR='nano'

export QT_QPA_PLATFORMTHEME=gtk2

# startx when logged in
if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx &> /dev/null
fi

