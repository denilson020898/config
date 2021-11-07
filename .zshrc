# Created by newuser for 5.8
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias ff='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

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
alias oda='~/d/odoo/odoo-bin -c ~/d/etc/odoo.conf --dev all'
alias po='python3 -m debugpy --listen localhost:5678 ~/d/odoo/odoo-bin -c /d/odoo.conf --limit-time-real 0'
alias pod='python3 -m debugpy --listen localhost:5678 ~/d/odoo/odoo-bin -c /d/odoo.conf --limit-time-real 0 --dev reload,xml'
alias poda='python3 -m debugpy --listen localhost:5678 ~/d/odoo/odoo-bin -c /d/odoo.conf --limit-time-real 0 --dev all'

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

export PATH=~/.local/bin:$PATH
export PATH="$HOME/neovim/bin:$PATH"
# export PATH="$HOME/.local/share/nvim/lsp_servers/rust:$PATH"
source "$HOME/.cargo/env"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/denilson/opt/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/denilson/opt/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/denilson/opt/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/denilson/opt/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

