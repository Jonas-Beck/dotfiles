return {
	{
		"smjonas/inc-rename.nvim",
		config = function()
			-- set keymaps
			local keymap = vim.keymap -- for conciseness

			keymap.set("n", "<leader>cr", function()
				return ":IncRename " .. vim.fn.expand("<cword>")
			end, { desc = "Rename current word" }) -- toggle file explorer
		end,
	},
}
