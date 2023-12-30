-- ============================ MISC Start ====================================
vim.cmd("set nowrap")
vim.cmd("set visualbell")
vim.g.mapleader = " "
-- ============================= MISC End =====================================

-- ======================== Search Config Start ===============================
-- only case sensitive when a capital letter is used in the search term
vim.cmd("set ignorecase")
vim.cmd("set smartcase")

-- searches while your typing instead of waiting for enter
vim.cmd("set incsearch")
-- =========================== Search Config End ==============================

-- ========================== Tabbing Config Start ============================
-- replaces tabs with spaces.
vim.cmd("set expandtab")

-- uses shiftwidth at the start of the line and tabstop everywhere else. 
vim.cmd("set smarttab")

-- defines the size of tabs in spaces.
vim.cmd("set tabstop=4")

-- defines the size of indents in spaces
vim.cmd("set shiftwidth=4")

-- disables this function. Not entirely sure what it does. Just know that I
-- don't want it.
vim.cmd("set softtabstop=0")
-- =========================== Tabbing Config End =============================

-- ========================= Auto-Indent Config Start =========================
-- continues indentation from above.
vim.cmd("set autoindent")

-- automagically increases indentation when it thinks.
vim.cmd("set smartindent")
-- ========================== Auto-Indent Config End ==========================

-- ============================== Lazy Nvim Start =============================
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- List Plugins to install.
local plugins = {
    { "EdenEast/nightfox.nvim", priority = 1000 }, -- Colourscheme
    {
        "nvim-telescope/telescope.nvim", tag = '0.1.5',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
            "3rd/image.nvim",
        }
    },
}
local opts = {}

require("lazy").setup(plugins, opts)
-- =============================== Lazy Nvim End ==============================

-- ============================ Colourscheme Start ============================
-- https://github.com/EdenEast/nightfox.nvim
require("nightfox").setup({})
vim.cmd("colorscheme carbonfox")
-- ============================= Colourscheme End =============================

-- ============================= Telescope Start ==============================
local builtin = require("telescope.builtin")
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
-- ============================== Telescope End ===============================

-- ============================= Treesitter Start =============================
local config = require("nvim-treesitter.configs")
config.setup({
-- https://github.com/nvim-treesitter/nvim-treesitter#supported-languages
    ensure_installed = {
        "lua", "c", "rust", "cpp", "c_sharp", "bash", "python", "java", "markdown",
        "javascript", "sql", "ssh_config", "xml", "yaml", "csv", "toml"
    },
    sync_install = false,
    highlight = { enable = true },
    indent = { enable = true},
})
-- ============================== Treesitter End ==============================

vim.keymap.set('n', '<leader>fe', ':Neotree<CR>')
