let g:ctrlp_custom_ignore = {
  \ 'dir': '\v[\/](tmp|log|sprockets|public/uploads|coverage|public/assets|/vendor/bundle|.git|.vim|node_modules\|app/assets/fonts|DS_Store)',
  \ 'file': '\v(so|swp|exe|dll)$',
  \ }
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'
let g:ctrlp_cmd = ':NERDTreeClose\|CtrlP'
let g:ctrlp_show_hidden = 1
let g:ctrlp_extensions = ['buffertag', 'line']

" CtrlP auto cache clearing
function! SetupCtrlP()
  if exists("g:loaded_ctrlp") && g:loaded_ctrlp
    augroup CtrlPExtension
      autocmd!
      autocmd FocusGained  * CtrlPClearCache
      autocmd BufWritePost * CtrlPClearCache
    augroup END
  endif
endfunction
if has("autocmd")
  autocmd VimEnter * :call SetupCtrlP()
endif

nnoremap <Leader>mm :CtrlPBufTag<CR> " search function methods
nnoremap <Leader>cl :CtrlPLine<CR> " search though lines in current buffer"
nnoremap <Leader><Leader>c :CtrlPMRUFiles<CR> " recently edited buffers
nnoremap <silent> <C-p> :ClearCtrlPCache<cr>\|:CtrlP<cr> " clear cache before opening ctrl-p

let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

let ctrlp_switch_buffer=0
let g:ctrlp_working_path_mode=0

nnoremap <c-]> :CtrlPtjump<cr>
vnoremap <c-]> :CtrlPtjumpVisual<cr>
