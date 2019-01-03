alias weather="curl 'http://wttr.in/amsterdam?lang=en'"
alias weer="curl 'http://wttr.in/amsterdam?lang=nl'"

PS1='😈 '
export PATH="/usr/local/bin:$PATH"
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

export NVM_DIR=$HOME/.nvm
[ -s "${NVM_DIR}/nvm.sh" ] && \. "${NVM_DIR}/nvm.sh"  # This loads nvm
[ -s "${NVM_DIR}/bash_completion" ] && \. "${NVM_DIR}/bash_completion"  # This loads nvm bash_completion


export JAVA_HOME=/usr/local/Cellar/adoptopenjdk-openjdk8/jdk8u172-b11/
# export ANDROID_HOME=${HOME}/Library/Android/sdk/
# export ANDROID_SDK_ROOT=${ANDROID_HOME}
# export PATH=${PATH}:${ANDROID_HOME}/platform-tools:${ANDROID_HOME}/tools:${ANDROID_HOME}/tools/bin