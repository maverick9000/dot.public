" source vimrc on save
augroup autosourcing
  autocmd!
  autocmd BufWritePost .vimrc source %
augroup END

autocmd BufEnter *.png,*.jpg,*gif exec "! ~/.iterm2/imgcat ".expand("%") | :bw

autocmd BufNewFile,BufRead ~/.ssh/config setlocal foldmethod=marker foldlevel=0

autocmd BufNewFile,BufRead *.slim setlocal filetype=slim
