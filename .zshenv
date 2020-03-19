# Ensure that a non-login, non-interactive shell has a defined environment.
if [[ ( "$SHLVL" -eq 1 && ! -o LOGIN ) && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi

# pyenv sentting
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PATH="$PYENV_ROOT/sims:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
# autocomplete in pyenv
source ~/.pyenv/completions/pyenv.zsh

# pyenv-virtualenv setting
eval "$(pyenv virtualenv-init -)"

# run tmux at the first time 
if [ $SHLVL = 1 ]; then
  tmux
fi

# add home to path
export PATH="$HOME:$PATH"

