-- Indentation guides
return {
	-- https://github.com/lukas-reineke/indent-blankline.nvim
	"lukas-reineke/indent-blankline.nvim",
	event = { "BufReadPre", "BufNewFile" },
	main = "ibl",
	opts = {
		enabled = true,
		indent = {
			char = "|",
		},
	},
}
