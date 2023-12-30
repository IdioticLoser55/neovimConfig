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
