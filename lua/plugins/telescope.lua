return{
	'nvim-telescope/telescope.nvim', tag = 'v0.2.1',
	enabled = false,
	dependencies = {
		'nvim-lua/plenary.nvim',
		{ 'nvim-telescope/telescope-fzf-native.nvim'},
	},
	keys = {
		{ "<leader>ff", function() require("telescope.builtin").find_files() end, desc = "Encontrar arquivos :)"},
		{ "<leader>fg", function() require("telescope.builtin").live_grep() end, desc = "Texto no diretório"},
		{ "<leader>fh", function() require("telescope.builtin").help_tags() end, desc = "Seções de ajudas (geral)"},
		{ "<leader>fb", function() require("telescope.builtin").list_buffers() end, desc = "Listar buffers"},
		{ "<leader>fc", function() require("telescope.builtin").colorscheme() end, desc = "Listar tema de cores"},
		{ "<leader>ns", function() require("telescope.builtin").find_files({cwd = vim.fn.stdpath("config")}) end, desc = "Configuração do neovim"},
	},
	opts = {
		defaults = {
			initial_mode = "normal",
		},
	},
}
