return {

    --Themes
    {
    "folke/tokyonight.nvim",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000 -- make sure to load this before all the other start plugins
    -- config = function()
      -- load the colorscheme here
      -- vim.cmd([[colorscheme tokyonight-night]])
    -- end,
  },

  
-- kanso - zen full black looks nice.
    {
  "webhooked/kanso.nvim",
  lazy = false,
  priority = 1000,
    config = function()
        vim.cmd("colorscheme kanso-zen")
    end,
    },

}
