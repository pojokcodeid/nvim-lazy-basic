local null_ls = require("null-ls")
local m = {
	sources = {
		null_ls.builtins.formatting.stylua, -- tambahkan di bawah sini
		-- null_ls.builtins.diagnostics.flake8, -- tambahkan di bawah sini
	},
}
return m
