# Enviroment variables
export ZSH="$HOME/.oh-my-zsh"
export LC_ALL=de_DE.UTF-8
export TERMINAL=terminator
export PAGER=less
export VISUAL=emacs
export TERM="xterm-256color"
export GPG_TTY=$(tty)

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vim'
else
    export EDITOR='emacs'
fi

export QT_QPA_PLATFORMTHEME=gtk2

# Ruby gems
#PATH="$PATH:$(ruby -e 'print Gem.user_dir')/bin"
#export GEM_HOME=$HOME/.gem

# Rbenv
#export PATH="$HOME/.rbenv/bin:$PATH"
#eval "$(rbenv init -)"

# Node.js
PATH="$HOME/.node_modules/bin:$PATH"
export npm_config_prefix=~/.node_modules

# PIP
export PATH=$HOME/.local/bin:$PATH

# startx when logged in
if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi

# Go
export PATH="$PATH:$HOME/go/bin"
