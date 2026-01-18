-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  desc = "Close some special filetype buffers",
  pattern = { "qf", "checkhealth", "help" },
  callback = function()
    vim.keymap.set("n", "<leader>x", "<cmd>bd<cr>", { silent = true, buffer = true })
  end,
})

-- close neo-tree if it's the last buffer open
vim.api.nvim_create_autocmd("BufEnter", {
  pattern = "*",
  callback = function()
    if #vim.api.nvim_list_bufs() == 1 and vim.bo.filetype == "neo-tree" then
    vim.cmd("quit")
  end
  end,
})

-- restore cursor pos on file open
vim.api.nvim_create_autocmd("BufReadPost", {
  pattern = "*",
  callback = function()
  local line = vim.fn.line("'\"")
  if line > 1 and line <= vim.fn.line("$") then
    vim.cmd("normal! g'\"")
  end
end,
})

-- restore cursor pos on file open
vim.api.nvim_create_autocmd("BufReadPost", {
  pattern = "*",
  callback = function()
  local line = vim.fn.line("'\"")
  if line > 1 and line <= vim.fn.line("$") then
    vim.cmd("normal! g'\"")
  end
end,
})

-- Enable highlights for my preferred languages through tree sitter
vim.api.nvim_create_autocmd("FileType", {
  desc = "Enable tree sitter highlighting for some of the frequent languages that I use",
  pattern = { "asm", "c", "cpp", "cs", "haskell", "python", "rust" },
  callback = function()
    vim.treesitter.start()
  end,
})

-- HACK to remove any plugin that sets formatoptions tcro and tw for local buffers
vim.cmd([[autocmd BufNewFile,BufRead,BufWinEnter * setlocal formatoptions-=t]])
vim.cmd([[autocmd BufNewFile,BufRead,BufWinEnter * setlocal formatoptions-=c]])
vim.cmd([[autocmd BufNewFile,BufRead,BufWinEnter * setlocal formatoptions-=r]])
vim.cmd([[autocmd BufNewFile,BufRead,BufWinEnter * setlocal formatoptions-=o]])
vim.cmd([[autocmd BufNewFile,BufRead,BufWinEnter * setlocal textwidth=0]])
