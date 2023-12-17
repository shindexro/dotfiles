require("catppuccin").setup({
    flavour = "macchiato", -- latte, frappe, macchiato, mocha
    background = { -- :h background
        light = "latte",
        dark = "macchiato",
    },
    custom_highlights = function(colors)
        return {
            LineNr = { fg = "#95b1cf" },
        }
    end
})

-- setup must be called before loading
vim.cmd.colorscheme "catppuccin"

