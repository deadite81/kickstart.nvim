--[[
    - https://learnxinyminutes.com/docs/lua/
    - :help lua-guide
    - (or HTML version): https://neovim.io/doc/user/lua-guide.html
--]]
require 'core.options'
require 'core.keymaps'
require 'core.snippets'
--
-- [[ Install `lazy.nvim` plugin manager ]]
-- See `:help lazy.nvim.txt` or https://github.com/folke/lazy.nvim for more info
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end

---@type vim.Option
local rtp = vim.opt.rtp
rtp:prepend(lazypath)

--
-- [[ Configure and install plugins ]]
--
require('lazy').setup {
  require 'plugins.autocompletion',
  require 'plugins.bufferline',
  require 'plugins.colorscheme',
  require 'plugins.gitsigns',
  require 'plugins.lsp',
  require 'plugins.mini',
  require 'plugins.misc',
  require 'plugins.neotree',
  require 'plugins.none-ls',
  require 'plugins.snacks',
  require 'plugins.telescope',
  require 'plugins.treesitter',
  require 'plugins.which-key',
}

-- vim: ts=2 sts=2 sw=2 et
