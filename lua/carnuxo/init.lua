local M = {}


M.setup = function(opts)
	opts = opts or {}
	local paleta = opts.paleta or "patinho"
	local groups = require("carnuxo/carne").color(paleta)
	
	local setColor = vim.api.nvim_set_hl
	for group, setting in pairs(groups) do
		setColor(0, group, setting)
	end
end

return M
