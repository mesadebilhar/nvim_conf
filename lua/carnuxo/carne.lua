local M = {}

local paletas = {
	carne = {},
	cogumelo = {},
}
-- teste
-- paletas.carne.bg = "#000000"
-- local carneSet = paletas.carne
-- print(carneSet.bg)
local carneSet = paletas.carne
local cogumeloSet = paletas.cogumelo
if vim.o.background == 'light' then
	carneSet.bg = '#fffcf6'
	carneSet.fg = "#353747"
	carneSet.primary = "#414886"
	carneSet.secondary = "#47334b"
	carneSet.accent = "#ad4964"
	carneSet.surface = "#fffcf6"
	carneSet.muted = "#413638"
	carneSet.color1 = "#ad4964"
	carneSet.color2 = "#ce936d"
	carneSet.color3 = "#ce936d"
	carneSet.color4 = "#9e7397"
	carneSet.color5 = "#1d1f21"
	carneSet.color6 = "#282a2e"
else
	carneSet.bg = '#000000'
	carneSet.fg = "#c9d3fa"
	carneSet.primary = "#414886"
	carneSet.secondary = "#47334b"
	carneSet.accent = "#ad4964"
	carneSet.surface = "#000000"
	carneSet.muted = "#413638"
	carneSet.color1 = "#ad4964"
	carneSet.color2 = "#414886"
	carneSet.color3 = "#ce936d"
	carneSet.color4 = "#9e7397"
	carneSet.color5 = "#4733ab"
	carneSet.color6 = "#cdf9fb"
end
-- print(carneSet)


cogumeloSet.bg = '#f8f2d9'
cogumeloSet.fg = "#2A5951"
cogumeloSet.primary = "#8C2730"
cogumeloSet.secondary = "#658da6"
cogumeloSet.accent = "#2A5951"
cogumeloSet.surface = "#f8f2d9"
cogumeloSet.muted = "#D93B48"
cogumeloSet.color1 = "#27574e"
cogumeloSet.color2 = "#cd3339"
cogumeloSet.color3 = "#6288a3"
cogumeloSet.color4 = "#641514"
cogumeloSet.color5 = "#1d1f21"
cogumeloSet.color6 = "#282a2e"
-- print(cogumeloSet)

M.colorGroup = function(paleta)
	local tema = paletas[paleta] or paletas.carne
	return {
		Normal = { bg = tema.bg, fg = tema.fg}	,
		LineNr = { fg = tema.primary},
		Cursor = { bg = tema.fg, fg = tema.bg},
		Directory = { fg = tema.accent},
		
		Comment = {fg = tema.muted},
		Constant = {fg = tema.primary},
		String = {fg = tema.fg},
		Character = {link = 'String'},
		Number = {fg = tema.color2},
		Boolean = {fg = tema.color2},
		Float = {link = 'Number'},
		-- Comment = {},
		-- Comment = {},
		-- Comment = {},
		-- Comment = {},
		-- Comment = {},
		-- Comment = {},
		-- Comment = {},
		-- Comment = {},
	}
end

return M
