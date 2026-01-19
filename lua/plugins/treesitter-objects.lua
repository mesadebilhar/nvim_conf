return {
	"nvim-treesitter/nvim-treesitter-textobjects",
	branch = "main",
	init = function()
		vim.g.no_plugin_maps = true
	end,
	opts = {
		select = {
			lookahead = true,
		},
		move = {
			set_jumps = true,
		},
	},
}
