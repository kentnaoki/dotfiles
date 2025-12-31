-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.env.PATH = vim.env.PATH .. ":" .. os.getenv("HOME") .. "/.fzf/bin"
