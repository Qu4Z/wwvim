function! GoToWikiEntry(entry)
	execute "edit" expand('%:p:h') . "/" . tolower(a:entry) . ".wiki"
endfunction

