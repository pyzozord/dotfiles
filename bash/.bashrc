prompts=('😈' '🚀' '🏆' '🧀' '🌍' '☕️' '🍦' '🍰' '🍿' '🦆' '🐵' '🤖' '💀' '🤘' '😬' '😳' '👻' '🤓' '😅' '🍻' '😎' '🔥' '🙈' '✨' '⭐️' '🍕' '🍏' '💎' '💰' '💡' '🎲' '😇' '🎃' '😱' '😡' '😵' '🔞' '🎁' '💊' '🔫' '🎉' '🏀')

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

alias nethack="telnet alt.org 23"
alias aard="tt++ ~/.tt++/aard.tt"

mood() {
  PS1=${prompts[$(((RANDOM % ${#prompts[*]})))]}
}

mood

urldecode() { : "${*//+/ }"; echo -e "${_//%/\\x}"; }

bro() {
  local domain=$(echo $1 | sed -nE 's|(https?://[^/]*)/.*|\1|pg')
  if [ ! -t 0 ]; then
    local html=`cat`
  else
    local html=$(curl -L -A "secretagent" "$@" )
  fi
  local formatted=$(echo "$html" | html-to-text --ignore-href --linkHrefBaseUrl=$domain --ignore-image)
  less <<< "$formatted"
}

wiki() {
  eval "bro https://en.wikipedia.org/w/index.php -G --data-urlencode search=\"$@\""
}

alias wk=wiki

keeprunning() {
  while true; do
      $@
      sleep 1
  done
}

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
