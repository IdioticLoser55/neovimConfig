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
