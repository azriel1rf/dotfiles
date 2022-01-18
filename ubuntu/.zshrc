# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
#if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
#fi

# Autocomplete dot files
#compinit
#_comp_options+=(globdots)

# Turn off all beeps
unsetopt BEEP

# cilp compatibility for WSL
alias clip='/mnt/c/Windows/System32/clip.exe'

# VSCode
alias code='/mnt/c/Users/ai/AppData/Local/Programs/Microsoft\ VS\ Code/bin/code'

# set Mecab dict to neologd
alias mecab='mecab -d /usr/lib/x86_64-linux-gnu/mecab/dic/mecab-ipadic-neologd'

# Calc software
alias calc='/mnt/c/Program\ Files/LibreOffice/program/scalc.exe'

# set default browser
export BROWSER='eval "/mnt/c/Program Files (x86)/Google/Chrome/Application/chrome.exe"'
export chrome='/mnt/c/Program\ Files\ \(x86\)/Google/Chrome/Application/chrome.exe'


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# support 256 color
#export TERM=screen-256color

# pyenv
eval "$(pyenv init -)"
#source ~/.pyenv/completions/pyenv.zsh
# pyenv virtualenv
eval "$(pyenv virtualenv-init -)"

# poetry
path+=$HOME/.poetry/bin
export PATH="$HOME/.poetry/bin:$PATH"

# SSL certification
export SSL_CERT_DIR=/etc/ssl/certs

alias g++="/home/linuxbrew/.linuxbrew/bin/g++-11"
alias gcc="/home/linuxbrew/.linuxbrew/bin/gcc-11"

# Show dot files and colorize
alias ls='ls -A --color'

# ls after cd
autoload -U add-zsh-hook
add-zsh-hook -Uz chpwd (){ls; }


