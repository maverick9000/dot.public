" go between splits
map ˙ :wincmd h<CR>| " A-h
map ˍ :wincmd h<CR>| " A-h
map ∆ :wincmd j<CR>| " A-j
map ˝ :wincmd j<CR>| " A-j
map ˚ :wincmd k<CR>| " A-k
map ¬ :wincmd l<CR>| " A-l
map - :wincmd l<CR>| " A-l

" close splits
map ç :close<CR>| "A-c
map ¸ :close<CR>| "A-c
map œ <C-w>q| "A-q

" create new splits
map ß :split<CR>| "A-s
map √ :vsplit<CR>| "A-v
map ˇ :vsplit<CR>| "A-v

" resize splits
map ¥ <C-w><<CR>| "A-y width -
map \ <C-w><<CR>| "A-y width -
map ¨ <C-w>+<CR>| "A-u height +
map ˆ <C-w>-<CR>| "A-i height -
map ʼ <C-w>-<CR>| "A-i height -
map ø <C-w>><CR>| "A-o width +
map ≠ <C-w>=<CR>| "A-= make all same size

" always create split below and to the right of current
set splitbelow
set splitright
