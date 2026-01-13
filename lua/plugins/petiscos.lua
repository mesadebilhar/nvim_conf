return {
	'folke/snacks.nvim',
	lazy = false,
	opts = {
		dashboard = {
			enabled = true,
			width = 70,
			pane_gap = 4,
			sections = {
				{

					section = "terminal",
					cmd = 'chafa --size 48x48 --stretch --dither ordered "'  .. vim.fn.stdpath("config") .. '"/mascote/CARNEbuzina.png"',
					padding = 2,
					height = 48
				},

			},

		},
		picker = {
			enabled = true
		},
		scroll = {
			enabled = true,
			animate = {
				duration = { step = 10, total = 200 },
				easing = "linear",
			}

		},

	},
	keys = {
		{ "<leader>ff", function() Snacks.picker.files() end,                                 desc = "Procurar arquivos :)" },
		{ "<leader>fg", function() Snacks.picker.grep() end,                                  desc = "Grep no diretório" },
		{ "<leader>fb", function() Snacks.picker.buffers() end,                               desc = "Lista Buffers" },
		{ "<leader>fc", function() Snacks.picker.colorschemes() end,                          desc = "Picker de temas" },
		{ "<leader>ns", function() Snacks.picker.files({ cwd = vim.fn.stdpath("config") }) end, desc = "Neovim Config." },
		{ "<leader>fh", function() Snacks.picker.help() end,                                  desc = "Páginas de ajuda" }
	},

}
