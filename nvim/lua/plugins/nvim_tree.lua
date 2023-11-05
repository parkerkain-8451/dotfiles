return {
	"nvim-tree/nvim-tree.lua",
	dependencies = {"nvim-tree/nvim-web-devicons"},
	config=true,
	keys = {
      		{ "<leader>ee", "<cmd>NvimTreeToggle<cr>", desc = "Open File Explorer" },
      		{ "<leader>ef", "<cmd>NvimTreeFindFile<cr>", desc = "Open File Explorer to This File" },
    	},
}
