return {
  "vague2k/vague.nvim",
  config = function()
    vim.cmd("colorscheme vague")
    -- NOTE: you do not need to call setup if you don't want to.
    require("vague").setup({
      -- optional configuration here
    })
  end,
}
