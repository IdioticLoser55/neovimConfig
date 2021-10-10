
" Adds Packer. A plugin manager. Not really much more sure than that.
" This calls the packer config file which has the plugins to be added.
lua require('plugins')

" calls my pair auto-completion config file.
source ~/.config/nvim/general/pairAutoComplete.vim

" calls the config for treesitter
source ~/.config/nvim/pluginConfig/treesitter.vim

" calls the config for coc
source ~/.config/nvim/pluginConfig/coc.vim

" calls the general config settings.
source ~/.config/nvim/general/general.vim





