return {
	{'nvim-mini/mini.pairs', version = false, 
	opts = {
		mappings = {
			['<'] = { action = 'open', pair = '<>', neigh_pattern = '[^\\].'},
			['>'] = { action = 'close', pair = '<>', neigh_pattern = '[^\\].'},
		},
	},
	event = {"BufNewFile", "BufReadPost"}
},
-- O plugin é legal, mas senti falta de uma option para mostrar o indíce de cada item num diretório
	{'nvim-mini/mini.files', version = false, enabled = false, 
		opts = { 
			mappings = {
				open = '<Leader>E',
				close = 'q',
				go_in = '<CR>',
				go_in_plus = 'L',
				go_out = '-',
				go_out_plus = 'H',
				mark_set = 'm',
				mark_go = "'",
				reset = '<BS>',
				reveal_cwd = '@',
				trim_left = '<',
				trim_right = '>',
				synchronize = '=',
				show_help = 'g?', },
			windows = { preview = false, },
			options = { use_as_default_explorer = false },
		},
		keys = {
			{ "<Leader>E", function() require("mini.files").open() end, desc = "Abrir explorador de arquivos"}
		}
	},
	{'nvim-mini/mini.surround', version = false, opts={}, event = {"BufNewFile", "BufReadPost"}},
}
