vim.g.mapleader = " "

local remap = vim.keymap.set

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

remap("n", "<leader>pv", vim.cmd.Ex)

remap("n", "J", "mzJ`z")
remap("n", "<C-d>", "<C-d>zz")
remap("n", "<C-u>", "<C-u>zz")
remap("n", "n", "nzzzv")
remap("n", "N", "Nzzzv")

-- greatest remap ever -> I agree :)
remap("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
remap({ "n", "v" }, "<leader>y", [["+y]])
remap("n", "<leader>Y", [["+Y]])

remap({ "n", "v" }, "<leader>d", [["_d]])

remap("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
remap("n", "<leader>f", vim.lsp.buf.format)

remap("n", "<C-k>", "<cmd>cnext<CR>zz")
remap("n", "<C-j>", "<cmd>cprev<CR>zz")
remap("n", "<leader>k", "<cmd>lnext<CR>zz")
remap("n", "<leader>j", "<cmd>lprev<CR>zz")

remap("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
