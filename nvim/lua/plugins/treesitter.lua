return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  cmd = "TSPlaygroundToggle",
  event = { "BufReadPost", "BufNewFile" },
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "lua",
        "rust",
        "go",
        "python",
        "typescript",
        "svelte",
        "vim",
        "bash",
        "json",
        "yaml",
        "markdown",
      },
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      indent = {
        enable = true,
        disable = { "python", "yaml" },
      },
    })
  end,
}
