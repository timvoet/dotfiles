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

export PATH=${PATH}:~/scripts:/usr/local/maven_home/bin
export EDITOR=`which vim`
export JAVA_HOME=/usr/lib/jvm/java-6-sun
export GDK_NATIVE_WINDOWS=1
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

