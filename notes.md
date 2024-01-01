# Things to do
- Figure out how lazy loading works.
    - and with what plugins.

## Python
- LSP
- Formatter
- Linter
- Debugger
- Runner
- Snippets

## Filetype
- Figure out how to have filetype specific configurations.
- Mainly want wrap set on markdown and text files.

## Comments
- Need to go through once happy and make a note of what everything does before you forget.

## Fonts
- figure out ligatures.
- devicons
- nerdfont's

## Keybindings
- Pick a propper mapleader.
- Figure out keybindings.

## LSP
- https://github.com/neovim/nvim-lspconfig/wiki/Language-specific-plugins
    - There are some language specific plugins that you may want to use.
    - They are better at dealing with extended functionality.

- Do something for spelling.

- https://github.com/hinell/lsp-timeout.nvim
    - Shut's down an lsp when the attached buffer is not in focus.
    - Might be useful.
    - And this.
    - https://github.com/neovim/nvim-lspconfig/wiki/Toggle-LSP-for-current-buffer

## Autocompletion
- https://github.com/neovim/nvim-lspconfig/wiki/Autocompletion
    - Not sure, but think the tab thing might let me tab through the expanded snip.

- https://github.com/windwp/nvim-autopairs
    - Auto pairs.

- snippets.

- Command line autocomplete
    - wilder.nvim

## Formatters and Linters
- Figuer out what formatters and linters you want.

- https://github.com/jay-babu/mason-null-ls.nvim
    - Use this to add ensure_install functionality for formatters.
    - And Linters.

- Maybe have a look at this.
- https://github.com/neovim/nvim-lspconfig/wiki/Linting

## Rust
- https://rsdlt.github.io/posts/rust-nvim-ide-guide-walkthrough-development-debug/
- Probably want to try and figure out how to do this with null_ls
- rust-tools

## Plugins
- Really look into telescope, treesitter.
- Look into mini.nvim. Might replace telescope and some other plugins.
    - Figure out what "text-objects" are.

- Once you've got a basic setup you really need to go through and figure out all the plugins you actually want to use.
    - FileExplorer
        - Ranger / rnvimr
        - Nerdtree
        - Fern.vim
        - Vim-dirvish
        - nvim-tree.lua
        - tree.nvim
        - chadTree
        - telescope-file-browser.nvim
        - neo-tree.nvim
        - mini.files
    - Fuzzy Finder
        - Telescope

- https://github.com/folke/paint.nvim

- fzf. And actually use it.
    - This is not telescope. _(I don't think)_

- ack. Better for searching than just /

- gitgutter. Used to keep track of what lines have changed and what haven't.
    Will need to compare this with whatever you're using at the moment.
    Think its coming from coc.


- Tag List. Opens up a side window with all the variables and methods.

- Second Brain
    - Also called a Zettlekasten
    - Plugins
        - Vim-Wiki
        - Neorg

# Markdown
- Figure out rainbow heading titles.

# Interesting Tools
- Ranger

# Terminal Ideas
- Wezterm

- Colourtheme should be controlled by the shell.
