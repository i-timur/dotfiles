local set = vim.opt

vim.scriptencoding = 'utf-8'
set.encoding = 'utf-8'
set.fileencoding = 'utf-8'

set.termguicolors = true

set.number = true
set.relativenumber = true

set.tabstop = 4
set.shiftwidth = 4
set.softtabstop = 4
set.expandtab = true
set.smarttab = true
set.autoindent = true
set.smartindent = true

set.scrolloff = 8

-- removes delay while switching between normal/insert modes
set.ttimeout = true
set.ttimeoutlen = 1
set.ttyfast = true

set.listchars = {tab = '▷▷⋮', trail = '.', nbsp = '+', eol = '↲'}

set.hlsearch = false
set.incsearch = true

