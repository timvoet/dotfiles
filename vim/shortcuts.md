<Leader> set to ,
<LocalLeader> set to \

TxtFmt                                          Surround
<ll>i       Specify token for insert            cs<s><r>  Replaces <s> term with <r>
i<C-\><C-\> Specify token while in insert       cst<r>    Replaces surrounding tag with <r>
          mode                                ds<s>     Deletes the surrounding <s>
tokens::                                        ysiw<r>   surrounds word with <r>
fbui  f is format, bui is bold/etc..          yssb      or yss( surrouds line in ()
f-    no format                                -- visual mode --
                                              VS<r>     surrounds selec. w/ <r>
                                               -- notes --
LustyFileExplorer                               * opening of matching pair adds space,
<l>lf  Opens filesystem explorer.                 whereas closing doesn't
<l>lr  Opens filesystem explorer at the
     directory of the current file.
<l>lb  Opens buffer explorer.
<l>lg  Opens buffer grep.


BufExplorer
<l>be  (normal open)
<l>bs  (force horizontal split open)
<l>bv  (force vertical split open)

NERDCommenter
<l>cc       Commend out line
<l>cn       cc, but with nesting
<l>c<space> Toggle line comment
<l>ci       Toggle individual lines
<l>c$       Comment from here to EOL
<l>cA       Appends comment to EOL

NERDTree
<l>f        toggles NERDTree explorer
:NERDTree <path>  opens nerd tree in the specified path

BASH tricks
echo -n "some string" -- echo's the text without the new line
tidy -i -m index.html -- reformats and re-indents an html file -i indents -m re-writes the orignal

Vim bindings
============
<l>?      display shortcuts ( this file )
<l>n      toggles line numbers
<l>s      trims the trailing white space from the entire file
zr        opens all cold folds
zm        closes all folds
zo        opens a specific fold
zc        closes a specific fold

Tab Navigation -- http://vim.wikia.com/wiki/Using_tab_pages
==============
:tabs         list all tabs including their displayed windows
:tabm 0       move current tab to first
:tabm         move current tab to last
:tabm {i}     move current tab to position i+1

:tabn         go to next tab
:tabp         go to previous tab
:tabfirst     go to first tab
:tablast      go to last tab
In normal mode, you can type:
gt            go to next tab
gT            go to previous tab
{i}gt         go to tab in position i


:diffsplit <filename>
