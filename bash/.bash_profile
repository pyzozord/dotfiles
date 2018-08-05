if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi
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
export PATH=/usr/local/opt/mysql@5.7/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin
