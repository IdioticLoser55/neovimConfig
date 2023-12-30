-- https://github.com/nvim-treesitter/nvim-treesitter#supported-languages
-- Tokeniser, allows syntax highlighting and stuff.
return { 
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local config = require("nvim-treesitter.configs")
        config.setup({
            ensure_installed = {
                "lua", "c", "rust", "cpp", "c_sharp", "bash", "python", "java", "markdown",
                "javascript", "sql", "ssh_config", "xml", "yaml", "csv", "toml"
            },
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true},
        })
    end
}
