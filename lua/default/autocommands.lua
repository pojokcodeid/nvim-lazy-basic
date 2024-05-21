-- custom auto comman disini
vim.cmd([[
  augroup neovim_terminal
    autocmd!
    " Enter Terminal-mode (insert) automatically
    autocmd TermOpen * startinsert
    " Disables number lines on terminal buffers
    autocmd TermOpen * :set nonumber norelativenumber
    " allows you to use Ctrl-c on terminal window
    autocmd TermOpen * nnoremap <buffer> <C-c> i<C-c>
  augroup END
]])

-- local transparent_mode = require("core.config").transparent_mode
local transparent_mode = vim.g.pcode_transparent_mode
if transparent_mode ~= nil then
	if transparent_mode == 1 then
		vim.cmd("TransparentDisable")
		vim.cmd("TransparentEnable")
	end
end

vim.api.nvim_create_autocmd("ExitPre", {
	group = vim.api.nvim_create_augroup("Exit", { clear = true }),
	command = "set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175,a:ver90",
	desc = "Set cursor back to beam when leaving Neovim.",
})
