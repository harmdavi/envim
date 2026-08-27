return {
  {
    "olimorris/codecompanion.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "ravitemer/mcphub.nvim",
    },
    version = "^19.0.0",

    opts = {
      prompt_library = {
      },
      interactions = {
        chat = {
          adapter = {
            name = "gemini",
            model = "gemini-3.1-flash-lite",
          },
        },

        inline = {
          adapter = {
            name = "gemini",
            model = "gemini-3.1-flash-lite",
          },
        },
      },
    },

vim.keymap.set({ "n", "v" }, "<Leader>at", "<cmd>CodeCompanionChat Toggle<cr>", { noremap = true, silent = true }),
vim.keymap.set({ "n", "v" }, "<Leader>av", "<cmd>CodeCompanionChat Add<cr>", { noremap = true, silent = true }),
vim.keymap.set({ "n", "v" }, "<Leader>aa", "<cmd>CodeCompanionActions<cr>", { noremap = true, silent = true }),
vim.keymap.set("n", "<Leader>ap", function() require("codecompanion").prompt("explainCode") end, { noremap = true, silent = true })
  },
}
