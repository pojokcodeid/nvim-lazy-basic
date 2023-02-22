-- custom key maps disini
local function map(mode, l, r, desc)
	vim.keymap.set(mode, l, r, { desc = desc })
end
-- ini adalah contoh
map("n", "]h", '<cmd>lua print("Testing")<cr>', "Testing Mapping")
