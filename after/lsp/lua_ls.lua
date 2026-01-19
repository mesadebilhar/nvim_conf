-- Por algum motivo isso não vem ativado (????)
-- No plugin nvim-lspconfig tem o exemplo de como ativar isso
return {
	settings = {
		Lua = {
			workspace = {
				checkThirdParty = false,
				library = {
					vim.env.VIMRUNTIME
				}
			}
		}
	}
}
