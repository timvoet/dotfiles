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
  export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_07.jdk/Contents/Home
  export PEAR_HOME=$HOME/pear
  #export MAVEN_HOME=$HOME/Library/Java/apache-maven-2.2.1
  export MAVEN_HOME=$HOME/Library/Java/apache-maven-3.0.4
  export ANDROID_HOME=$HOME/android/sdk
fi

export PATH=~/scripts:$JAVA_HOME/bin:$PEAR_HOME/bin:$MAVEN_HOME/bin:${PATH}
export EDITOR=`which vim`
#export JAVA_HOME=/usr/lib/jvm/java-6-sun
#export GDK_NATIVE_WINDOWS=1
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"


PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
