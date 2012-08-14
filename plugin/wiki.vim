function! GoToWikiEntry(entry, method)
	execute a:method . expand('%:p:h') . "/" . tolower(a:entry) . ".wiki"
endfunction

