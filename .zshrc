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
alias zc='nvim /etc/odoo.conf'

alias ta='tmux a'

eval "$(starship init zsh)"

if [[ ! $(tmux list-sessions) ]]; then 
  tmux
fi

#  # >>> conda initialize >>>
#  # !! Contents within this block are managed by 'conda init' !!
#  __conda_setup="$('/opt/homebrew/Caskroom/miniforge/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
#  if [ $? -eq 0 ]; then
#      eval "$__conda_setup"
#  else
#      if [ -f "/opt/homebrew/Caskroom/miniforge/base/etc/profile.d/conda.sh" ]; then
#          . "/opt/homebrew/Caskroom/miniforge/base/etc/profile.d/conda.sh"
#      else
#          export PATH="/opt/homebrew/Caskroom/miniforge/base/bin:$PATH"
#      fi
#  fi
#  unset __conda_setup
#  # <<< conda initialize <<<

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/denil/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/denil/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/denil/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/denil/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

LIGHT_COLOR='gruvbox_light.yaml'
DARK_COLOR='gruvbox_dark.yaml'

alias day="alacritty-colorscheme -V apply $LIGHT_COLOR"
alias night="alacritty-colorscheme -V apply $DARK_COLOR"
alias toggle="alacritty-colorscheme -V toggle $LIGHT_COLOR $DARK_COLOR"

export PATH=~/.local/bin:$PATH
export PATH="$HOME/neovim/bin:$PATH"
source "$HOME/.cargo/env"
