vim.g.mapleader = " "

vim.keymap.set("n", "<leader>ex", vim.cmd.Ex)
vim.keymap.set("n", "<leader>w", vim.cmd.w)
vim.keymap.set("n", "<leader>q", vim.cmd.q)
vim.keymap.set("n", "<leader>so", vim.cmd.so)
--it lets me replace the word under my cursor in the complete file 
vim.keymap.set("n", "<leader>r", ":%s/<C-r><C-w>//g<Left><Left>")
