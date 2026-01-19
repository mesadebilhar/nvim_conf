return {
	'nvim-treesitter/nvim-treesitter',
	lazy = false,
	build = ':TSUpdate',
	opts = {
		highlight = {
			enable = true,
		},
		indent = { enable = true },
		ensure_installed = {
			"c",
			"cpp",
			"javascript",
			"typescript",
			"tsx",
			"json",
			"markdown",
			"php",
			"html",
			"css",
			"markdown",
			"bash",
			"lua"
		}
	}
}
