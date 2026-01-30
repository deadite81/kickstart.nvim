-- For more options, you can see `:help option-list`
vim.g.have_nerd_font = true
vim.g.termguicolors = true
vim.o.updatetime = 250
vim.o.timeoutlen = 300
vim.o.mouse = 'a'
vim.o.number = true
-- vim.o.relativenumber = true
vim.o.showmode = false

vim.schedule(function()
  vim.o.clipboard = 'unnamedplus' -- See `:help 'clipboard'`
end)

vim.o.undofile = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.signcolumn = 'yes'
vim.o.splitright = true
vim.o.splitbelow = true
vim.o.cursorline = true
vim.o.scrolloff = 5
vim.o.confirm = true
vim.o.inccommand = 'split' -- Preview substitutions live, as you type!

--  Notice listchars is set using `vim.opt` instead of `vim.o`.
--  It is very similar to `vim.o` but offers an interface for conveniently interacting with tables.
--   See `:help lua-options`
--   and `:help lua-options-guide`
vim.o.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.autoindent = true
vim.o.expandtab = true
vim.o.smartindent = true

vim.opt.wrap = true
vim.opt.linebreak = true -- Wrap at the end of a word rather than splitting it
vim.opt.breakindent = true -- Preserve indentation on wrapped lines
