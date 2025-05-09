-- lua/plugins/auto-save.lua
return {
  "okuuva/auto-save.nvim",
  cmd = "ASToggle", -- Load the plugin when ASToggle is called
  opts = {
    enabled = false, -- Disabled by default
    -- You can still keep your preferred trigger_events and other settings
    trigger_events = {
      immediate_save = { "BufLeave", "FocusLost" },
      defer_save = { "InsertLeave", "TextChanged" },
      cancel_deferred_save = { "InsertEnter" },
    },
  },
  keys = {
    { "<leader>a", "<cmd>ASToggle<cr>", desc = "Toggle Auto Save", mode = "n" },
  },
}
