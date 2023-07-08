# zmodload zsh/zprof

# Created by newuser for 5.8
set -o emacs
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias ff='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# bind zsh jump word
bindkey "^[[1;3D" backward-word
bindkey "^[[1;3C" forward-word
bindkey "^[[1;4D" beginning-of-line
bindkey "^[[1;4C" end-of-line
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

alias ll='ls -alh'
alias la='ls -a'
alias l='ls -cf'
alias e='exa -Fh -s type'
alias ee='exa -laFh -s type'
alias ea='exa -lFh -s type'
alias et='exa -laFh -T -L -s type'

alias b='bat'
alias rr='say never gonna give you up, never gonna let you down'

alias wz='wezterm'
alias wsh='wezterm ssh'
alias wi='wezterm imgcat'

alias ".."="cd .."
alias "cd.."="cd .."
alias "ca"="conda activate"

alias 'pd'='pushd'
alias 'dp'='popd'

alias c='code'
alias n='nvim'
alias nn='/Applications/Neovide.app/Contents/MacOS/neovide --frame buttonless --multigrid'
alias nv='/Applications/Neovide.app/Contents/MacOS/neovide --frame buttonless'
alias zd='cd ~/.config/nvim/'
alias zg='nvim ~/.gitconfig'
alias zz='nvim ~/.zshrc'

alias zr='source ~/.zshrc'
alias zc='nvim ~/d/local_docker/odoo.conf'
alias zx='nvim ~/d/local_docker/odoo-temp.conf'

alias zp='rm -r ~/.local/share/nvim/sessions'
alias zl='pushd /Users/son/d/local_docker'
alias zn='source ~/.nvm/nvm.sh'

alias spg='sudo service postgresql start'
alias sap='sudo service apache2 start'
alias sms='sudo service mysql start'

alias o='~/d/local_docker/odoo/odoo-bin -c ~/d/local_docker/odoo.conf'
alias op='~/d/local_docker/odoo/odoo-bin -c ~/d/local_docker/odoo.conf --dev reload,pdb'
alias od='~/d/local_docker/odoo/odoo-bin -c ~/d/local_docker/odoo.conf --dev reload,xml'
alias ox='~/d/local_docker/odoo/odoo-bin -c ~/d/local_docker/odoo.conf --dev reload,xml,qweb'
alias oda='~/d/local_docker/odoo/odoo-bin -c ~/d/local_docker/odoo.conf --dev all'
alias po='python -m debugpy --listen localhost:5678 ~/d/local_docker/odoo/odoo-bin -c ~/d/local_docker/odoo.conf'
alias pod='python -m debugpy --listen localhost:5678 ~/d/local_docker/odoo/odoo-bin -c ~/d/local_docker/odoo.conf --dev reload,pdb'
alias pox='python -m debugpy --listen localhost:5678 ~/d/local_docker/odoo/odoo-bin -c ~/d/local_docker/odoo.conf --dev reload,pdb,qweb'
alias so='~/d/local_docker/odoo/odoo-bin shell -c ~/d/local_docker/odoo.conf'
alias bo='~/d/local_docker/odoo/odoo-bin'

alias o14='~/d/local_docker/odoo14/odoo-bin -c ~/d/local_docker/odoo.conf'
alias op14='~/d/local_docker/odoo14/odoo-bin -c ~/d/local_docker/odoo.conf --dev reload,pdb'
alias od14='~/d/local_docker/odoo14/odoo-bin -c ~/d/local_docker/odoo.conf --dev reload,xml'
alias ox14='~/d/local_docker/odoo14/odoo-bin -c ~/d/local_docker/odoo.conf --dev reload,xml,qweb'
alias oda14='~/d/local_docker/odoo14/odoo-bin -c ~/d/local_docker/odoo.conf --dev all'
alias po14='python -m debugpy --listen localhost:5678 ~/d/local_docker/odoo14/odoo-bin -c ~/d/local_docker/odoo.conf'
alias pod14='python -m debugpy --listen localhost:5678 ~/d/local_docker/odoo14/odoo-bin -c ~/d/local_docker/odoo.conf --dev reload,pdb'
alias pox14='python -m debugpy --listen localhost:5678 ~/d/local_docker/odoo14/odoo-bin -c ~/d/local_docker/odoo.conf --dev reload,pdb,qweb'
alias so14='~/d/local_docker/odoo14/odoo-bin shell -c ~/d/local_docker/odoo.conf'
alias bo14='~/d/local_docker/odoo14/odoo-bin'

alias o15='~/d/local_docker/odoo15/odoo-bin -c ~/d/local_docker/odoo.conf'
alias op15='~/d/local_docker/odoo15/odoo-bin -c ~/d/local_docker/odoo.conf --dev reload,pdb'
alias od15='~/d/local_docker/odoo15/odoo-bin -c ~/d/local_docker/odoo.conf --dev reload,xml'
alias ox15='~/d/local_docker/odoo15/odoo-bin -c ~/d/local_docker/odoo.conf --dev reload,xml,qweb'
alias oda15='~/d/local_docker/odoo15/odoo-bin -c ~/d/local_docker/odoo.conf --dev all'
alias po15='python -m debugpy --listen localhost:5678 ~/d/local_docker/odoo15/odoo-bin -c ~/d/local_docker/odoo.conf'
alias pod15='python -m debugpy --listen localhost:5678 ~/d/local_docker/odoo15/odoo-bin -c ~/d/local_docker/odoo.conf --dev reload,pdb'
alias pox15='python -m debugpy --listen localhost:5678 ~/d/local_docker/odoo15/odoo-bin -c ~/d/local_docker/odoo.conf --dev reload,pdb,qweb'
alias so15='~/d/local_docker/odoo15/odoo-bin shell -c ~/d/local_docker/odoo.conf'
alias bo15='~/d/local_docker/odoo15/odoo-bin'

alias to='~/d/local_docker/odoo16/odoo-bin -c ~/d/local_docker/odoo-temp.conf'
alias top='~/d/local_docker/odoo_temp/odoo-bin -c ~/d/local_docker/odoo-temp.conf --dev reload,pdb'
alias tod='~/d/local_docker/odoo_temp/odoo-bin -c ~/d/local_docker/odoo-temp.conf --dev reload,xml'
alias tox='~/d/local_docker/odoo_temp/odoo-bin -c ~/d/local_docker/odoo-temp.conf --dev xml,qweb'
alias toda='~/d/local_docker/odoo_temp/odoo-bin -c ~/d/local_docker/odoo-temp.conf --dev all'
alias tpo='python -m debugpy --listen localhost:5678 ~/d/local_docker/odoo_temp/odoo-bin -c ~/d/local_docker/odoo-temp.conf'
alias tso='~/d/local_docker/odoo_temp/odoo-bin shell -c ~/d/local_docker/odoo-temp.conf'
alias tbo='~/d/local_docker/odoo_temp/odoo-bin'

alias pgd='psql -U son -h localhost -p 6543'

alias t='tmux'
alias ta='tmux a'

alias ty='tty'
alias tp='perl -MPOSIX -e pause'
# Set breakpoint() in Python to call pudb
alias zpp='export PYTHONBREAKPOINT="pudb.set_trace"'
alias zpu='export PYTHONBREAKPOINT=""'
alias zpo='echo $PYTHONBREAKPOINT'
export PYTHONBREAKPOINT="pudb.set_trace"

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

# LIGHT_COLOR='gruvbox_light.yaml'
# DARK_COLOR='gruvbox_dark.yaml'

alias day="alacritty-colorscheme -V apply $LIGHT_COLOR"
alias night="alacritty-colorscheme -V apply $DARK_COLOR"
alias toggle="alacritty-colorscheme -V toggle $LIGHT_COLOR $DARK_COLOR"

export PYTHONPATH="$HOME/d/local_docker/odoo:$PYTHONPATH"
export PYTHONPATH="$HOME/d/repo_airflow:$PYTHONPATH"

export EDITOR="nvim"

export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.local/share/nvim/lsp_servers/rust:$PATH"
export PATH="$HOME/neovim/bin:$PATH"
export PATH="/opt/homebrew/opt/postgresql@13/bin:$PATH"
source "$HOME/.cargo/env"


export PATH="/usr/local/opt/llvm/bin:$PATH"
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
export PSQL_PAGER="pspg --interactive -s=19"
export PATH="/Users/son/.vscode/extensions/vadimcn.vscode-lldb-1.9.0/adapter/:$PATH"
export PATH="/Users/son/.vscode/extensions/vadimcn.vscode-lldb-1.9.0/lldb/bin/:$PATH"


CONDA_CHANGEPS1=no
# conda config --set auto_activate_base true
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

eval "$(fnm env --use-on-cd)"

setopt globstarshort
export PATH=~/.local/bin:"$PATH"

ulimit -n 12288
# zprof
