-- WIP

return {
	{
		"hrsh7th/cmp-nvim-lsp",
	},
	{
		"L3MON4D3/LuaSnip",
		dependencies = {
			"saadparwaiz1/cmp_luasnip",
			"rafamadriz/friendly-snippets",
		},
	},
	{
		"hrsh7th/nvim-cmp",
		config = function()
			local cmp = require("cmp")

			local t = function(str)
				return vim.api.nvim_replace_termcodes(str, true, true, true)
			end

			require("luasnip.loaders.from_vscode").lazy_load()

			cmp.setup({
				snippet = {
					expand = function(args)
						require("luasnip").lsp_expand(args.body) -- For `luasnip` users.
					end,
				},
				window = {
					completion = cmp.config.window.bordered(),
					documentation = cmp.config.window.bordered(),
				},
				mapping = {
					["<C-p>"] = cmp.mapping.select_prev_item(),
					["<C-n>"] = cmp.mapping.select_next_item(),
					["<S-Tab>"] = cmp.mapping(function(fallback)
						if vim.fn["UltiSnips#CanJumpBackwards"]() == 1 then
							vim.fn.feedkeys(t("<C-R>=UltiSnips#JumpBackwards()<CR>"))
						elseif vim.fn.pumvisible() == 1 then
							vim.fn.feedkeys(t("<C-p>"), "n")
						elseif check_back_space() then
							vim.fn.feedkeys(t("<S-tab>"), "n")
						else
							vim.fn.feedkeys(t("<S-tab>"), "n")
						end
					end, { "i", "s" }),
					["<Tab>"] = cmp.mapping(function(fallback)
						if vim.fn["UltiSnips#CanJumpForwards"]() == 1 then
							vim.fn.feedkeys(t("<esc>:call UltiSnips#JumpForwards()<CR>"))
						elseif vim.fn.pumvisible() == 1 then
							vim.fn.feedkeys(t("<C-n>"), "n")
						else
							vim.fn.feedkeys(t("<tab>"), "n")
						end
					end, { "i", "s" }),
					["<C-d>"] = cmp.mapping.scroll_docs(-4),
					["<C-f>"] = cmp.mapping.scroll_docs(4),
					["<C-e>"] = cmp.mapping.close(),
					["<CR>"] = cmp.mapping.confirm({ -- remapped at bottom by autopairs
						behavior = cmp.ConfirmBehavior.Replace,
						select = false,
					}),
					["<C-Space>"] = cmp.mapping(function(fallback)
						if vim.fn.pumvisible() == 1 then
							if vim.fn.complete_info()["selected"] ~= -1 then
								if vim.fn["UltiSnips#CanExpandSnippet"]() == 1 then
									return vim.fn.feedkeys(t("<C-R>=UltiSnips#ExpandSnippet()<CR>"))
								else
									vim.fn.feedkeys(t("<cr>"), "n")
								end
							else
								vim.fn.feedkeys(t("<C-e>"), "n")
							end
						else
							fallback()
						end
					end, { "i", "s" }),
				},
				sources = cmp.config.sources({
					{ name = "nvim_lsp" },
					{ name = "luasnip" },
				}, {
					{ name = "buffer" },
				}),
			})
		end,
	},
}
