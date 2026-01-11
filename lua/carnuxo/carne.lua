local M = {}

local paletas = {
	patinho = {
		bg = 	"#000000",
		fg =	"#C9D3FA",
		primary = "#414886",
		secondary = "#47334b",
		accent = "#ad4964",
		border = "#FFFFFF1A",
		muted = "#413738",
	},
	lagarto = {

		bg = 	"#fffcf6",
		fg =	"#C9D3FA",
		primary = "#414886",
		secondary = "#47334b",
		accent = "#ad4964",
		border = "#FFFFFF1A",
		muted = "#413738",
	},
	panceta = {

		bg = 	"#eeecf6",
		fg =	"#C9D3FA",
		primary = "#414886",
		secondary = "#47334b",
		accent = "#ad4964",
		border = "#FFFFFF1A",
		muted = "#413738",
	},
}


M.color = function(paleta)
	local colors = paletas[paleta] or paletas.patinho
	return {
		Normal = {fg = colors.fg, bg = colors.bg}
	}
end

return M


