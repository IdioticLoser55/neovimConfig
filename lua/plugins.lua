
return require('packer').startup(function()
    -- Allows packer to update itself.
    use 'wbthomason/packer.nvim'

    --adds plugin treesitter
    use 
    {
        'nvim-treesitter/nvim-treesitter', 
        run = ':TSUpdate'
    }
end)
