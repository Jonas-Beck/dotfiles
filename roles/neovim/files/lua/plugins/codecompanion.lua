return {
  "olimorris/codecompanion.nvim",
  keys = {
    { "<leader>aa", "<cmd>CodeCompanionChat<cr>", desc = "Open CodeCompanion Chat" },
    { "<leader>ap", "<cmd>CodeCompanionActions<cr>", desc = "Open CodeCompanion Action Palette" },
    { "<leader>ae", "<cmd>CodeCompanionActions<cr>", desc = "CodeCompanion Inline Actions", mode = { "n", "v" } },
  },
  opts = {
    strategies = {
      chat = {
        adapter = {
          name = "copilot",
          model = "claude-sonnet-4",
        },
      },
    },
    display = {
      action_palette = {
        provider = "snacks",
      },
    },
    extensions = {
      mcphub = {
        callback = "mcphub.extensions.codecompanion",
        opts = {
          show_result_in_chat = true, -- Show mcp tool results in chat
          make_vars = true, -- Convert resources to #variables
          make_slash_commands = true, -- Add prompts as /slash commands
        },
      },
    },
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
    "ravitemer/mcphub.nvim",
  },
}
