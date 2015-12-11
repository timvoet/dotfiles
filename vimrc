" load up everything in ~/.vim/bundle using pathogen.vim
call pathogen#runtime_append_all_bundles()

"au VimEnter * cd %:h

source $HOME/.vim/vimrc/basic
source $HOME/.vim/vimrc/bindings
source $HOME/.vim/vimrc/plugins
source $HOME/.vim/vimrc/window
source $HOME/.vim/vimrc/editing
source $HOME/.vim/vimrc/filetypes

if has("gui_running")
    source $HOME/.vim/vimrc/gui
endif
if !has("gui_running")
  set t_Co=256
endif
