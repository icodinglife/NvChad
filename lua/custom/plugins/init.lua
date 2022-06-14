return {
    ["folke/trouble.nvim"] = {
        after = "nvim-lspconfig",
        config = function()
            require("custom.plugins.trouble").setup()
        end,
    },

 }
