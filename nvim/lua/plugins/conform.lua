return {
  {
    "stevearc/conform.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("conform").setup({
        formatters_by_ft = {
          go = { "goimports", "gofumpt" },
          rust = { "rustfmt" },
          lua = { "stylua" },
          typescript = { "prettierd" },
          svelte = { "prettierd" },
          python = { "ruff_format" },
        },
        format_on_save = {
          lsp_fallback = true,
          timeout_ms = 500,
        },
        ensure_installed = {
          "goimports",
          "gofumpt",
          "rustfmt",
          "prettierd",
          "ruff",
        },
      })
    end,
  },
}
