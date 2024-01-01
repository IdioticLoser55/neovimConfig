return {
	{
		"williamboman/mason.nvim",
        lazy = false,
		config = function()
			require("mason").setup({})
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = { "williamboman/mason.nvim", "neovim/nvim-lspconfig" },
        lazy = false,
		opts = {
			ensure_installed = {
				"bashls",
				"clangd",
				"csharp_ls",
				"omnisharp",
				"biome",
				"jdtls",
				"lua_ls",
				"marksman",
				"pylsp",
				"rust_analyzer",
				"sqls",
				"taplo",
				"lemminx",
				"yamlls",
			},
		},
		config = function(_, opts)
			require("mason-lspconfig").setup(opts)
		end,
	},
	{
		"neovim/nvim-lspconfig",
        lazy = false,
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")

			lspconfig.bashls.setup({ capabilities = capabilities })
			lspconfig.clangd.setup({ capabilities = capabilities })
			lspconfig.csharp_ls.setup({ capabilities = capabilities })
			lspconfig.omnisharp.setup({ capabilities = capabilities })
			lspconfig.biome.setup({ capabilities = capabilities })
			lspconfig.jdtls.setup({ capabilities = capabilities })
			lspconfig.lua_ls.setup({ capabilities = capabilities })
			lspconfig.marksman.setup({ capabilities = capabilities })
			lspconfig.pylsp.setup({ capabilities = capabilities })
			lspconfig.rust_analyzer.setup({ capabilities = capabilities })
			lspconfig.sqls.setup({ capabilities = capabilities })
			lspconfig.taplo.setup({ capabilities = capabilities })
			lspconfig.lemminx.setup({ capabilities = capabilities })
			lspconfig.yamlls.setup({ capabilities = capabilities })

			vim.api.nvim_create_autocmd("LspAttach", {
				group = vim.api.nvim_create_augroup("UserLspConfig", {}),
				callback = function(ev)
					-- Enable completion triggered by <c-x><c-o>
					vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

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
