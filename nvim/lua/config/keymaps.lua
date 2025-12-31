-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.api.nvim_set_keymap("n", "<leader>tn", ":lua require('neotest').run.run()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap(
    "n",
    "<leader>tf",
    ":lua require('neotest').run.run(vim.fn.expand('%'))<CR>",
    { noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
    "n",
    "<leader>ts",
    ":lua require('neotest').summary.toggle()<CR>",
    { noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
    "n",
    "<leader>to",
    ":lua require('neotest').output.open()<CR>",
    { noremap = true, silent = true }
)
vim.api.nvim_set_keymap("n", "<leader>tp", ":lua require('neotest').run.stop()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>md", ":MarkdownPreviewToggle<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>cvc", function()
    local file = vim.fn.expand("%:t") -- Get the current file name
    local output = vim.fn.expand("%:t:r") -- Output executable name
    vim.cmd("!gcc -o " .. output .. ".out" .. " " .. file)
end, { desc = "Compile and Run C Program" })
vim.keymap.set("n", "<leader>cvr", function()
    local file = vim.fn.expand("%:t") -- Get the current file name
    local output = vim.fn.expand("%:t:r") -- Output executable name
    vim.cmd("!gcc -o " .. output .. ".out" .. " " .. file .. " && ./" .. output .. ".out")
end, { desc = "Compile and Run C Program" })
vim.keymap.set("i", "jk", "<Esc>", { noremap = true })
vim.keymap.set("t", "<C-l>", "<C-\\><C-n>:clear<CR>i", { desc = "Clear terminal screen" })
vim.api.nvim_create_autocmd("TermOpen", {
    pattern = "term://*",
    callback = function()
        vim.keymap.set("t", "<C-l>", "<C-l>", { buffer = true, noremap = false, silent = true })
    end,
})

vim.keymap.set("n", "<leader>fd", function()
    require("conform").format({ bufnr = vim.api.nvim_get_current_buf() })
end)
