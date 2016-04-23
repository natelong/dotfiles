platform='unknown'
unamestr=`uname`
if [[ "$unamestr" == 'Linux' ]]; then
   platform='linux'
elif [[ "$unamestr" == 'Darwin' ]]; then
   platform='mac'
fi

if [[ platform == "mac" ]]; then
    alias ll="gls --color --group-directories-first -oghpa"
elif [[ platform == "linux" ]]; then
    alias ll="ls --color --group-directories-first -oghpa"
fi

export PATH="$PATH:$HOME/bin"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/lib:$PATH"

export GOPATH="$HOME/go"
export PATH="$PATH:$GOPATH/bin"

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

COLOR_LO="\[\033[0;37m\]"
COLOR_HI="\[\033[1;30m\]"
COLOR_FI="\[\033[0;34m\]"
COLOR_NO="\[\033[0m\]"

export PS1="
$COLOR_LO\u$COLOR_HI@$COLOR_LO\h $COLOR_FI\w $COLOR_NO
\$ "
