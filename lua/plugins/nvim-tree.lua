-- ~/.config/nvim/lua/plugins/nvim-tree.lua
return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  dependencies = {
    'nvim-tree/nvim-web-devicons', -- ikony plików
  },
  config = function()
    require("nvim-tree").setup {
      sort_by = "case_sensitive",
      view = {
        width = 30,
        side = "left",
      },
      renderer = {
        group_empty = true,
      },
      filters = {
        dotfiles = false,
      },
    }

    -- Mappings z leaderem
    local map = vim.keymap.set
    map('n', '<leader>ee', '<cmd>NvimTreeToggle<CR>', { desc = 'Przełącz eksplorator plików (nvim-tree)' })
    map('n', '<leader>ef', '<cmd>NvimTreeFocus<CR>', { desc = 'Skup widok nvim-tree' })
    map('n', '<leader>er', '<cmd>NvimTreeRefresh<CR>', { desc = 'Odśwież nvim-tree' })
  end,
}
