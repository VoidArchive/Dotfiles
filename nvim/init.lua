-- Make sure to setup `mapleader` and `maplocalleader` before
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.opt.clipboard = "unnamedplus" -- clipboard registry
vim.opt.number = true -- show line numbers
vim.opt.relativenumber = true -- relative line numbers
vim.opt.mouse = "a" -- enable mouse support
vim.opt.expandtab = true -- convert tabs to spaces
vim.opt.shiftwidth = 4 -- indent width
vim.opt.tabstop = 4 -- number of spaces per tab
vim.opt.smartindent = true -- auto-indent new lines
vim.opt.termguicolors = true -- enable true color
vim.opt.scrolloff = 8 -- keep cursor 8 lines from screen edge
vim.opt.signcolumn = "yes" -- always show the sign column

require("config.lazy")

vim.diagnostic.config({
  virtual_text = true, -- Set to false to disable inline diagnostics
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
})

vim.o.updatetime = 250
vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
  callback = function()
    vim.diagnostic.open_float(nil, { focus = false })
  end,
})
