# Created by newuser for 5.8
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

eval "$(starship init zsh)"

# some more ls aliases
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
alias zc='nvim /etc/odoo.conf'
