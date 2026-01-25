return {
	{'nvim-mini/mini.pairs', version = false, 
	opts = {
	},
	event = {"InsertEnter"},
	enabled = false
},
	{'nvim-mini/mini.surround', version = false, opts={}, event = {"BufNewFile", "BufReadPost"}},
	{'nvim-mini/mini.move', version = false, opts={
		mappings = {
			-- Visual mode
			left = '<M-C-h>',
			right = '<M-C-l>',
			down = '<M-C-j>',
			up = '<M-C-k>',
			-- Modo normal
			line_left = '<M-C-h>',
			line_right = '<M-C-l>',
			line_down = '<M-C-j>',
			line_up = '<M-C-k>',

		},
		options = {
			reindent_linewise = true,
		}
	}, event = {"BufNewFile", "BufReadPost"}},
}
