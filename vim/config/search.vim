if executable('ag')
  let g:ag_highlight=1
  map <Leader>f :Ag! 
else
  map <Leader>f :Ack 
end
nnoremap <Leader>gg :Rg<Cr>
