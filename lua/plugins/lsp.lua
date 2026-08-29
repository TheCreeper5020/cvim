return {
    {
        "mason-org/mason.nvim",
        opts = {}
    },
    {
        "mason-org/mason-lspconfig.nvim",
        opts = {},
        dependencies = {
            { "mason-org/mason.nvim", opts = {} },
            "neovim/nvim-lspconfig",
        },
    },
    {
        'saghen/blink.cmp',
        dependencies = {
            'saghen/blink.lib',
            'rafamadriz/friendly-snippets',
        },
        build = function()
            require('blink.cmp').build():pwait()
        end,

        opts = {
            keymap = { preset = 'default' },
            completion = { documentation = { auto_show = false } },
            sources = { default = { 'lsp', 'path', 'snippets', 'buffer' } },
            fuzzy = { implementation = "rust" }
        },
    },
}
