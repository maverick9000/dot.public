set nofoldenable
set foldlevel=1
set foldmethod=indent

autocmd BufRead,BufNewFile config setlocal foldmethod=marker
autocmd BufRead,BufNewFile ansible_hosts setlocal foldmethod=marker
