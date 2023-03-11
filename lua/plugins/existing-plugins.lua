return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      {
        "<leader><space>",
        function()
          require("telescope.builtin").find_files()
        end,
        desc = "Find Files using telescope",
      },
      {
        "<leader>ss",
        function()
          require("telescope.builtin").lsp_document_symbols()
        end,
        desc = "Document Symbols",
      },
      {
        "<leader>sS",
        function()
          require("telescope.builtin").lsp_dynamic_workspace_symbols()
        end,
        desc = "Workspace Dynamic Symbols",
      },
      {
        "<leader>sj",
        function()
          require("telescope.builtin").lsp_workspace_symbols()
        end,
        desc = "Workspace Symbols",
      },
    },
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = { "mason.nvim" },
    opts = function()
      local nls = require("null-ls")
      return {
        sources = {
          nls.builtins.formatting.prettier,
        },
      }
    end,
  },

  {

    "lewis6991/gitsigns.nvim",
    opts = {
      current_line_blame = true,
    }
  }
}
