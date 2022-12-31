lua require('basic')
lua require('plugins')

:colorscheme jellybeans
autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE

" NERDTree Settings
nmap <C-f> :NERDTreeToggle<CR>

vmap <C-_> <plug>NERDCommenterToggle
nmap <C-_> <plug>NERDCommenterToggle

" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" For scss files 
autocmd FileType scss setl iskeyword+=@-@
