let g:gutentags_enabled                   = 1
let g:gutentags_trace                     = 0
let g:gutentags_add_default_project_roots = 1
let g:gutentags_project_root              = ['Gemfile']
let g:gutentags_exclude_filetypes         = []
let g:gutentags_exclude_project_root      = ['.git']
let g:gutentags_generate_on_missing       = 1
let g:gutentags_generate_on_new           = 1
let g:gutentags_generate_on_write         = 1
let g:gutentags_generate_on_empty_buffer  = 0
"let g:gutentags_cache_dir                 = expand(g:crf_tmp_vim_dir . '/tags')
let g:gutentags_ctags_tagfile             = 'tags'
let g:gutentags_ctags_auto_set_tags       = 1
let g:gutentags_resolve_symlinks          = 0
let g:gutentags_ctags_exclude_wildignore  = 1
"noremap [tags]u :<C-u>GutentagsUpdate<CR>
"noremap [tags]d :<C-u>GutentagsToggleEnabled<CR>
if exists("g:plugs['lightline.vim']")
  augroup crf_vimrc
    autocmd User GutentagsUpdating call lightline#update()
    autocmd User GutentagsUpdated call lightline#update()
  augroup END
endif
