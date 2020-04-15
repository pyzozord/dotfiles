prompts=('😈' '🚀' '🏆' '🧀' '🌍' '☕️' '🍦' '🍰' '🍿' '🦆' '🐵' '🤖' '💀' '🤘' '😬' '😳' '👻' '🤓' '😅' '🍻' '😎' '🔥' '🙈' '✨' '⭐️' '🍕' '🍏' '💎' '💰' '💡' '🎲' '😇' '🎃' '😱' '😡' '😵' '🔞' '🎁' '💊' '🔫' '🎉' '🏀')

export LC_ALL=en_US.UTF-8
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
export PATH="$PATH:$HOME/.composer/vendor/bin"
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
function scout() {
  for F in ${@-./*}; do echo "$(find $F | wc -l) $F"; done | sort -r
}

function tree() {
  find ${@-./*} | sed -E 's:/?[^/]+/: :g'
}

mood() {
  PS1=${prompts[$((RANDOM % ${#prompts[*]}))]}
}

mood

# home aliases
alias nethack="ssh nethack@alt.org"
alias aard="tt++ ~/projects/dotfiles/tt++/aard.tt"

# work aliases
alias grip="grep -rinC5"
alias gp="git pull"; __git_complete gp _git_pull
alias gc="git commit"; __git_complete gc _git_commit
alias ga="git add"; __git_complete ga _git_add
alias gm="git merge"; __git_complete gm _git_merge
alias gco="git checkout"; __git_complete gco _git_checkout
gq() { git checkout @{${1:--1}}; };
alias gb="git branch"; __git_complete gb _git_branch
alias gps="git push"; __git_complete gps _git_push
alias gs="git status"; __git_complete gs _git_status
alias gd="git diff"; __git_complete gd _git_diff
alias gds="git diff --compact-summary"; __git_complete gd _git_diff
alias gl="git log --graph"; __git_complete gl _git_log

#mb aliases
alias dashdir="cd ~/projects/frontend/dashboard"
alias coredir="cd ~/projects/sms-core/core"
alias daemonsdir="cd ~/projects/frontend/daemons"
alias apidir="cd ~/projects/api0/rest-api"
alias devstart="(cd ~/projects/supportive/dash-core-development/;./start.sh)"
alias devstop="(cd ~/projects/supportive/dash-core-development/;./stop.sh)"
alias devrestart="(cd ~/projects/supportive/dash-core-development/;./restart.sh)"
alias dashssh="dashdir;docker-compose exec dashboard bash"
alias coressh="coredir;docker-compose exec web bash"
alias daemonsssh="daemonsdir;docker-compose exec daemons bash"
alias apissh="apidir;docker-compose exec api bash"
