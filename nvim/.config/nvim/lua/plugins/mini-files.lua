return {
  'echasnovski/mini.files', 
  version = false,

  config = function()
    -- Mini-files for navigating filesystems
    require('mini.files').setup()
    vim.keymap.set('n', '<leader>o', MiniFiles.open, {})

    vim.keymap.set('n', '<leader>cd', ":cd %:p:h<cr>", {desc="change directory"})

    vim.keymap.set('n', '[b', ":bprevious<cr>", {desc="previous buffer"})
    vim.keymap.set('n', ']b', ":bnext<cr>", {desc="next buffer"})
  end
}
