return {
    'nvim-telescope/telescope.nvim',
    version = '*',

    dependencies = {
        'nvim-lua/plenary.nvim',
        'archie-judd/telescope-words.nvim',
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },

    keys = {
        {
            '<leader>ff',
            '<cmd>Telescope find_files<cr>',
            desc = 'Telescope find files',
        },
        {
            '<leader>fg',
            '<cmd>Telescope live_grep<cr>',
            desc = 'Telescope live grep',
        },
        {
            '<leader>fb',
            '<cmd>Telescope buffers<cr>',
            desc = 'Telescope buffers',
        },
        {
            '<leader>fh',
            '<cmd>Telescope help_tags<cr>',
            desc = 'Telescope help tags',
        },
	-- For my dictionary and thesaurus
        {
            '<leader>sbd',
            function()
                require('telescope')
                    .extensions.telescope_words
                    .search_dictionary()
            end,
            desc = 'Telescope: search dictionary',
        },

        {
            '<leader>sd',
            function()
                require('telescope')
                    .extensions.telescope_words
                    .search_dictionary_for_word_under_cursor()
            end,
            desc = 'Telescope: search dictionary (cursor)',
        },

        {
            '<leader>sbt',
            function()
                require('telescope')
                    .extensions.telescope_words
                    .search_thesaurus()
            end,
            desc = 'Telescope: search thesaurus',
        },

        {
            '<leader>st',
            function()
                require('telescope')
                    .extensions.telescope_words
                    .search_thesaurus_for_word_under_cursor()
            end,
            desc = 'Telescope: search thesaurus (cursor)',
        },
    },

    config = function()
        local telescope = require('telescope')
        local word_actions = require('telescope-words.actions')

        telescope.setup({
            defaults = {
                mappings = {
                    i = {
                        ['<C-h>'] = 'which_key',
                    },
                },
            },

	    -- Dictionary and Thesaurus mappings
            extensions = {
                telescope_words = {
                    mappings = {
                        n = {
                            ['<CR>'] =
                                word_actions.replace_word_under_cursor,
                        },
                        i = {
                            ['<CR>'] =
                                word_actions.replace_word_under_cursor,
                        },
                    },
                },
            },
        })

        telescope.load_extension('telescope_words')
    end,
}
