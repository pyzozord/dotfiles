alias mud="node /Users/michalradecki/Projects/experiment-telnet-client/dist/index.js"
alias weather="curl 'http://wttr.in/amsterdam?lang=en'"
alias weer="curl 'http://wttr.in/amsterdam?lang=nl'"
alias k="kubectl"
alias kco="kubectl config use-context"
alias kb="kubectl config current-context"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="/usr/local/bin:$PATH"
PS1='😈 '
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
if [ -f $(brew --prefix)/etc/bash_completion.d/git-completion.bash ]; then
  . $(brew --prefix)/etc/bash_completion.d/git-completion.bash
fi
if [ -f `brew --prefix`/etc/bash_completion.d/git-flow-completion.bash ]; then
  . `brew --prefix`/etc/bash_completion.d/git-flow-completion.bash
fi

if hash nvim 2>/dev/null; then
  alias vim=nvim
fi

export PATH=/usr/local/opt/mysql@5.7/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin

