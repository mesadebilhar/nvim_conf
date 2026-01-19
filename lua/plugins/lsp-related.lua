return {
	{"williamboman/mason-lspconfig.nvim", opts = {
		ensure_installed = {
			"clangd",
			"ts_ls",
			"lua_ls",
			"html",
			"cssls"
		}
	},
	dependencies = {
		{ "williamboman/mason.nvim", opts = {}},
		{"neovim/nvim-lspconfig"}
	},
	event = {"InsertEnter"},
},
	{ 'hrsh7th/cmp-nvim-lsp',           enabled = true, event = {"InsertEnter"} },
	{
		'hrsh7th/nvim-cmp',
		opts = {},
		enabled = true,
		event = { "InsertEnter" },
		config = function()
			local borda = {
				{ '❀' }, --Borda superior esquerda
				{ '─' },
				{ '✶' }, --Borda superior direita
				{ '│' },
				{ '❀' }, --Borda inferior direita
				{ '─' },
				{ '☻' }, --Borda Inferior esquerda
				{ '│' },
			}
			-- Lsp
			local cmp = require('cmp')
			cmp.setup({
				window = {
					completion = cmp.config.window.bordered({ border = borda }),
					documentation = cmp.config.window.bordered({ border = borda })
				},
				mapping = {
					['<C-n>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
					['<C-p>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
					['<Down>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
					['<Up>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }),
					['<C-d>'] = cmp.mapping.scroll_docs(-4),
					['<C-f>'] = cmp.mapping.scroll_docs(4),
					['<C-Space>'] = cmp.mapping.complete(),
					['<C-e>'] = cmp.mapping.close(),
					['<CR>'] = cmp.mapping.confirm({
						behavior = cmp.ConfirmBehavior.Replace,
						select = true,
					}),
					['<tab>'] = function()
						if cmp.visible() then
							cmp.select_next_item()
						end
					end,
					['<S-tab>'] = function()
						if cmp.visible() then
							cmp.select_prev_item()
						end
					end,
				},
				sources = {
					{ name = 'nvim_lsp' }
				}
			})
		end
	},
	{ 'nvim-mini/mini.completion', enabled = false, opts = {} },
	{
		'saghen/blink.cmp',
		version = '1.*',
		enabled = false,
		opts = {
			keymap = { preset = 'default' },
			fuzzy = { implementation = "lua" }
		}
	},

}
