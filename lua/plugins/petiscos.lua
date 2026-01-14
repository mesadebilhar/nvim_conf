return {
	'folke/snacks.nvim',
	lazy = false,
	opts = {
		dashboard = {
			enabled = true,
			width = 60,
			col = nil,
			row = nil,
			pane_gap = 2,
			preset = {
			keys = {
			 	{ icon = "", key = "f", desc = "Encontrar arquivos", action = ":lua Snacks.dashboard.pick('files')"},
				{ icon = "✎", key = "n", desc = "Novo arquivo", action = ":lua Snacks.dashboard.pick('live_grep')"},
				{ icon = "🗎", key = "g", desc = "Grep arquivos", action = ":lua Snacks.dashboard.pick('live_grep')"},
				{ icon = "⚙", key = "c", desc = "Configurações do neovim", action = ":lua Snacks.dashboard.pick('files', { cwd = vim.fn.stdpath('config')})"},
				{ icon = "ᶻ 𝗓 𐰁", key = "L", desc = "Lazy", action = ":Lazy", enabled = package.loaded.lazy ~= nil},
				{ icon = "☺", key = "q", desc = "Sair", action = ":qa"}, 
			},
		},
			sections = {
				{
					section = "terminal",
					cmd = "chafa -c full --align center,center --size 32x32 " .. vim.fn.stdpath("config") .. "/mascote/CARNEbuzina.png; sleep .1",
					height = 32,
					padding = 1,
					gap = 1,
					{title = "Seja bem-vindo!", align = "center"},
					{section = "startup" }
				},
				{
					pane = 2,
					{section = "terminal",
					 enabled = function()
					 return Snacks.git.get_root() ~=nil
					 end,
					 cmd = "git log --all --decorate --oneline --graph",
					 height = 25,
					{section = "keys", gap = 1}

					},
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

