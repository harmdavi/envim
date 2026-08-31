vim.opt.thesaurus = vim.fn.stdpath("config") .. "envim/resources/thesaurus/thesaurus.txt"

--Moving between windows
vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Window Left' })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Window Down' })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Window Up' })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Window Right' })

--LSP stuff
vim.keymap.set('n', '<leader>sa', vim.lsp.buf.code_action, { desc = 'Suggestion Actions' })
vim.keymap.set("n", "<leader>li", ":%!latexindent<CR>", { desc = "Format LaTeX", })


-- Cursor Movement Stuff
--vim.keymap.set("n", "j", "gj", { noremap = true, silent = true })
--vim.keymap.set("n", "k", "gk", { noremap = true, silent = true })
--vim.keymap.set("n", "j", "gj", { noremap = true, silent = true })
--vim.keymap.set("n", "k", "gk", { noremap = true, silent = true })

-- Vim Stuff
vim.opt.undofile = true
vim.opt.number = true
vim.cmd("set wrap")
--vim.opt.relativenumber = false 

-- Clipboard
vim.opt.clipboard = "unnamedplus"

--vim.opt.thesaurus = vim.fn.expand("../resources/thesaurus/thesaurus.txt")

-- For terminal transparency 
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" }) -- For non-current windows


