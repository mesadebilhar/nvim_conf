return{
	{'neovim/nvim-lspconfig'},
	{'mason-org/mason.nvim', opts={}, keys={
		{"<leader>m", ":Mason<CR>", desc="Abre o mason"}
	}
},
	{'mason-org/mason-lspconfig.nvim', opts = {}},
	{'hrsh7th/cmp-nvim-lsp', },
	{'hrsh7th/cmp-buffer'},
	{'hrsh7th/cmp-path'},
	{'hrsh7th/cmp-cmdline'},
	{'hrsh7th/nvim-cmp', opts={}},
}
