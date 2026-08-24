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
  },
}
