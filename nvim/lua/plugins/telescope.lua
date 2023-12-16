return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.4",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"nvim-treesitter/nvim-treesitter",
	},
	config = function()
        require('telescope').setup({})
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>ti', builtin.help_tags, {})
    end,
	keys = {
		{ "<leader>tf", "<cmd>lua require('telescope.builtin').git_files()<cr>", desc = "Find Files" },
		{ "<leader>tg", "<cmd>lua require('telescope.builtin').live_grep()<cr>", desc = "Live Grep" },
		{ "<leader>tb", "<cmd>lua require('telescope.builtin').buffers()<cr>", desc = "Buffers" },
		{ "<leader>th", "<cmd>lua require('telescope.builtin').help_tags()<cr>", desc = "Help Tags" },
		{ "<leader>tt", "<cmd>lua require('telescope.builtin').treesitter()<cr>", desc = "Telescope w/ Treesitter" },
		{ "<leader>ts", "<cmd>lua require('telescope.builtin').grep_string()<cr>", desc = "Grep String" },
		{
			"<leader>tz",
			"<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<cr>",
			desc = "Current Buffer Fuzzy Find",
		},
	},
}
