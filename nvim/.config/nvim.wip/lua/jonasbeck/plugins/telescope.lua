return {
	{
		"nvim-telescope/telescope-ui-select.nvim",
	},
	{
		"nvim-telescope/telescope.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"BurntSushi/ripgrep",
			{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		},
		config = function()
			local telescope = require("telescope")
			local actions = require("telescope.actions")
			local builtin = require("telescope.builtin")

			telescope.setup({
				default = {
					mappings = {
						i = {
							["<C-k>"] = actions.move_selection_previous, -- move to prev result
							["<C-j>"] = actions.move_selection_next, -- move to next result
						},
					},
				},
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})

			telescope.load_extension("ui-select")
			telescope.load_extension("fzf")

			-- set keymaps
			local keymap = vim.keymap -- for conciseness

			keymap.set("n", "<leader>ff", builtin.find_files({ desc = "Fuzzy find files in cwd" }))
			keymap.set("n", "<leader><space>", builtin.find_files({ desc = "Fuzzy find files in cwd" }))
			keymap.set("n", "<leader>/", builtin.live_grep, { desc = "Live grep in cwd" })
			keymap.set("n", "<leader>fr", builtin.oldfiles, { desc = "Fuzzy find recent files" })
			keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Fuzzy find open buffers" })
			keymap.set("n", "<leader>:", builtin.commands, { desc = "Fuzzy find used commands" })
			keymap.set("n", "<leader>sw", builtin.grep_string, { desc = "Find string under cursor in cwd" })
		end,
	},
}
