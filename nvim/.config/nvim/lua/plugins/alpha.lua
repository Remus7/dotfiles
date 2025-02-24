return {
	"goolord/alpha-nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
		"nvim-lua/plenary.nvim",
		-- "ozthemagician/alpha-cowsays-nvim", -- only works with startify theme
	},

	config = function()
		local alpha = require("alpha")
		local theta = require("alpha.themes.theta") -- unable to set header on theta theme
		local dashboard = require("alpha.themes.dashboard")

		theta.header.val = {
			[[                               __                ]],
			[[  ___     ___    ___   __  __ /\_\    ___ ___    ]],
			[[ / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  ]],
			[[/\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ]],
			[[\ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
			[[ \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],
		}
		theta.buttons.val = {
			dashboard.button("e", "  New file", "<cmd>ene<CR>"),
			dashboard.button("SPC f f", "󰈞  Find file"),
			dashboard.button("SPC f g", "󰊄  Live grep"),
			dashboard.button("c", "  Configuration", "<cmd>cd ~/.config/nvim<CR>"),
			dashboard.button("U", "  Update plugins", "<cmd>Lazy sync<CR>"),
			dashboard.button("q", "󰅚  Quit", "<cmd>qa<CR>"),
		}

		alpha.setup(theta.config)
    vim.keymap.set("n", "<leader>a", ":Alpha<cr>", {desc = "Alpha"})
	end,
}

