-- Configurações gerais
vim.cmd("syntax enable")
require("lazy/lazy")
vim.opt.number = true
vim.opt.wrap = false
vim.opt.clipboard = "unnamedplus"
vim.g.netrw_bufsettings = 'nu nowrap'
vim.opt.cursorline = false
vim.opt.cursorcolumn = false
vim.o.background = "dark"
vim.o.winborder = 'rounded'
vim.o.pumborder = 'rounded'
vim.cmd("colorscheme retrobox")
vim.opt.termguicolors = true

-- Keymaps
vim.g.mapleader = " "
local keymap = vim.keymap.set
keymap('n', '<Leader>e', ':Ex<cr>', { desc = 'Abrir diretório atual' })
keymap('n', '<Leader>se', ':Sex<cr>', { desc = 'Abre diretório em H. split' })
keymap('n', '<Leader>ve', ':Vex<cr>', { desc = 'Abre o diretório V. Split' })
keymap('n', '<Leader>p', ':Lazy<cr>', { desc = 'Gerenciador de plugins' })
keymap("n", "<leader>r", ':set relativenumber!<CR>', { desc = 'Ativa linhas relativas' })
keymap("n", '<leader>w', ':write<cr>', { desc = 'Salvar' })
keymap("n", '<leader>q', ':xa<cr>', { desc = 'Fecha todos os buffers e salva' })
keymap("n", '<leader>ss', ':%s/', { desc = "Substituir" })
keymap("n", '<leader>lf', vim.lsp.buf.format, { desc = "Formata o buffer" })
keymap("n", 'gd', vim.lsp.buf.definition, { desc = "Vai para a definição" })
keymap("n", '<Esc>d', vim.diagnostic.open_float, {desc = "Mostrar diagnósticos"})
-- Troca para o diretório atual, usar com cuidado para não ficar preso em pasta kk
-- É útil para o fuzzy pegar o diretório da pasta
keymap("n", "<leader>cd", function()
		cwd = vim.cmd('cd %:p:h')
		print("Mudou para o diretório: " .. vim.fn.expand("%:p:h"))
	end
	,
	{ desc = 'Muda para o diretório atual' })

-- Navegação de janelas mais dinâmico.
-- "Esc" também é interpretado como a tecla "meta"
keymap("n", "<Esc>", "<C-W>")
-- Descobri sem querer como que apagava para trás lol
keymap("i", "<C-Backspace>", "<C-W>")
-- vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter"},{
-- 	pattern = {".git","README.md","package.json", "MAKEFILE"},
--
-- })
