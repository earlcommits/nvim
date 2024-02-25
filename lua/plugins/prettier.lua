return {
	"jose-elias-alvarez/null-ls.nvim",
	"neovim/nvim-lspconfig",
	{ "MunifTanjim/prettier.nvim",
	config = function()
        require("prettier").setup({
            -- Configuration options
            bin = 'prettier', -- Path to the Prettier executable
            filetypes = {
                'javascript',
                'typescript',
                'css',
                'scss',
                'html',
                'json',
                'yaml',
                'markdown',
                'vue',
                'lua',
                -- Add other filetypes as needed
            },
        })
    end},
}
