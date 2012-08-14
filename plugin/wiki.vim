function! GoToWikiEntry(entry)
	execute "edit" expand('%:p:h') . "/" . a:entry . ".wiki"
endfunction

