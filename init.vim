" shows the current line number and then the lines relative to the current line
set number relativenumber

" adjusts to one of the pre-existing colourscheme's
colorscheme elflord

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


" ========================== Autocomplete Pairs Start ========================
"  ========================= { Autocompletion Start =========================
inoremap    {       {}<Left>
inoremap    {<CR>   <CR>{<CR>}<Esc>O
inoremap    {{      {
inoremap    {}      {}

inoremap <expr> }   strpart(getline('.'), col('.')-1, 1) == "}" ? "\<Right>" : "}"
"  ========================= { Autocompletion End ==========================
"  ========================= ( Autocompletion Start =========================
inoremap    (       ()<Left>
inoremap    (<CR>   <CR>(<CR>)<Esc>O
inoremap    ((      (
inoremap    ()      ()

inoremap <expr> )   strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"
"  ========================= ( Autocompletion End ==========================
"  ========================= [ Autocompletion Start =========================
inoremap    [       []<Left>
inoremap    [<CR>   <CR>[<CR>]<Esc>O
inoremap    [[      [
inoremap    []      []

inoremap <expr> ]   strpart(getline('.'), col('.')-1, 1) == "]" ? "\<Right>" : "]"
"  ========================= ( Autocompletion End ==========================
"  ========================= < Autocompletion Start =========================
inoremap    <       <><Left>
inoremap    <<CR>   <CR><<CR>><Esc>O
inoremap    <<      <
inoremap    <<Space>    <<Space>
inoremap    <>      <>

inoremap <expr> >   strpart(getline('.'), col('.')-1, 1) == ">" ? "\<Right>" : ">"

inoremap    <=      <=
"  ========================= ( Autocompletion End ==========================
"  ========================= " Autocompletion Start =========================
inoremap    ""      "

inoremap <expr> "       strpart(getline('.'), col('.')-1, 1) == "\"" ? "\<Right>" : "\"\"<Left>"
"  ========================= " Autocompletion End ==========================
"  ========================= , Autocompletion Start =========================
inoremap    ,           ,<Space>
inoremap    ,<Space>    ,<Space>
"  ========================= , Autocompletion End ==========================

"explanation
"<expr> means that the input is going to be remapped to the result of some expression.
"getline('.') returns a string of the current line.
"col('.') returns a the current column number.
"strpart(x, y, z) takes string x and returns z characters starting from position y.
" (a ? b : c) just acts as an if statement. If a then b else c.
"Results are put in quotation marks as they aren't part of the expression but
"what is being printed. Not sure why the \. Seems to work just fine without it.
"inoremap <expr> }   strpart(getline('.'), col('.')-1, 1) == "}" ? "\<Right>" : "}"

" ========================== Autocomplete Pairs End ==========================

" Adds packer. A plugin manager. Not really much more sure than that.
" This calls the packer config file which has the plugins to be added.
lua require('plugins')
