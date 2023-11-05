return {
	'nvim-telescope/telescope.nvim', tag = '0.1.4',
	dependencies = { 
		'nvim-lua/plenary.nvim',
		'nvim-tree/nvim-web-devicons',
		'nvim-treesitter/nvim-treesitter',
	},
	config=true,
	keys = {
      		{ "<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<cr>", desc = "Find Files" },
		{ "<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>", desc = "Live Grep" },
		{ "<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<cr>", desc = "Buffers" },
		{ "<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<cr>", desc = "Help Tags"},
		{ "<leader>ft", "<cmd>lua require('telescope.builtin').treesitter()<cr>", desc = "Telescope w/ Treesitter"},
		{ "<leader>fz", "<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<cr>", desc = "Current Buffer Fuzzy Find"},
    	},
}
