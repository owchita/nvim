return {
    { -- Colorscheme
        "vague-theme/vague.nvim",
        config = function()
            vim.cmd.colorscheme "vague"
        end
    },

    { -- Highlight colors
        "brenoprata10/nvim-highlight-colors",
        config = function()
            require("nvim-highlight-colors").setup({})
        end
    },

    { -- Lualine
        "nvim-lualine/lualine.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        opts = {
            theme = "vague",
        },
    },

    { -- Comment
        "numtostr/comment.nvim",
    },

    { -- Telescope
        'nvim-telescope/telescope.nvim', version = '*',
        dependencies = {
            'nvim-lua/plenary.nvim',
            { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
        },

        config = function()
            local builtin = require('telescope.builtin')
            vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
            vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
            vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
        end
    },

    { -- Treesitter
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",

        config = function()
            require ("nvim-treesitter").setup {
                install_dir = vim.fn.stdpath('data') .. '/site'
            }
            require('nvim-treesitter').install { "c", "bash", "lua", "nix", "vim", "vimdoc", "python" }

            -- Syntax highlighting
            vim.api.nvim_create_autocmd('FileType', {
                pattern = { "c", "bash", "nix", "py", "lua" },
                callback = function() vim.treesitter.start() end,
            })
        end
    },

    { -- Zen Mode
        "folke/zen-mode.nvim",
        vim.keymap.set("n", "<leader>z", vim.cmd.ZenMode)
    },
}
