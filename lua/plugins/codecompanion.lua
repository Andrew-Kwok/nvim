return {
  {
    "olimorris/codecompanion.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    keys = {
      { "<leader>cc", "<cmd>CodeCompanionChat Toggle<cr>", desc = "Toggle AI Chat", mode = { "n", "v" } },
      { "<leader>ca", "<cmd>CodeCompanionActions<cr>",     desc = "AI Actions",    mode = { "n", "v" } },
      { "ga",         "<cmd>CodeCompanionChat Add<cr>",     desc = "Add to AI Chat", mode = "v" },
    },
    config = function()
      require("codecompanion").setup({
        strategies = {
          chat = {
            adapter = "openai",
          },
          inline = {
            adapter = "openai",
          },
        },
      })
    end,
  },
}
