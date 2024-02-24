vim.opt.clipboard:append("unnamedplus")
vim.opt.ignorecase = true
vim.opt.relativenumber = true
vim.api.nvim_set_keymap('i', '<C-q>', '<C-o>de', {noremap = true})
vim.g.mapleader = " "

local function save_on_insert_leave()
    vim.api.nvim_create_autocmd("InsertLeave", {
        pattern = "*",
        callback = function()
            -- Call Prettier format, and ensure the operation is silent
            pcall(function() require("prettier").format() end)
            -- Save the file silently
            vim.cmd('silent! write')
        end
    })
end

save_on_insert_leave()

vim.api.nvim_set_keymap('n', '<C-s>', '<cmd>lua require("prettier").format()<CR>:w<CR>', { noremap = true, silent = true })
