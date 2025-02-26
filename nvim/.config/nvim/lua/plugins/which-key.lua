return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	dependencies = {
		"echasnovski/mini.icons",
	},
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
	end,

	opts = {
		plugins = {
			marks = true, -- shows a list of your marks on ' and `
			registers = true, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
			-- the presets plugin, adds help for a bunch of default keybindings in Neovim
			-- No actual key bindings are created
			spelling = {
				enabled = true, -- enabling this will show WhichKey when pressing z= to select spelling suggestions
				suggestions = 20, -- how many suggestions should be shown in the list?
			},
			presets = {
				operators = true, -- adds help for operators like d, y, ...
				motions = true, -- adds help for motions
				text_objects = true, -- help for text objects triggered after entering an operator
				windows = true, -- default bindings on <c-w>
				nav = true, -- misc bindings to work with windows
				z = true, -- bindings for folds, spelling and others prefixed with z
				g = true, -- bindings for prefixed with g
			},
		},
	},

	config = function()
		local wk = require("which-key")
		wk.add({ "<leader><space>", group = "find files" })

		wk.add({
			{ "<leader>c", group = "code" },
			{ "<leader>ca", group = "code actions (LSP)" },
			{ "<leader>f", group = "find" },
			{ "<leader>ff", group = "find files" },
			{ "<leader>fg", group = "grep files" },
			{ "<leader>gf", group = "format" },
			{ "<leader>l", group = "Lazy" },
			{ "<leader>m", group = "Mason" },
			{ "<leader>o", group = "open" },
			{ "<leader>u", group = "Undotree" },
			{ "<leader>x", group = "Trouble" },
			{ "<leader>z", group = "folds" },
			{ "<leader>h", group = "Harpoon" },
		})

		wk.add({
			{ "K", group = "documentation (LSP)" },
			{ "g", group = "go to" },
			{ "gd", group = "definition (LSP)" },
		})

	end,
}
