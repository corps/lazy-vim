-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

vim.api.nvim_set_keymap("n", "<d-c>", '"*y :let @+=@*<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<d-v>", '"+p', { noremap = true, silent = true })

vim.api.nvim_set_keymap("i", "<d-v>", "<C-R>+", { noremap = true, silent = true })

vim.api.nvim_set_keymap("v", "<d-c>", '"*y :let @+=@*<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<d-v>", '"+p', { noremap = true, silent = true })
vim.api.nvim_set_keymap("x", "<d-c>", '"*y :let @+=@*<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap("x", "<d-v>", '"+p', { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<d-{>", ":BufferLineCyclePrev<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<d-}>", ":BufferLineCycleNext<CR>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<d-w>", ":bd<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<d-w>", ":lua Snacks.bufdelete.delete()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Space>d", ':lua Snacks["dashboard"].open()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Space>t", ":lua Snacks.terminal.toggle()<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<Space>p", ":CdProjectTab<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Space>r", ":RemoteStart<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Space>i", ":LeanInfoviewToggle<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("v", "<d-/>", "gc", { silent = true })
vim.api.nvim_set_keymap("n", "<d-/>", "gcc", { silent = true })

vim.api.nvim_set_keymap("n", "<d-[>", "<C-o>", { silent = true })
vim.api.nvim_set_keymap("n", "<d-]>", "<C-i>", { silent = true })

vim.api.nvim_set_keymap("n", "<d-b>", "gd", { silent = true })

vim.keymap.del("n", "<space>K")
vim.keymap.del("n", "<space>L")
vim.keymap.del("n", "<space>`")
