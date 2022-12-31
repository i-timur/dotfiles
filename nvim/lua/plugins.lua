local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.local/share/nvim/plugged')

	Plug 'christoomey/vim-tmux-navigator'
	Plug('neoclide/coc.nvim', {branch = 'release'})
	Plug 'preservim/nerdtree'
	Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
	Plug 'preservim/nerdcommenter'
	Plug 'Xuyuanp/nerdtree-git-plugin'
	Plug 'vim-airline/vim-airline'
	Plug 'rebelot/kanagawa.nvim'
	--Always load the vim-devicons as the very last one.
	Plug 'ryanoasis/vim-devicons'

vim.call('plug#end')
