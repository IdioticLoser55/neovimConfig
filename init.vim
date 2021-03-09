" shows the current line number and then the lines relative to the current line
set number relativenumber

" adjusts to one of the pre-existing colourscheme's
colorscheme elflord

" wraps lines so they no longer go off the page.
set wrap

" breaks the line so that words are split when line wrapping
set linebreak

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
inoremap    "       ""<Left>
inoremap    "<CR>   <CR>"<CR>"<Esc>O
inoremap    ""      "

inoremap <expr> "   strpart(getline('.'), col('.')-1, 1) == "\"" ? "\<Right>" : "\"\"<Left>"
"  ========================= ( Autocompletion End ==========================
" need to look into having these for ' and "
"  ========================= , Autocompletion Start =========================
inoremap    ,           ,<Space>
inoremap    ,<Space>    ,<Space>
"  ========================= , Autocompletion End ==========================
" ========================== Autocomplete Pairs End ==========================


