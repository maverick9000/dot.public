let mapleader=","

nnoremap <Leader>th :nohlsearch<cr>
nnoremap <Leader>tw :set wrap!<cr>
nnoremap <Leader>tn :set number!<cr>
nnoremap <Leader>tp :set paste!<cr>
nnoremap <Leader>ty :set cursorline! cursorcolumn!<CR>

" insert hashrocket
imap <c-l> <space>=><space>| 

" make JSON/html/JS pretty
map <Leader><Leader>b :call JsBeautify()<cr> 

" trigger color picker
let g:vcoolor_map = '<Leader>co' 

" toggle gundo
nnoremap <leader>u :GundoToggle<CR>

" source vimrc
nnoremap <leader>sv :source $MYVIMRC<CR>

" faster esc
inoremap jk <Esc>

" toggle Indent Guides
nnoremap <leader>tg :IndentGuidesToggle<CR>

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

nmap <Leader>rr :RuboCop<CR>
