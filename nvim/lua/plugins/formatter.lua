return {
    "stevearc/conform.nvim",
    opts = {
        formatters_by_ft = {
            go = { "gopls" },
            javascript = { "prettier" },
            html = { "prettier" },
            css = { "prettier" },
            python = { "ruff_format" },
        },
        formatters = {
            prettier = {
                command = "npx",
                args = {
                    "prettier",
                    "--tab-width",
                    "4",
                    "--plugin",
                    "prettier-plugin-embed",
                    "--stdin-filepath",
                    "$FILENAME",
                },
                stdin = true,
            },
            ruff_format = {
                command = "ruff",
                args = {
                    "format",
                    "--line-length",
                    "120",
                    "--stdin-filename",
                    "$FILENAME",
                    "-",
                },
                stdin = true,
            },
        },
    },
}
