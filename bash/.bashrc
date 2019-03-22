prompts=('😈' '🌘' '🐵' '🤖' '😼' '🤘' '😴' '😬' '😳' '👻' '🤓' '😅' '💀' '😰' '🍻' '😎' '🔥' '🙈' '✨' '⭐️' '🍕' '🍏' '💎' '💰' '💡' '🎲')
PS1=${prompts[$(((RANDOM % ${#prompts[*]})+1))]}

export PATH="/usr/local/bin:$PATH"
export TERM=xterm-color
export GREP_OPTIONS='--color=always' GREP_COLOR='1;32'
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

ssh-add -K ~/.ssh/id_rsa

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  source $(brew --prefix)/etc/bash_completion
fi

if [ -x "$(command -v go)" ]; then
  export PATH="$PATH:$(go env GOPATH)/bin/"
fi

if [ -x "$(command -v nvim)" ]; then
  alias vim=nvim
fi

export NVM_DIR=$HOME/.nvm
[ -s "${NVM_DIR}/nvm.sh" ] && \. "${NVM_DIR}/nvm.sh"  # This loads nvm
[ -s "${NVM_DIR}/bash_completion" ] && \. "${NVM_DIR}/bash_completion"  # This loads nvm bash_completion

# export JAVA_HOME=/usr/local/Cellar/adoptopenjdk-openjdk8/jdk8u172-b11/
# export ANDROID_HOME=${HOME}/Library/Android/sdk/
# export ANDROID_SDK_ROOT=${ANDROID_HOME}
# export PATH=${PATH}:${ANDROID_HOME}/platform-tools:${ANDROID_HOME}/tools:${ANDROID_HOME}/tools/bin

alias nethack="telnet alt.org 23"
alias aard="tt++ ~/.tt++/aard.tt"
alias bat="tt++ ~/.tt++/bat.tt"
alias genesis="tt++ ~/.tt++/genesis.tt"

alias dashdir="cd ~/projects/frontend/dashboard"
alias coredir="cd ~/projects/sms-core/core"
alias daemonsdir="cd ~/projects/frontend/daemons"
alias apidir="cd ~/projects/api0/rest-api"

alias devstart="cd ~/projects/supportive/dash-core-development/;./start.sh"
alias devstop="cd ~/projects/supportive/dash-core-development/;./stop.sh"
alias devrestart="cd ~/projects/supportive/dash-core-development/;./restart.sh"

alias dashssh="dashdir;docker-compose exec dashboard bash"
alias coressh="coredir;docker-compose exec web bash"
alias daemonsssh="daemonsdir;docker-compose exec daemons bash"
alias apissh="apidir;docker-compose exec api bash"
