call plug#begin('~/.local/share/nvim/plugged')
  Plug 'christoomey/vim-tmux-navigator'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
  "NERDTree plugins
  Plug 'preservim/nerdtree'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  Plug 'preservim/nerdcommenter'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'ryanoasis/vim-devicons'
call plug#end()

set termguicolors
colorscheme NeoSolarized

" NVim configuration

autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE

set number relativenumber
set tabstop=2
set shiftwidth=2
set smarttab
set cindent

" 3 lines below fixing visual bug changing cursor view with a delay when switching between modes
set ttimeout
set ttimeoutlen=1
set ttyfast

" always uses spaces instead of tab characters
set expandtab

" NERDTree Settings
nmap <C-f> :NERDTreeToggle<CR>

vmap <C-_> <plug>NERDCommenterToggle
nmap <C-_> <plug>NERDCommenterToggle

" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Shortcutting split navigation (vim-tmux-navigator is used within my plugins, which already does this this feature
" map <C-h> <C-w>h
" map <C-j> <C-w>j
" map <C-k> <C-w>k
" map <C-l> <C-w>l

" For scss files 
autocmd FileType scss setl iskeyword+=@-@
