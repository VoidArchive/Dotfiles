return {
	"abecodes/tabout.nvim",
	event = "InsertEnter",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"hrsh7th/nvim-cmp",
	},
	config = function()
		require("tabout").setup({
			tabkey = "<Tab>",
			backwards_tabkey = "<S-Tab>",
			act_as_tab = true,
			enable_backwards = true,
			completion = true,
			ignore_beginning = true,
			exclude = {},
		})
	end,
}
