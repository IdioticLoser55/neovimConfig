
return require('packer').startup(function()
    -- Allows packer to update itself.
    use 'wbthomason/packer.nvim'

    --adds plugin treesitter playground
    use 
    {
        'nvim-treesitter/playground', 
    }
    --adds plugin treesitter
    use 
    {
        'nvim-treesitter/nvim-treesitter', 
        run = ':TSUpdate'
    }
end)
