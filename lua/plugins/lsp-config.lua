return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup({})
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = {
            "williamboman/mason.nvim",
            "neovim/nvim-lspconfig",
        },
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "bashls", "clangd", "csharp_ls", "omnisharp", "biome", "jdtls",
                    "lua_ls", "marksman", "pylsp", "rust_analyzer", "sqls", "taplo",
                    "lemminx", "yamlls",
                },
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")

            lspconfig.bashls.setup({})
            lspconfig.clangd.setup({})
            lspconfig.csharp_ls.setup({})
            lspconfig.omnisharp.setup({})
            lspconfig.biome.setup({})
            lspconfig.jdtls.setup({})
            lspconfig.lua_ls.setup({})
            lspconfig.marksman.setup({})
            lspconfig.pylsp.setup({})
            lspconfig.rust_analyzer.setup({})
            lspconfig.sqls.setup({})
            lspconfig.taplo.setup({})
            lspconfig.lemminx.setup({})
            lspconfig.yamlls.setup({})

            vim.api.nvim_create_autocmd('LspAttach', {
              group = vim.api.nvim_create_augroup('UserLspConfig', {}),
              callback = function(ev)
                -- Enable completion triggered by <c-x><c-o>
                vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

                local opts = { buffer = ev.buf }
                vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
                vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
                vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
                vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, opts)
              end,
            })
        end
    },
}
