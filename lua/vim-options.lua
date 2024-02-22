vim.opt.clipboard:append("unnamedplus")
vim.g.mapleader = " "

local function save_on_insert_leave()
	vim.cmd([[autocmd InsertLeave * silent! write]])
end
save_on_insert_leave()

vim.api.nvim_set_keymap('n', '<C-s>', '<cmd>lua require("prettier").format()<CR>:w<CR>', { noremap = true, silent = true })
