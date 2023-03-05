local m = {}
-- 0 disable progress
-- 1 lualine lsp progress
-- 2 fidget progress
m.progress = 2
-- style
-- 0 =  default
-- 1 = { left = "", right = "" },
-- 2 = { left = " ", right = " " },
-- 3 = { left = "", right = "" },
m.lualine_style = 0
-- style status icon
-- 0 = default
-- 1 = vim icon " "
-- 2 = vim icon " "
m.status_icon = 0
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
m.custom_lualine = false
m.component_separators = { left = " ", right = " " }
m.section_separators = { left = "", right = " " }
-- end custom lualine style

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
m.colorscheme = "gruvbox-baby"
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
m.transparent_mode = 0
return m
