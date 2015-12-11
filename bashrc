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
  export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_40.jdk/Contents/Home
  export JAVA_6_HOME=/System/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home
  export PEAR_HOME=$HOME/pear
  export MAVEN_HOME=$HOME/Library/Java/apache-maven-3.1.1
  export MQ_HOME=$HOME/Library/Java/apache-activemq-5.9.0
  export TOMCAT_HOME=$HOME/Library/Java/apache-tomcat-7.0.52
  export CATALINA_HOME=$TOMCAT_HOME
  export ANDROID_HOME=$HOME/android/sdk
  export ANT_HOME=/Library/Java/apache-ant-1.9.2
  export PATH=:$ANDROID_HOME/tools:$PATH
fi

if [[ $os == "Linux" ]]; then
  export TERM=xterm-256color
fi
export PATH=:.:~/scripts:/usr/local/bin:$PATH
export EDITOR=`which vim`
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/.rbenv/shims:$PATH"
eval "$(rbenv init -)"
