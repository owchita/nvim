return {
    { -- Autopairs
        "windwp/nvim-autopairs",

        event = "InsertEnter",
        config = true
    },

    { -- Catppuccin
        "catppuccin/nvim",

        lazy = false,
        priority = 1000,
        opts = {},

        config = function()
            vim.cmd.colorscheme "catppuccin"
        end
    },

    { -- Comment
        "numtostr/comment.nvim",
    },

    { -- Gitsigns
        "lewis6991/gitsigns.nvim",
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

    { -- nvim-lspconfig
        "neovim/nvim-lspconfig",
    },

    { --Surround
        "kylechui/nvim-surround",
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
    },

    { -- Which Key
        "folke/which-key.nvim",

        event = "VeryLazy",

        opts = {
        },

        keys = {
            {
                "<leader>?",
                function()
                    require("which-key").show({ global = false })
                end,
                desc = "Buffer Local Keymaps (which-key)",
            },
        },
    },

    { -- Zen Mode
        "folke/zen-mode.nvim",

        vim.keymap.set("n", "<leader>z", vim.cmd.ZenMode)
    },
}
