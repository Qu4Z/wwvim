wikiwikivim
===========

wwvim aims to be a very light-weight implementation of a vim [personal wiki][personal wiki]. It leverages existing features like the [jumplist][jumplist], and the shortcuts should be intuitive to anyone used to browsing vim's help system. 

[personal wiki]: http://c2.com/cgi/wiki?PersonalWiki
[jumplist]: http://vimdoc.sourceforge.net/htmldoc/motion.html#jumplist

Getting Started
---------------

To install wwvim, use Tim Pope's excellent [pathogen][pathogen] plugin. Just clone this repository into ~/.vim/bundle/wwvim

To create a new wiki, make a directory anywhere. Inside this, create a file called index.wiki. Open it in vim. 

This is your home entry (it can be called anything you like, but index is the convention). 

Type the following into it, then save:

    This is the home page of my wiki. 

    I can go to AnotherWikiPage from here.

Now position your cursor over the text *AnotherWikiPage* and press Enter. 

wwvim will take you to the wiki entry for AnotherWikiPage. Edit this to your heart's content, save, and press [Ctrl-O][Ctrl-O]. Ctrl-O takes you back to previous locations. If you've moved around AnotherWikiPage a lot, you may have to press it multiple times. Soon you'll be back on the index page. 

Congratulations! You've just made your own personal wiki. 

[pathogen]: https://github.com/tpope/vim-pathogen/ 
[Ctrl-O]: http://vimdoc.sourceforge.net/htmldoc/motion.html#CTRL-O

Usage
-----

When editing a .wiki file, any [WikiWords][WikiWord] are automatically converted into links. Pressing &lt;CR&gt; on one will take you to that wiki entry. 

If an entry does not exist, it will be created.

Use Ctrl-O/Ctrl-I to go back and forth between entries (see also [:help jumplist][jumplist])

You can also use Ctrl-] (go to tag) to go to a wiki entry.

There is no change tracking built in -- use git or hg (or darcs or bzr or svn or ...)

wwvim supports inter-wiki links. If you open a symlink to a page on another wiki wwvim will switch to browsing that wiki, starting on the page specified. For instance, if you execute `` ln -s ../anotherwiki/index.wiki theotherwiki.wiki `` any references to TheOtherWiki will become links to the index of that wiki, working as expected. 

wwvim does not specify a format for your entries. I use plaintext, but one could also use markdown or a number of other excellent solutions. Unfortunately, wwvim currently relies on the filetype being set to wiki, which breaks markdown syntax highlighting. This will hopefully be fixed in a future version. 

For a more "complete" implementation of personal wikis in vim, consider [vimwiki](https://github.com/vimwiki/vimwiki) 

[WikiWord]: http://c2.com/cgi/wiki?WikiWord

Details
-------

TODO: Tidy up this section

A "wiki" is, to wwvim, a dir containing a file for each wiki entry, with the file extension .wiki. The dir can have any name. The dir may well contain other files, but wwvim will ignore them. 

Wiki entries are located by lower-casing the word, appending .wiki, and looking for a file of that name in the same directory as the current file (this need not be the working directory).

wwvim provides the GoToWikiEntry(entryname) function which you can use if desired.

TODO
----

 - Documentation
 - Make shortcuts work in visual-mode
 - Find a way to deal with the markdown/wiki filetype issue (ie a file can only have one type)
 - Bug fixes

