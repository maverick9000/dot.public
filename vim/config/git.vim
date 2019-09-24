" always start on 1st line in git commit messages
au FileType gitcommit au! BufEnter COMMIT_EDITMSG call setpos('.', [0, 1, 1, 0])

nmap <leader>ba :Gblame<cr>
nmap <leader>bl :ToggleBlameLine<cr>
