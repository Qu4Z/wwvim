function! GoToWikiEntry(entry, method)
	execute a:method . resolve(expand('%:p:h') . "/" . tolower(a:entry) . ".wiki")
endfunction

