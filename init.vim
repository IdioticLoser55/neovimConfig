" shows the current line number and then the lines relative to the current line
set number relativenumber

" tells nvim it has a dakr background
set background=dark
" adjusts to one of the pre-existing colourscheme's
colorscheme evening

" defaults to not wrapping text around the world
set nowrap

" only configures these settings upon opening a text(.text) file
"  setlocal 
"   sets the variable for the current window only
"  wrap
"   wraps a line around the screen so it doesn't go offscreen
"  linebreak
"   ensures that when wrapping entire words are wrapped not parts
autocmd BufRead,BufNewFile *.txt setlocal wrap linebreak

" stops the damn thing from beeping quite so much
set visualbell

" ======================== Search Config Start ===============================
" only case sensitive when a capital letter is used in the search term
set smartcase

" searches while your typing instead of waiting for enter
set incsearch
" =========================== Search Config End ==============================


" ========================== Tabbing Config Start ============================
" replaces tabs with spaces.
set expandtab

" defines the size of tabs in spaces.
set tabstop=4

" defines the size of indents in spaces
set shiftwidth=4

" sets it up so that it will hopefully autoindent semi-correctly
set autoindent smartindent cindent

" redoes all tabbing. think it will replace initial whitespace with tabs but
"not sure
"#retab
" =========================== Tabbing Config End =============================

" Adds packer. A plugin manager. Not really much more sure than that.
" This calls the packer config file which has the plugins to be added.
lua require('plugins')

" calls my pair auto-completion config file.
source ~/.config/nvim/pairAutoComplete.vim

" calls the config for treesitter
source ~/.config/nvim/pluginConfig/treesitter.vim

" calls the config for coc
source ~/.config/nvim/pluginConfig/coc.vim
