return {
    {
        "nvim-telescope/telescope.nvim",
        cmd = "Telescope",
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        keys = {
            {
                "<leader>ff",
                "<cmd>Telescope find_files<CR>",
                desc = "Find files",
            },
            {
                "<leader>fg",
                "<cmd>Telescope live_grep<CR>",
                desc = "Search project",
            },
            {
                "<leader>fb",
                "<cmd>Telescope buffers<CR>",
                desc = "Find buffers",
            },
            {
                "<leader>fh",
                "<cmd>Telescope help_tags<CR>",
                desc = "Search help",
            },
            {
                "<leader>fr",
                "<cmd>Telescope oldfiles<CR>",
                desc = "Recent files",
            },
        },
        opts = {},
    },
}
