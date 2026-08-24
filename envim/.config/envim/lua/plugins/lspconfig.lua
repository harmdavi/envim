return {
    "neovim/nvim-lspconfig",

    config = function()
        vim.lsp.config("harper_ls", {
            filetypes = {
                "markdown",
                "text",
                "tex",
		"plaintex",
            },

            settings = {
                ["harper-ls"] = {
                    userDictPath = "",
                    workspaceDictPath = "",
                    fileDictPath = "",

                    linters = {
                        SpellCheck = true,
                        SpelledNumbers = false,
                        AnA = true,
                        SentenceCapitalization = true,
                        UnclosedQuotes = true,
                        WrongApostrophe = false,
                        LongSentences = true,
                        RepeatedWords = true,
                        Spaces = true,
                        CorrectNumberSuffix = true,
                    },

                    codeActions = {
                        ForceStable = false,
                    },

                    markdown = {
                        IgnoreLinkTitle = false,
                    },

                    diagnosticSeverity = "hint",
                    isolateEnglish = false,
                    dialect = "American",
                    maxFileLength = 120000,
                    ignoredLintsPath = "",
                    excludePatterns = {},
                },
            },
        })
            -- LTeX+
            vim.lsp.config("ltex_plus", {
                cmd = { "ltex-ls-plus" },

                filetypes = {
                    "tex",
                    "plaintex",
                    "bib",
                },

                settings = {
                    ltex = {
                        language = "en-US",

                        enabled = {
                            "latex",
                            "tex",
                            "bibtex",
                        },
                    },
                },
            })
        vim.lsp.enable("harper_ls")
        vim.lsp.enable("ltex_plus")
    end,
}
