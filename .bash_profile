platform="unknown"
unamestr=`uname`
if [[ $unamestr == "Linux" ]]; then
    echo "Detected linux platform"
    platform="linux"
elif [[ $unamestr == "Darwin" ]]; then
    echo "Detected osx platform"
    platform="osx"
fi

if [[ $platform == "osx" ]]; then
    echo "Using OSX dotfile settings"
    alias ll="gls --color --group-directories-first -oghpa"
elif [[ $platform == "linux" ]]; then
    echo "Using Linux dotfile settings"
    alias ll="ls --color --group-directories-first -oghpa"
    export PATH="$PATH:/usr/local/go/bin"
fi

alias ss="less -R"

export PATH="$PATH:$HOME/bin"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/lib:$PATH"

export GOPATH="$HOME/go"
export PATH="$PATH:$GOPATH/bin"

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

COL_1="\[\033[0;37m\]"
COL_2="\[\033[1;30m\]"
COL_3="\[\033[0;34m\]"
COL_N="\[\033[0m\]"

export PS1="
$COL_1\u$COL_2@$COL_1\h $COL_3\w $COL_N \$(branch)
\$ "

export EDITOR="`which nvim`"

source ~/.bash_user