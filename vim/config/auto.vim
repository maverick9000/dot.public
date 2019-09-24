" jump to last cursor position
"autocmd BufReadPost *
"  \ if line("'\"") > 0 && line("'\"") <= line("$") |
"  \   exe "normal g`\"" |
"  \ endif

" source vimrc on save
augroup autosourcing
  autocmd!
  autocmd BufWritePost .vimrc source %
augroup END

autocmd BufEnter *.png,*.jpg,*gif exec "! ~/.iterm2/imgcat ".expand("%") | :bw

autocmd BufNewFile,BufRead ~/.ssh/config setlocal foldmethod=marker foldlevel=0

autocmd BufNewFile,BufRead *.slim setlocal filetype=slim

"autocmd BufRead ~/Code/ansible/ansible/host_vars/* :call AnsibleDecrypt() "automatically decrypt all host_vars
