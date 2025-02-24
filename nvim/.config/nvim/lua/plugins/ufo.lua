return {
	"kevinhwang91/nvim-ufo",
	dependencies = { "kevinhwang91/promise-async" },

	config = function()
		vim.o.foldcolumn = "0" -- '0' is not bad
		vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
		vim.o.foldlevelstart = 99
		vim.o.foldenable = true

		local ufo = require("ufo")
		vim.keymap.set("n", "zR", ufo.openAllFolds, { desc = "Reveal all Folds" })
		vim.keymap.set("n", "zM", ufo.closeAllFolds, { desc = "Minimise all folds" })
		vim.keymap.set("n", "zK", ufo.peekFoldedLinesUnderCursor, { desc = "Peek in fold" })

		vim.keymap.set("n", "<leader>zs", ":mkview<cr>", { desc = "Save Folds" })
		vim.keymap.set("n", "<leader>zl", ":loadview<cr>", { desc = "Load Folds" })

		ufo.setup({
      provider_selector = function(bufnr, filetype, buftype)
        return { 'lsp', 'indent' }
      end
    })
	end,
}
