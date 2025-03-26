return {
	"nvimtools/none-ls.nvim",
	dependencies = {
		"nvimtools/none-ls-extras.nvim",
	},

	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				-- lua
				null_ls.builtins.formatting.stylua,

				-- javascript
				null_ls.builtins.formatting.prettier.with({
					extra_args = {
						"--print-width=120",
					},
				}),

				require("none-ls.diagnostics.eslint_d"),
				-- null_ls.builtins.diagnostics.eslint_d,
			},
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format)
	end,
}
