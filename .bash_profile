# alias ll="ls -ohp"
alias ll="gls --color --group-directories-first -oghpa"
alias ag="ag --path-to-agignore=~/.agignore"

export EDITOR="/usr/bin/vim"
export PATH="$PATH:$HOME/bin"
export PATH="/usr/local/sbin:$PATH"
export GOPATH="$HOME/go"
export PATH="$PATH:$GOPATH/bin"
export PATH="/usr/local/lib:$PATH"
export JAVA_HOME=$(/usr/libexec/java_home)
export PATH="$PATH:$HOME/Library/Android/sdk/platform-tools"
export PATH="$PATH:$HOME/src/webos/webOS_TV_SDK/CLI/bin"

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

export PS1="\W \$ "

