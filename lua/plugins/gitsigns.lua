return {
    {
        "lewis6991/gitsigns.nvim",
        event = { "BufReadPre", "BufNewFile" },
        opts = {
            current_line_blame = false,
        },
        keys = {
            {
                "]h",
                function()
                    require("gitsigns").nav_hunk("next")
                end,
                desc = "Next Git hunk",
            },
            {
                "[h",
                function()
                    require("gitsigns").nav_hunk("prev")
                end,
                desc = "Previous Git hunk",
            },
            {
                "<leader>hp",
                function()
                    require("gitsigns").preview_hunk()
                end,
                desc = "Preview Git hunk",
            },
            {
                "<leader>hs",
                function()
                    require("gitsigns").stage_hunk()
                end,
                desc = "Stage Git hunk",
            },
            {
                "<leader>hr",
                function()
                    require("gitsigns").reset_hunk()
                end,
                desc = "Reset Git hunk",
            },
            {
                "<leader>hb",
                function()
                    require("gitsigns").blame_line()
                end,
                desc = "Blame current line",
            },
        },
    },
}
