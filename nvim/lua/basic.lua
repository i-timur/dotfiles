local set = vim.opt

vim.scriptencoding = 'utf-8'
set.encoding = 'utf-8'
set.fileencoding = 'utf-8'

set.termguicolors = true

vim.cmd 'colorscheme jellybeans'

vim.api.nvim_create_autocmd('VimEnter', {
	pattern = '*',
	command = 'hi Normal guibg=NONE ctermbg=NONE'
})

vim.api.nvim_create_autocmd('FileType', {
	pattern = {'scss', 'sass'},
	command = 'setl iskeyword+=@-@'
});

vim.api.nvim_create_autocmd('BufEnter', {
	pattern = '*',
	command = [[ if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif ]]
});

set.number = true
set.relativenumber = true
set.tabstop = 4
set.shiftwidth = 4
set.softtabstop = 4
set.expandtab = true
set.smarttab = true
set.autoindent = true
set.cindent = true

-- removes delay while switching between normal/insert modes
set.ttimeout = true
set.ttimeoutlen = 1
set.ttyfast = true

set.listchars = {tab = '▷▷⋮', trail = '.', nbsp = '+', eol = '↲'}

vim.keymap.set('v', '<C-c>', ':w !pbcopy<CR><CR>')
vim.keymap.set({'v', 'i', 'n'}, '<C-v>', ':r !pbpaste<CR><CR>')
vim.keymap.set({'v', 'n'}, '<C-_>', '<plug>NERDCommenterToggle')
vim.keymap.set('n', '<C-f>', ':NERDTreeToggle<CR>')


