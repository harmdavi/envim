vim.opt.thesaurus = vim.fn.stdpath("config") .. "envim/resources/thesaurus/thesaurus.txt"

--Moving between windows
vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Window Left' })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Window Down' })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Window Up' })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Window Right' })
