# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Autocomplete dot files
compinit
_comp_options+=(globdots)

# Show dot files and colorize
alias ls='ls -A --color'

# ls after cd
autoload -U add-zsh-hook
add-zsh-hook -Uz chpwd (){ ls ; }

# cilp compatibility for WSL
alias clip='clip.exe'

# set Mecab dict to neologd
alias mecab='mecab -d /usr/lib/x86_64-linux-gnu/mecab/dic/mecab-ipadic-neologd'

# Calc software
alias calc='/mnt/c/Program\ Files/LibreOffice/program/scalc.exe'

# set default browser
export BROWSER='/mnt/c/Program Files (x86)/Google/Chrome/Application/chrome.exe'

# For Docker integrating with Windows
# set DOCKER_CERT_PATH/p:DOCKER_HOST:DOCKER_TLS_VERIFY
export DOCKER_HOST=tcp://localhost:2375

# For CUDA
export PATH=/usr/local/cuda-9.0/bin${PATH:+:${PATH}}
export LD_LIBRARY_PATH=/usr/local/cuda-9.0/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}

# move to user directory
# cd ~
