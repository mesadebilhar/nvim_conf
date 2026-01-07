vim.g.mapleader = " "
vim.keymap.set('n', '<Leader>e', ':Ex<cr>', { desc = 'Abrir diretório atual'})
vim.keymap.set('n', '<Leader>se', ':Sex<cr>', { desc = 'Abre diretório em H. split'})
vim.keymap.set('n', '<Leader>ve', ':Vex<cr>', { desc = 'Abre o diretório V. Split'})
vim.keymap.set('n', '<Leader>p', ':Lazy<cr>', { desc = 'Gerenciador de plugins'})
vim.keymap.set("n", "<leader>r", ':set relativenumber!<CR>')

-- Troca para o diretório atual, usar com cuidado para não ficar preso em pasta kk
-- É útil para o fuzzy pegar o diretório da pasta 
vim.keymap.set("n", "<leader>cd",function()
	cwd = vim.cmd('cd %:p:h')
	print("Mudou para o diretório: " .. vim.fn.expand("%:p:h"))
end
, {desc='Muda para o diretório atual'}
)

-- Navegação de janelas mais dinâmico.
vim.keymap.set("n", "<M-w>", "<C-W>w")
vim.keymap.set("n", "<M-j>", "<C-W>j")
vim.keymap.set("n", "<M-k>", "<C-W>k")
vim.keymap.set("n", "<M-l>", "<C-W>l")
vim.keymap.set("n", "<M-h>", "<C-W>h")
vim.keymap.set("n", "<M-q>", "<C-W>q")
-- Se estiver usando powershell, recomendo usar o numpad. Usar shift= 
-- pode acabar abrindo uma sessão nova em split
vim.keymap.set("n", "<M-+>", "<C-W>+")
vim.keymap.set("n", "<M-->", "<C-W>-")
-- Apenas para teste.
-- vim.keymap.set("n", "<Leader>E", function()
	-- 	local miniFiles = require('mini.files')
	-- 	miniFiles.open()
	-- 	end
	-- )
