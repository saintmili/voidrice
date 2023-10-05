-- This file can be loaded by calling `lua require('plugins')` from your init.vim

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use('nekonako/xresources-nvim')

    use 'Mofiqul/dracula.nvim'

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    use('nvim-treesitter/playground')

    use('ThePrimeagen/harpoon')

    -- Git plugins
    use 'tpope/vim-fugitive'
    use 'airblade/vim-gitgutter'

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    use('mbbill/undotree')

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' }, -- Required
            {
                -- Optional
                'williamboman/mason.nvim',
                run = ":MasonUpdate"
            },
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },     -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'L3MON4D3/LuaSnip' },     -- Required
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'hrsh7th/cmp-nvim-lua' },
        }
    }

    -- use('jose-elias-alvarez/null-ls.nvim')

    use('vimwiki/vimwiki')

    use 'windwp/nvim-autopairs'
    use 'windwp/nvim-ts-autotag'
    -- use 'norcalli/nvim-colorizer.lua'
    use { 'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }
    -- use 'folke/tokyonight.nvim'
end)
