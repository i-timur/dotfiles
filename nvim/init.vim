call plug#begin('~/.local/share/nvim/plugged')
  Plug 'christoomey/vim-tmux-navigator'
  "NERDTree plugins
  Plug 'preservim/nerdtree'
  Plug 'preservim/nerdcommenter'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'ryanoasis/vim-devicons'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
	Plug 'doums/darcula'
  Plug 'jiangmiao/auto-pairs'
call plug#end()

colorscheme darcula

set termguicolors

" NVim configuration

set relativenumber

set tabstop=4
set shiftwidth=4
set smarttab
set cindent

" always uses spaces instead of tab characters
set expandtab

" NERDTree Settings
nmap <C-f> :NERDTreeToggle<CR>

vmap <C-_> <plug>NERDCommenterToggle
nmap <C-_> <plug>NERDCommenterToggle

" Open NERDTree automatically

" Start NERDTree and leave the cursor in it.
" autocmd VimEnter * NERDTree

" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Shortcutting split navigation (vim-tmux-navigator is used here, so I don`t
" need it)
" map <C-h> <C-w>h
" map <C-j> <C-w>j
" map <C-k> <C-w>k
" map <C-l> <C-w>l
