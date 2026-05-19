return {
    { -- Mason
        "mason-org/mason.nvim",

        config = function()
            require("mason").setup()
        end,
    },

    { -- Mason-lspconfig
        "mason-org/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "bashls", -- Bash
                    "clangd", -- C
                    "lua_ls", -- Lua
                    "pylsp", -- Python
                    "rust_analyzer", -- Rust
                }
            })
        end
    },

    { -- nvim-lspconfig
        "neovim/nvim-lspconfig";

        config = function()
            local lspconfig = require("lspconfig")

            -- Enable language servers
            vim.lsp.enable("bashls")
            vim.lsp.enable("clangd")
            vim.lsp.enable("lua_ls")
            vim.lsp.enable("pylsp")
            vim.lsp.enable("rust_analyzer")

            -- Keybinds
            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
            vim.keymap.set({ "n", "v", }, "<leader>ca", vim.lsp.buf.code_action, {})
        end
    },
}
