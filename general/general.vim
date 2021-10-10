" stops the damn thing from beeping quite so much
set visualbell

" prevents text from being wrapped around the screen.
set nowrap

" detects the filetype and then calls the relative vim file from the ftplugin
" folder.
filetype plugin on



" ========================= Theme Config Start ===============================
" sets the colorscheme
colorscheme evening

" tells nvm that it has a dark background. Hopefully will function better."
set background=dark
" ========================== Theme Config End ================================

" ======================== Sidebar Config Start ==============================
" shows the current line number.
set number
" shows the difference between the respective line and the current line.
set relativenumber
" ========================= Sidebar Config End ===============================

" ======================== Search Config Start ===============================
" only case sensitive when a capital letter is used in the search term
set smartcase

" searches while your typing instead of waiting for enter
set incsearch
" =========================== Search Config End ==============================

" ========================== Tabbing Config Start ============================
" replaces tabs with spaces.
set expandtab

" uses shiftwidth at the start of the line and tabstop everywhere else. 
set smarttab

" defines the size of tabs in spaces.
set tabstop=4

" defines the size of indents in spaces
set shiftwidth=4

" disables this function. Not entirely sure what it does. Just know that I
" don't want it.
set softtabstop=0
" =========================== Tabbing Config End =============================

" ========================= Auto-Indent Config Start =========================
" continues indentation from above.
set autoindent

" automagically increases indentation when it thinks.
set smartindent
" ========================== Auto-Indent Config End ==========================
