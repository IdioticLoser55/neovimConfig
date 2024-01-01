return {
    {
        "hrsh7th/cmp-nvim-lsp",
        lazy = false,
        config = true,
    },
    {
        "L3MON4D3/LuaSnip",
        lazy = false,
        dependencies = {
            "saadparwaiz1/cmp_luasnip",
            "rafamadriz/friendly-snippets",
        },
        config = function ()
            require("luasnip.loaders.from_vscode").lazy_load()
        end
    },
    {
        "hrsh7th/nvim-cmp",
        lazy = false,
        config = function()
            local cmp = require("cmp")

            cmp.setup({
                snippet = {
                    expand = function(args)
                        require("luasnip").lsp_expand(args.body)
                    end,
                },
                window = {
                    completion = cmp.config.window.bordered(),
                    documentation = cmp.config.window.bordered(),
                },
                mapping = cmp.mapping.preset.insert({
                    ["<C-b>"] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
                    ["<C-f>"] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
                    ["<C-k>"] = cmp.mapping.select_prev_item(),
                    ["<C-j>"] = cmp.mapping.select_next_item(),
                    ["<C-Space>"] = cmp.mapping.complete(),
                    ["<C-e>"] = cmp.mapping.abort(),
                    ["<CR>"] = cmp.mapping.confirm({ select = true }),
                }),
                sources = cmp.config.sources({
                    { name = "luasnip" },
                    { name = "nvim_lsp"},
                }, { name = "buffer" }),
            })
        end,
    },
}
