" WikiWikiVim functionality -------------- {{{
function! GoToWikiEntry(entry)
	execute "edit" expand('%:p:h') . "/" . tolower(a:entry) . ".wiki"
endfunction

function! s:SetUpWikiCommands()
	nnoremap <CR> :call GoToWikiEntry(expand('<cword>'))<CR>
	nnoremap <LocalLeader>ul :call Underline('-')<CR>
	nnoremap <LocalLeader>uL :call Underline('=')<CR>
endfunction

augroup filetype_wiki
	au!
	autocmd FileType wiki call s:SetUpWikiCommands()
augroup END
" }}}

