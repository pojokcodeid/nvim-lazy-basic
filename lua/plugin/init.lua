-- custom plugins disini
return {
	{ "nvim-treesitter/nvim-treesitter" },
	{
		"nvim-lualine/lualine.nvim",
		event = "BufWinEnter",
		config = function()
			require("user.lualine")
		end,
	},
	--- masukan plugin tambahan disini
	{ "folke/trouble.nvim", enabled = false }, -- ini untuk disable plugin
}
