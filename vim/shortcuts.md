Markdown syntax -- http://stackoverflow.com/editing-help<br/>
&lt;Leader&gt; set to ,<br/>
&lt;LocalLeader&gt; set to \

BufExplorer
===========
"  &lt;l&gt;be  (normal open)
"  &lt;l&gt;bs  (force horizontal split open)
"  &lt;l&gt;bv  (force vertical split open)
" &lt;F1&gt; : toggle this help
" &lt;enter&gt; or o or Mouse-Double-Click : open buffer under cursor
" &lt;shift-enter&gt; or t : open buffer in another tab
" d : delete buffer
" D : wipe buffer
" f : toggle find active buffer
" p : toggle spliting of file and path name
" q : quit
" r : reverse sort
" R : toggle showing relative or full paths
" s : cycle thru "sort by" fields ['number', 'name', 'fullpath', 'mru', 'extension']
" S : reverse cycle thru "sort by" fields
" T : toggle if to show only buffers for this tab or not
" u : toggle showing unlisted buffers

NERDTree
========
* &lt;l&gt;f        toggles NERDTree explorer
* :NERDTree &lt;path&gt;  opens nerd tree in the specified path

BASH tricks
===========
* echo -n "some string" -- echo's the text without the new line
* tidy -i -m index.html -- reformats and re-indents an html file -i indents -m re-writes the orignal

Vim bindings
============
* &lt;l&gt;?      display shortcuts ( this file )
* &lt;l&gt;n      toggles line numbers
* &lt;l&gt;s      trims the trailing white space from the entire file
* zr        opens all cold folds
* zm        closes all folds
* zo        opens a specific fold
* zc        closes a specific fold

Tab Navigation -- http://vim.wikia.com/wiki/Using_tab_pages
==============
In Edit Mode
------------
* :tabs         list all tabs including their displayed windows
* :tabm 0       move current tab to first
* :tabm         move current tab to last
* :tabm {i}     move current tab to position i+1
* :tabn         go to next tab
* :tabp         go to previous tab
* :tabfirst     go to first tab
* :tablast      go to last tab

In normal mode, you can type:
-----------------------------
* gt            go to next tab
* gT            go to previous tab
* {i}gt         go to tab in position i

VIM Tips
========
* :diffsplit &lg;filenam&gt;e
