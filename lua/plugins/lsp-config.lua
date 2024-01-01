return {
    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = { "williamboman/mason.nvim", "neovim/nvim-lspconfig" },
        opts = {
            ensure_installed = {
                "bashls",
                "clangd",
                "csharp_ls",
                "omnisharp",
                "biome",
                "jdtls", -- apparently not on system path and may need cmd param setting.
                "lua_ls",
                "marksman",
                "pylsp",
                "rust_analyzer",
                "sqls",
                "taplo",
                "lemminx",
                "yamlls",
            },
            -- Automagically adds all the lsp servers.
            -- If wanting to have unique settings for any,
            -- check out :h mason-lspconfig-automatic-server-setup
            handlers = {
                function(server_name)
                    -- Enables / adds all language servers to lspconfig.
                    require("lspconfig")[server_name].setup {
                        -- Presents connection to cmp_nvim_lsp for auto completion.
                        capabilities = require("cmp_nvim_lsp").default_capabilities(),
                    }
                end,
            },
        },
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            vim.api.nvim_create_autocmd("LspAttach", {
                group = vim.api.nvim_create_augroup("UserLspConfig", {}),
                callback = function(ev)
                    -- Can't use omnifunc when using nvim-cmp.
                    -- -- Enable completion triggered by <c-x><c-o>
                    -- vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

                    local opts = { buffer = ev.buf }
                    vim.keymap.set("n", "<leader>gD", vim.lsp.buf.declaration, opts)
                    vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, opts)
                    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
                    vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
                end,
            })
        end,
    },
}
