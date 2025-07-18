return {
  'echasnovski/mini.files', 
  version = false,

  config = function()
    -- Mini-files for navigating filesystems
    require('mini.files').setup()
    vim.keymap.set('n', '<leader>o', function() 
      local buf_name = vim.api.nvim_buf_get_name(0)
      local path = vim.fn.filereadable(buf_name) == 1 and buf_name or vim.fn.getcwd()
      MiniFiles.open(path)
      MiniFiles.reveal_cwd() 
    end, {})

    vim.keymap.set('n', '<leader>cd', ":cd %:p:h<cr>", {desc="change directory"})

    vim.keymap.set('n', '[b', ":bprevious<cr>", {desc="previous buffer"})
    vim.keymap.set('n', ']b', ":bnext<cr>", {desc="next buffer"})
  end
}
