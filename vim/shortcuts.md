&lt;Leader&gt; set to ,<br/>
&lt;LocalLeader&gt; set to \

BufExplorer
===========
* &lt;l&gt;be  (normal open)
* &lt;l&gt;bs  (force horizontal split open)
* &lt;l&gt;bv  (force vertical split open)

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
* :diffsplit <filename>
