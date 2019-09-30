prompts=('😈' '🚀' '🏆' '🧀' '🌍' '☕️' '🍦' '🍰' '🍿' '🦆' '🐵' '🤖' '💀' '🤘' '😬' '😳' '👻' '🤓' '😅' '🍻' '😎' '🔥' '🙈' '✨' '⭐️' '🍕' '🍏' '💎' '💰' '💡' '🎲' '😇' '🎃' '😱' '😡' '😵' '🔞' '🎁' '💊' '🔫' '🎉' '🏀')

export LC_ALL=en_US.UTF-8
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
export TERM=xterm-256color
export TERM=screen-256color
export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export LESS=-RX

ssh-add -K ~/.ssh/id_rsa

# bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  source $(brew --prefix)/etc/bash_completion
fi

# golang
if [ -x "$(command -v go)" ]; then
  export PATH="$PATH:$(go env GOPATH)/bin/"
fi

# neovim
if [ -x "$(command -v nvim)" ]; then
  alias vim=nvim
fi

# nvm
export NVM_DIR=$HOME/.nvm
[ -s "${NVM_DIR}/nvm.sh" ] && \. "${NVM_DIR}/nvm.sh"  # This loads nvm
[ -s "${NVM_DIR}/bash_completion" ] && \. "${NVM_DIR}/bash_completion"  # This loads nvm bash_completion

# functions
shit() { eval "$(fc -ln -1) | less -S"; }

mood() {
  PS1=${prompts[$((RANDOM % ${#prompts[*]}))]}
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

keeprunning() {
  while true; do
    $@
    sleep 1
  done
}

matter() {
  matterbridge -conf ~/.matterbridge.tom
}

# home aliases
alias wk=wiki
alias nethack="telnet alt.org 23"
alias aard="tt++ ~/projects/dotfiles/tt++/aard.tt"
alias bat="tt++ ~/projects/dotfiles/tt++/bat.tt"
alias toril="tt++ ~/projects/dotfiles/tt++/toril.tt"
alias sin="tt++ ~/projects/dotfiles/tt++/sin.tt"

#work aliases
alias gp="git pull"; __git_complete gp _git_pull
alias gc="git commit"; __git_complete gc _git_commit
alias ga="git add"; __git_complete ga _git_add
alias gm="git merge"; __git_complete gm _git_merge
alias gco="git checkout"; __git_complete gco _git_checkout
alias gb="git branch"; __git_complete gb _git_branch
alias gps="git push"; __git_complete gps _git_push
alias gs="git status"; __git_complete gs _git_status
alias gd="git diff"; __git_complete gd _git_diff
alias gl="git log --graph"; __git_complete gl _git_log

#mb aliases
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
