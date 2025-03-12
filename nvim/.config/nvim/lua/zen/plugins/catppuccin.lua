return { 
    "catppuccin/nvim", 
    name = "catppuccin", 
    config = function(_, opts)
        require("catppuccin").setup(opts)
        vim.cmd.colorscheme("catppuccin")
    end,
    opts = {
        flavour = "mocha",
        transparent_background = true
    },
    priority = 1000 
}