return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
	theme='doom',
	config = {
	  header = {

	   "                                                       ",
	   "                                                       ",
	   "                                                       ",
	   " ██████╗  █████╗ ██████╗ ██╗  ██╗      ██████╗ ███████╗",
	   " ██╔══██╗██╔══██╗██╔══██╗██║ ██╔╝     ██╔═══██╗██╔════╝",
	   " ██████╔╝███████║██████╔╝█████╔╝█████╗██║   ██║███████╗",
	   " ██╔═══╝ ██╔══██║██╔══██╗██╔═██╗╚════╝██║   ██║╚════██║",
	   " ██║     ██║  ██║██║  ██║██║  ██╗     ╚██████╔╝███████║",
	   " ╚═╝     ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝      ╚═════╝ ╚══════╝",
	   "                                                       ",
	   "                                                       ",
	   "                                                       ",
	},
	  center = {
	      {
		icon = ' ',
		icon_hl = 'Title',
		desc = 'Find File           ',
		desc_hl = 'String',
		key = 'f',
		keymap = 'SPC t f',
		key_hl = 'Number',
		key_format = ' %s', -- remove default surrounding `[]`
		action = "lua require('telescope.builtin').find_files()"
	      },
	      {
		icon = ' ',
		desc = 'Live Grep',
		key = 'g',
		keymap = 'SPC t g',
		key_format = ' %s', -- remove default surrounding `[]`
		action = "lua require('telescope.builtin').live_grep()"
	      },
	      {
		icon = ' ',
		desc = 'Search Help',
		key = 'h',
		keymap = 'SPC t h',
		key_format = ' %s', -- remove default surrounding `[]`
		action = "lua require('telescope.builtin').help_tags()"
	      },
	  },
	  footer = {
	   "                                                       ",
	   "       When in doubt, compensate with emojis! 🤔       ",
	   "                                                       ",
	}
	}
    }
  end,
  dependencies = { {'nvim-tree/nvim-web-devicons'}}
}
