local M = {}
local groups = require("carnuxo.carne")
M.setup = function(opts)
	local opts =  {}
	local escolha = paleta or "carne"
	for group, set in pairs(groups.colorGroup(escolha)) do
	vim.api.nvim_set_hl(0,group,set)
end
end

return M
