vim.g.mapleader = " "

vim.opt.cursorline = true
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")

vim.keymap.set("v", "<a-Down>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<a-Up>", ":m '<-2<CR>gv=gv")

vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>u", ":UndotreeToggle<CR>")
