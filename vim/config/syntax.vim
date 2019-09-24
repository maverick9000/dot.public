set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

" indent text using shift+> and shift+<
nnoremap <Leader>d :bp\|bd #<CR>| 

" indent
vnoremap > >gv
vnoremap <lt> <lt>gv 

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_ruby_checkers = ['rubocop']
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
"nnoremap <Leader>ss :SyntasticCheck<CR> :SyntasticToggleMode<CR>
nnoremap <Leader>ss :SyntasticCheck<CR>
