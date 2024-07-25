vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.shiftround = true
vim.wo.number = true
vim.o.relativenumber = false
vim.o.pumheight = 10
vim.o.clipboard = "unnamedplus"
vim.opt.termguicolors = true
vim.cmd("hi Normal guibg=NONE ctermbg=NONE")
vim.cmd("hi NonText guibg=NONE ctermbg=NONE")
vim.cmd("hi LineNr guibg=NONE ctermbg=NONE")
vim.cmd("hi SignColumn guibg=NONE ctermbg=NONE")
vim.cmd("hi EndOfBuffer guibg=NONE ctermbg=NONE")
vim.cmd("hi CursorLine guibg=NONE")
vim.cmd("hi Visual guibg=NONE")

vim.cmd([[colorscheme catppuccin-mocha]])
