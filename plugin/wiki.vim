" method - 'edit', 'split', 'vsplit'
function! GoToWikiEntry(entry, method)
	execute a:method . expand('%:p:h') . "/" . tolower(a:entry) . ".wiki"
endfunction

" wiki - path to wiki dir, eg ~/mywiki
function! RegenerateTags(wiki)
	" TODO
	execute "split " . a:wiki . "/tags.vim"
	normal ggdG
	execute "r!ls " . a:wiki . "/*.wiki"

	%s/\v(.*\/)([^\/]+)\.wiki/syntax match Identifier \/\\c\2\//
	execute "wq"
endfunction
