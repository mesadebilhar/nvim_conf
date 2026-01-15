-- Incompátivel com versões antigas
local padroes = {".git"}
local root_dir = vim.fs.root(0, padroes)

local check = function ()
	if root_dir == nil then
		vim.fn.chdir(vim.fn.expand("%:p:h"))
		print("Root dir detectado: " .. vim.fn.expand("%:p:h"))
	else
		vim.fn.chdir(root_dir)
		print("Root dir detectado: " .. root_dir)
	end
end

check()
