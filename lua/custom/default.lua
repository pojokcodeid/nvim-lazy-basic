-- custom colorscheme
-- colorscheme ready :
-- tokyonight, tokyonight-night, tokyonight-storm, tokyonight-day, tokyonight-moon
-- gruvbox-baby (default)
-- sonokai, sonokai_atlantis,
-- sonokai_andromeda,sonokai_shusia,sonokai_maia,sonokai_espresso
-- material, material_deepocean, material_palenight, material_lighter, material_darker
-- onedark, onedark_darker, onedark_cool, onedark_deep,onedark_warm,
-- onedark_warmer, onedark_light
-- lunar
-- nord
-- catppuccin, catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
-- dracula
-- nightfox, dayfox, dawnfox, duskfox, nordfox, terafox, carbonfox
vim.g.pcode_colorscheme = "gruvbox-baby"
-- custom transparent mode
-- only support
--  gruvbox-baby,
--  tokyonight,
--  sonokai,
--  material
--  onedark
--  catppuccin
--  nord
--  dracula
--  nightfox
-- 0 =off   1= on
vim.g.pcode_transparent_mode = 0
-- 0 disable progress
-- 1 lualine lsp progress
-- 2 fidget progress
vim.g.pcode_progress = 2
-- style
-- 0 =  default
-- 1 = { left = "", right = "" },
-- 2 = { left = " ", right = " " },
-- 3 = { left = "", right = "" },
vim.g.pcode_lualine_style = 0
-- style status icon
-- 0 = default
-- 1 = vim icon " "
-- 2 = vim icon " "
vim.g.pcode_status_icon = 0
-- start custom lualine style
-- contoh style
--   {
--     { left = "│", right = "│" },
--     { left = " ", right = " " },
--   },
--   {
--     { left = " ", right = " " },
--     { left = " ", right = "" },
--   },
--   {
--     { left = " ", right = " " },
--     { left = "", right = "" },
--   },
--   {
--     { left = "", right = "" },
--     { left = "", right = "" },
--   },
--   {
--     { left = " ", right = " " },
--     { left = "", right = "" },
--   },
-- }
vim.g.pcode_custom_lualine = false
vim.g.pcode_component_separators = { left = " ", right = " " }
vim.g.pcode_section_separators = { left = "", right = " " }
-- 0 ( format jalan)  1 (fromat off)
vim.g.pcode_format_on_save = 1
-- ini hanya untuk lsp yg tidak support masson
-- untuk referesi support language kunjungi link dibawah
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
vim.g.pcode_lsp_installer = {
	"yamlls",
	-- tambahkan di bawah sini setelah melakukan :masoninstall
}
-- untuk referesi support language kunjungi link dibawah
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
vim.g.pcode_register_lsp = {
	"yamlls",
	"intelephense",
	"marksman",
	"csharp_ls",
	"clangd",
	"dartls",
	"kotlin_language_server",
	"gopls",
	-- tambahkan di bawah sini setelah melakukan :masoninstall
}
vim.g.pcode_unregister_lsp = {
	"jdtls", -- tambahkan di bawah ini
}

-- https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md
local formatting = {}
local diagnostics = {}
vim.g.pcode_null_ls_sources = {
	formatting.stylua, -- tambahkan di bawah sini
	diagnostics.flake8, -- tambahkan di bawah sini
}

-- https://github.com/folke/which-key.nvim
vim.g.pcode_whichkey = {
	-- contoh penambahan
	-- ["k"] = {
	-- 	name = "Example",
	-- 	k = { '<cmd>lua print("Testing")<cr>', "Example" },
	-- },
	["r"] = {
		name = "Run",
		j = { "<cmd>Jaq float<CR>", "Run With Jaq" },
	},
	["o"] = { "<cmd>SymbolsOutline<cr>", "Symbol Outline" },
}

-- https://github.com/CRAG666/code_runner.nvim
vim.g.pcode_coderunner = {
	java = "cd $dir && javac $fileName && java $fileNameWithoutExt",
	python = "python3 -u",
	typescript = "deno run",
	rust = "cd $dir && rustc $fileName && $dir/$fileNameWithoutExt",
	-- cpp="gcc $fileName -lstdc++ -o $fileNameWithoutExt && $fileNameWithoutExt"
	cpp = "g++ $fileName -o $fileNameWithoutExt && $dir/$fileNameWithoutExt",
	scss = "sass $dir/$fileName $dir/$fileNameWithoutExt.css",
	javascript = "node $dir/$fileName",
	go = "go run $fileName",
}