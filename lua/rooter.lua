-- Incompátivel com versões antigas
local M = {}
local padroes = {".git", "package.json", "composer.json","pom.xml", "README.md", "Makefile"}

M.check = function ()
	local root_dir = vim.fs.root(0, padroes)
	if root_dir == nil then
		vim.fn.chdir(vim.fn.expand("%:p:h"))
		print("Mudando para o dir: " .. vim.fn.expand("%:p:h"))
	else
		vim.fn.chdir(root_dir)
		print("Root dir detectado: " .. root_dir)
	end
end

return M
