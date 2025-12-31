return {
    {
        "neovim/nvim-lspconfig",
        opts = {
            servers = {
                -- ✅ Official Go Language Server (for definitions, hover, etc.)
                gopls = {
                    settings = {
                        gopls = {
                            analyses = {
                                unusedparams = true,
                                shadow = true,
                            },
                            staticcheck = true,
                        },
                    },
                },

                -- ✅ GolangCI Lint Language Server (for lint diagnostics)
                golangci_lint_ls = {},
            },

            setup = {
                golangci_lint_ls = function(_, _)
                    local lspconfig = require("lspconfig")
                    lspconfig.golangci_lint_ls.setup({
                        cmd = { "golangci-lint-langserver" },
                        filetypes = { "go", "gomod" },
                        init_options = {
                            command = {
                                "golangci-lint",
                                "run",
                                "--out-format=json",
                                "--show-stats=false",
                            },
                        },
                        root_dir = lspconfig.util.root_pattern(
                            ".golangci.yml",
                            ".golangci.yaml",
                            ".golangci.toml",
                            ".golangci.json",
                            "go.work",
                            "go.mod",
                            ".git"
                        ),
                    })
                    return true
                end,
            },
        },
    },
}
