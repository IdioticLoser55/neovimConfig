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


-- ======================== Lazy Nvim Installation Start ======================
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
-- ========================= Lazy Nvim Installation End =======================

-- ============================== Plugins Start ===============================
local plugins = {}
local opts = {}

require("lazy").setup(plugins, opts)
-- =============================== Plugins End ================================
