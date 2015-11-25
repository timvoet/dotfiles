#!/bin/bash
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/.rbenv/shims:$PATH"
eval "$(rbenv init -)"
if [ -f ~/.bashrc ];then
    . ~/.bashrc
fi

### Added by the Heroku Toolbelt
eval "$(rbenv init -)"
export PATH="/usr/local/heroku/bin:$PATH"

