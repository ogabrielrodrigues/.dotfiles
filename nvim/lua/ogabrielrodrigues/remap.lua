vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>nt", "<cmd>vs term://fish<cr>")
vim.keymap.set("n", "<leader>ht", "<cmd>split term://fish<cr>")
vim.keymap.set("n", ";", "<S-:>")

vim.keymap.set("n", "<C-k>", "<cmd>winc k<cr>")
vim.keymap.set("n", "<C-j>", "<cmd>winc j<cr>")
vim.keymap.set("n", "<C-h>", "<cmd>winc h<cr>")
vim.keymap.set("n", "<C-l>", "<cmd>winc l<cr>")

vim.keymap.set("t", "<C-k>", "<cmd>winc k<cr>")
vim.keymap.set("t", "<C-j>", "<cmd>winc j<cr>")
vim.keymap.set("t", "<C-h>", "<cmd>winc h<cr>")
vim.keymap.set("t", "<C-l>", "<cmd>winc l<cr>")

vim.keymap.set("n", "<C-b>", "<cmd>NvimTreeToggle<cr>")
vim.keymap.set("t", "<C-b>", "<cmd>NvimTreeToggle<cr>")

vim.keymap.set("n", "<C-right>", "<cmd>BufferNext<cr>")
vim.keymap.set("n", "<C-left>", "<cmd>BufferPrevious<cr>")
vim.keymap.set("n", "<C-x>", "<cmd>BufferClose<cr>")
vim.keymap.set("n", "<C-t>", "<cmd>BufferCloseAllButCurrent<cr>")
