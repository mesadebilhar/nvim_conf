return{
	{'neovim/nvim-lspconfig'},
	{'mason-org/mason.nvim', opts={}, keys={
		{"<leader>m", ":Mason<CR>", desc="Abre o mason"}
	}
},
	{'mason-org/mason-lspconfig.nvim', opts = {}},
	{'hrsh7th/cmp-nvim-lsp', enabled = true},
	{'hrsh7th/nvim-cmp', opts={}, enabled = true},
	{'nvim-mini/mini.completion', enabled=false,opts={}},
	{'saghen/blink.cmp', version = '1.*', enabled=false, opts={
		keymap = { preset = 'default' },
		fuzzy = { implementation = "lua"}
	}}
}
