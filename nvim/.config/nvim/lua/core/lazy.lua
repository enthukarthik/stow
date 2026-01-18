-- Load basic configurations
require("core.options")
require("core.keymaps")
require("core.autocmds")

-- Bootstrap lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Load custom plugins
require("lazy").setup({
    spec = {
        { import = "plugins" }, -- import all plugins spec from the 'plugins' folder
    },
},
{
  defaults = { lazy = true, version = nil }, -- always lazy load and install the latest plugin
  install = { missing = true, colorscheme = { "tokyonight", "gruvbox", "catppuccin" } }, -- Install missing plugins and try to load one of the colorschemes
  checker = { enabled = true, notify = false }, -- automatically check for plugin updates, but don't notify
  change_detection = { enabled = true, notify = false }, -- automatically check for config updates, but don't notify
  performance = {
    rtp = {
      disabled_plugins = {
        "2html_plugin",
        "getscript",
        "getscriptPlugin",
        "gzip",
        "logipat",
        "matchit",
        "matchparen",
        "netrw",
        "netrwPlugin",
        "netrwSettings",
        "netrwFileHandlers",
        "rrhelper",
        "spellfile_plugin",
        "tar",
        "tarPlugin",
        "tohtml",
        "tutor",
        "vimball",
        "vimballPlugin",
        "zip",
        "zipPlugin",
      },
    },
  },
})

