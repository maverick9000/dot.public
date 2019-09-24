" rename current file
function! RenameFile()
    let old_name = expand('%')
    let new_name = input('New file name: ', expand('%'), 'file')
    if new_name != '' && new_name != old_name
        exec ':saveas ' . new_name
        exec ':silent !rm ' . old_name
        redraw!
    endif
endfunction
map <leader><leader>r :call RenameFile()<cr>

" :Reveal finder (For shell vim; o/w use Nerdtree reveal)
function! s:RevealInFinder()
  if filereadable(expand("%"))
    let l:command = "open -R %"
  elseif getftype(expand("%:p:h")) == "dir"
    let l:command = "open %:p:h"
  else
    let l:command = "open ."
  endif
  execute ":silent! !" . l:command
  redraw!
endfunction
command! Reveal call <SID>RevealInFinder() 

function! RemoveComments()
  exec ":g/^\\(#\\|$\\)/d"
endfunction
command! RemoveClutter :call RemoveComments()<cr>

function! AnsibleDecrypt()
  exec ":!/usr/bin/env - /usr/local/bin/ansible-vault --vault-id=~/.ansible/vaultpass decrypt %"
endfunction
command! AnsibleDecrypt :call AnsibleDecrypt()

function! AnsibleEncrypt()
  exec ":!/usr/bin/env - /usr/local/bin/ansible-vault --vault-id=~/.ansible/vaultpass encrypt %"
endfunction
command! AnsibleEncrypt :call AnsibleEncrypt()

command! BeautifyJS :call JSBeautify()<cr>
command! BeautifyHTML :call HtmlBeautify()<cr>

function! ToggleVerbose()
  if !&verbose
    set verbosefile=~/tmp/vim/verbose.log
    set verbose=15
  else
    set verbose=0
    set verbosefile=
  endif
endfunction


" o/O                   Start insert mode with [count] blank lines.
"                       The default behavior repeats the insertion [count]
"                       times, which is not so useful.
function! s:NewLineInsertExpr( isUndoCount, command )
    if ! v:count
        return a:command
    endif

    let l:reverse = { 'o': 'O', 'O' : 'o' }
    " First insert a temporary '$' marker at the next line (which is necessary
    " to keep the indent from the current line), then insert <count> empty lines
    " in between. Finally, go back to the previously inserted temporary '$' and
    " enter insert mode by substituting this character.
    " Note: <C-\><C-n> prevents a move back into insert mode when triggered via
    " |i_CTRL-O|.
    return (a:isUndoCount && v:count ? "\<C-\>\<C-n>" : '') .
    \   a:command . "$\<Esc>m`" .
    \   v:count . l:reverse[a:command] . "\<Esc>" .
    \   'g``"_s'
endfunction
nnoremap <silent> <expr> o <SID>NewLineInsertExpr(1, 'o')
nnoremap <silent> <expr> O <SID>NewLineInsertExpr(1, 'O')
