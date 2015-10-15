# don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=ignoredups
# ... and ignore same successive entries.
export HISTCONTROL=ignoreboth
export HISTCONTROL=erasedups

if [ -f ~/.bash/aliases ]; then
    . ~/.bash/aliases
fi
if [ -f ~/.bash/functions ]; then
    . ~/.bash/functions
fi

if [ -f ~/.bash/completion ]; then
    . ~/.bash/completion
fi

if [ -f ~/.bash/git-completion ]; then
    . ~/.bash/git-completion
fi

if [ -f ~/.bash_variables ]; then
  . ~/.bash_variables
fi
os=`uname`
if [[ $os == "Darwin" ]]; then
  export ANDROID_HOME=$HOME/android/sdk
  export ANT_HOME=/Library/Java/apache-ant-1.9.2
  export PATH=:$ANDROID_HOME/tools:$PATH
fi

export PATH=:.:~/scripts:/usr/local/bin:$PATH
export EDITOR=`which vim`
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/.rbenv/shims:$PATH"
eval "$(rbenv init -)"
