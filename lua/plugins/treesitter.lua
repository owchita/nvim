return { -- Treesitter
    "nvim-treesitter/nvim-treesitter",

    build = ":TSUpdate",
    lazy = false,

    config = function()
        local config = require("nvim-treesitter.config")

        config.setup({
            highlight = { enable = true },
            indent = { enable = true },

            ensure_installed = {
                "lua",
                "c",
                "nix",
                "bash",
                "vim",
                "vimdoc",
                "python",
                "rust",
            },
        })
    end
}
