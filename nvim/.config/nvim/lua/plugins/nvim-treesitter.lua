return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      -- extend default treesitter ensure_installed
      vim.list_extend(opts.ensure_installed, {
        "astro",
      })
    end,
  },
}
