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
fi

export PATH=:.:~/scripts:/usr/local/bin:$ANDROID_HOME/tools:$PATH
export EDITOR=`which vim`
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
#export JAVA_HOME=/usr/lib/jvm/java-6-sun
#export GDK_NATIVE_WINDOWS=1

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
