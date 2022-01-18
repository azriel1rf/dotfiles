cd ~

# homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Python 3
alias python='python3'
alias pip='pip3'

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

# tmux if tmux not run
if [ "$TMUX" = "" ]; then tmux; fi

