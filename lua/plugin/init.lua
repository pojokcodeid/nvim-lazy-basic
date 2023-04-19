-- custom plugins disini
return {
	{ "nvim-treesitter/nvim-treesitter" },
	-- -- for tree exploler
	-- {
	-- 	"kyazdani42/nvim-tree.lua",
	-- 	event = "BufRead",
	-- 	cmd = { "NvimTree", "NvimTreeToggle", "NvimTreeFocus", "NvimTreeClose" },
	-- 	-- dependencies = "kyazdani42/nvim-web-devicons",
	-- 	config = function()
	-- 		local data_exists, treeconfig = pcall(require, "core.config")
	-- 		if data_exists then
	-- 			if treeconfig.loadnvimtree_lazy then
	-- 				require("user.nvim-tree")
	-- 			end
	-- 		end
	-- 	end,
	-- },
	-- You can deactivate the plugin below
	-- unremark the plugins
	-- change true to false

	-- -- default false
	-- { "folke/trouble.nvim", enabled = false }, -- for show the trouble
	-- { "RRethy/vim-illuminate", event = "BufRead", enabled = false }, -- for hilight text

	-- -- default true
	-- { "saadparwaiz1/cmp_luasnip", event = "BufRead", enabled = true }, -- for cmp luasnip
	-- { "hrsh7th/cmp-nvim-lua", event = "BufRead", enabled = true }, -- for cmp nvim lua
	-- { "gelguy/wilder.nvim", enabled = true }, -- for cmp cmd line
	-- { "williamboman/nvim-lsp-installer", event = "VeryLazy", lazy = true, enabled = true }, -- for install lsp not support mason
	-- { "mg979/vim-visual-multi", event = "BufRead", enabled = true }, --for select multiple
	-- { "rcarriga/nvim-notify", enabled = true }, -- for alert notification
	-- { "karb94/neoscroll.nvim", event = "BufRead", enabled = true }, --for smooth scroll
	-- { "dstein64/nvim-scrollview", event = "BufRead", enabled = true }, -- for scroll view
	-- { "dstein64/vim-startuptime", event = "BufRead", enabled = true }, -- fro check startuptime
	-- { "moll/vim-bbye", event = "BufRead", enabled = true }, -- for delete buffers (close files) without closing your windows
}
