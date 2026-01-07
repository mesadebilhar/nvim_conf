return{ 
	'folke/snacks.nvim', 
	opts = {
		dashboard = {
			enabled = true,
			width = 70,
			row = nil,
			col = nil,
			pane_gap = 4,
			pick = nil,
				},
			},

		picker = {
			enabled = true
		},
	keys = {
		{ "<leader>ff", function() Snacks.picker.files() end, desc =  "Procurar arquivos :)"},
		{ "<leader>fg", function() Snacks.picker.grep() end, desc = "Grep no diretório"},
		{ "<leader>fb", function() Snacks.picker.buffers() end, desc = "Lista Buffers"},
		{ "<leader>fc", function() Snacks.picker.colorschemes() end, desc = "Picker de temas"},
		{ "<leader>ns", function() Snacks.picker.files({cwd = vim.fn.stdpath("config")})end, desc = "Neovim Config."},
		{ "<leader>fh", function() Snacks.picker.help() end, desc = "Páginas de ajuda"}
	},
}
