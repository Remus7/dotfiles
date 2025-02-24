return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
			vim.keymap.set("n", "<leader>m", ":Mason<cr>", {})
		end,
	},

	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "tsserver" },
			})
		end,
	},

	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")

			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.tsserver.setup({
				capabilities = capabilities,
			})

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})

			vim.keymap.set("n", "[e", vim.diagnostic.goto_prev, { desc = "Previous Diagnostic" })
			vim.keymap.set("n", "]e", vim.diagnostic.goto_next, { desc = "Next Diagnostic" })

			vim.api.nvim_set_keymap(
				"n",
				"<space>e",
				"<cmd>lua vim.diagnostic.open_float()<CR>",
				{ desc = "Enable Diagnostic Popup" }
			)
		end,
	},
	{
		"https://gitlab.com/schrieveslaach/sonarlint.nvim",

		ft = { "python", "typescript", "typescriptreact", "typescript.tsx" },
		dependencies = {
			"mfussenegger/nvim-jdtls",
		},
		config = function()
			require("sonarlint").setup({
				server = {
					cmd = {
						"java",
						"-cp",
						".:/home/carei/.config/nvim/sonarlint/*",
						"-jar",
						"/home/carei/.config/nvim/sonarlint/sonarlint-server.jar",
						-- Ensure that sonarlint-language-server uses stdio channel
						"-stdio",
						"-analyzers",
						-- paths to the analyzers you need, using those for python and java in this example
						"/home/carei/.config/nvim/sonarlint/sonarpython.jar",
						"/home/carei/.config/nvim/sonarlint/sonarjs.jar",
						"/home/carei/.config/nvim/sonarlint/sonartext.jar",
						"/home/carei/.config/nvim/sonarlint/sonarlint/sonarhtml.jar",
					},
				},
				filetypes = {
					"python",
					"typescript",
					"typescriptreact",
					"typescript.tsx",
				},
			})
		end,
	},
}
