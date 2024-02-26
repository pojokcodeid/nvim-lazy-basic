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

local transparent_mode = require("core.config").transparent_mode
if transparent_mode ~= nil then
	if transparent_mode == 1 then
		vim.cmd("TransparentDisable")
		vim.cmd("TransparentEnable")
	end
end
