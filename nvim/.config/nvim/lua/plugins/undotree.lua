return {
  "mbbill/undotree",

  config = function()
    vim.keymap.set("n", "<leader>ut", ":UndotreeToggle<cr>", {desc = "toggle"})
    vim.keymap.set("n", "<leader>uf", ":undotreeFocus<cr>", {desc = "focus"})
  end
}
