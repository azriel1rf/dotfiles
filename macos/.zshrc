# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Autocomplete dot files
#compinit
#_comp_options+=(globdots)

# Turn off all beeps
unsetopt BEEP


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# support 256 color
export TERM=xterm-256color

# pyenv
eval "$(pyenv init -)"
#source ~/.pyenv/completions/pyenv.zsh
# pyenv virtualenv
#eval "$(pyenv virtualenv-init -)"

# poetry
path+=$HOME/.poetry/bin
export PATH="$HOME/.poetry/bin:$PATH"

# SSL certification
export SSL_CERT_DIR=/etc/ssl/certs


# Show dot files and colorize
alias ls='ls -A --color'


# ls after cd
autoload -U add-zsh-hook
add-zsh-hook -Uz chpwd (){ls -A --color; }
