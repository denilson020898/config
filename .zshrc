# Created by newuser for 5.8
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias ff='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# bind zsh jump word
bindkey "^[[1;3D" backward-word
bindkey "^[[1;3C" forward-word

alias db='(savestatus=$?; $HOME/s/donebeep $savestatus "$@"; exit $savestatus)'

# some more ls aliases
alias gs='git status'
alias gl='git log --oneline --graph --decorate --max-count=10'
alias ga='git add -A'
alias gc='git commit -m '
alias gu='gitui'

alias ll='ls -al'
alias la='ls -a'
alias l='ls -cf'
alias e='exa -Fh --icons'
alias ee='exa -laFh --icons'
alias ea='exa -lFh --icons'
alias et='exa -laFh --icons -T -L'

alias ".."="cd .."
alias "cd.."="cd .."

alias 'pd'='pushd'
alias 'dp'='popd'

alias zd='pushd ~/.config/nvim/'
alias zg='nvim ~/.gitconfig'
alias zz='nvim ~/.zshrc'
alias zp='nvim ~/.profile'

alias zr='source ~/.zshrc'
alias zc='nvim ~/d/odoo.conf'

alias spg='sudo service postgresql start'
alias sap='sudo service apache2 start'
alias sms='sudo service mysql start'

alias o='~/d/odoo/odoo-bin -c ~/d/odoo.conf'
alias od='~/d/odoo/odoo-bin -c ~/d/odoo.conf --dev reload,xml'
alias ox='~/d/odoo/odoo-bin -c ~/d/odoo.conf --dev xml,qweb'
alias oda='~/d/odoo/odoo-bin -c ~/d/odoo.conf --dev all'

alias po='python -m debugpy --listen localhost:5678 ~/d/odoo/odoo-bin -c ~/d/odoo.conf'
alias so='~/d/odoo/odoo-bin shell -c ~/d/odoo.conf'
alias bo='~/d/odoo/odoo-bin'

alias t='tmux'
alias ta='tmux a'

eval "$(starship init zsh)"

if [[ ! $(tmux list-sessions) ]]; then
  tmux
fi

LIGHT_COLOR='gruvbox_light.yaml'
DARK_COLOR='gruvbox_dark.yaml'

alias day="alacritty-colorscheme -V apply $LIGHT_COLOR"
alias night="alacritty-colorscheme -V apply $DARK_COLOR"
alias toggle="alacritty-colorscheme -V toggle $LIGHT_COLOR $DARK_COLOR"

export PYTHONPATH="$HOME/d/odoo:$PYTHONPATH"

export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.local/share/nvim/lsp_servers/rust:$PATH"
export PATH="$HOME/neovim/bin:$PATH"
export PATH="$HOME/d/git-cola/bin:$PATH"
# export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"

# export PATH="$HOME/.local/share/nvim/lsp_servers/rust:$PATH"
source "$HOME/.cargo/env"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/son/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/son/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/son/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/son/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

