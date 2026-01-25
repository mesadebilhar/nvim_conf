local keymap = vim.keymap.set

keymap({ "x", "o" }, "af",
	function() require "nvim-treesitter-textobjects.select".select_textobject("@function.outer", "textobjects") end,
	{ desc = "Ao redor da função" })
keymap({ "x", "o" }, "if",
	function() require "nvim-treesitter-textobjects.select".select_textobject("@function.inner", "textobjects") end,
	{ desc = "Dentro da função" })
keymap({ "x", "o" }, "ac",
	function() require "nvim-treesitter-textobjects.select".select_textobject("@class.outer", "textobjects") end,
	{ desc = "Ao redor da classe" })
keymap({ "x", "o" }, "ic",
	function() require "nvim-treesitter-textobjects.select".select_textobject("@class.inner", "textobjects") end,
	{ desc = "Dentro da classe" })
keymap({ "x", "o" }, "al",
	function() require "nvim-treesitter-textobjects.select".select_textobject("@loop.outer", "textobjects") end,
	{ desc = "Fora do loop" })
keymap({ "x", "o" }, "il",
	function() require "nvim-treesitter-textobjects.select".select_textobject("@loop.inner", "textobjects") end,
	{ desc = "Dentro do loop" })

-- Pesadelo. Definindo maps para os textobjects
keymap({ "n", "x", "o" }, "]f", function()
	require("nvim-treesitter-textobjects.move").goto_next_start("@function.outer", "textobjects")
end, { desc = "Vai para a prox func" })

keymap({ "n", "x", "o" }, "]F", function()
	require("nvim-treesitter-textobjects.move").goto_next_end("@function.outer", "textobjects")
end, { desc = "Vai para a func anterior" })

keymap({ "n", "x", "o" }, "]c", function()
	require("nvim-treesitter-textobjects.move").goto_next_start("@class.outer", "textobjects")
end, { desc = "Vai para a prox classe" })


keymap({ "n", "x", "o" }, "]C", function()
	require("nvim-treesitter-textobjects.move").goto_next_end("@class.inner", "textobjects")
end, { desc = "Vai para o inicio da próxima func" })

keymap({ "n", "x", "o" }, "[f", function()
	require("nvim-treesitter-textobjects.move").goto_previous_start("@function.outer", "textobjects")
end, { desc = "Vai para a prox func" })

keymap({ "n", "x", "o" }, "[F", function()
	require("nvim-treesitter-textobjects.move").goto_previous_end("@function.outer", "textobjects")
end, { desc = "Vai para a func anterior" })

keymap({ "n", "x", "o" }, "[c", function()
	require("nvim-treesitter-textobjects.move").goto_previous_start("@class.outer", "textobjects")
end, { desc = "Vai para a prox classe" })

keymap({ "n", "x", "o" }, "[C", function()
	require("nvim-treesitter-textobjects.move").goto_previous_end("@class.inner", "textobjects")
end, { desc = "Vai para o inicio da próxima func" })
