-- ~/.config/nvim/lua/plugins/which-key.lua
return {
  'folke/which-key.nvim',
  event = "VeryLazy",
  config = function()
    local wk = require("which-key")
    wk.setup {
      plugins = {
        marks = true,
        registers = true,
        spelling = {
          enabled = true,
          suggestions = 20,
        },
        presets = {
          operators = true,
          motions = true,
          text_objects = true,
          windows = true,
          nav = true,
          z = true,
          g = true,
        },
      },
      key_labels = {
        ["<leader>"] = "SPC",
        ["<cr>"] = "RET",
        ["<tab>"] = "TAB"
      },
      icons = {
        breadcrumb = "»",
        separator = "➜",
        group = "+",
      },
      window = {
        border = "rounded",
        position = "bottom",
        margin = { 1, 0, 1, 0 },
        padding = { 1, 2, 1, 2 },
        winblend = 0
      },
      layout = {
        height = { min = 4, max = 25 },
        width = { min = 20, max = 50 },
        spacing = 3,
        align = "left",
      },
      ignore_missing = true,
    }

    -- Przykładowe grupowanie skrótów
    wk.register({
      ["<leader>"] = {
        e = { name = "Eksplorator", },
        f = { name = "Fokus", },
        r = { name = "Odśwież", },
        s = { name = "Treesitter: Select", },
      }
    })
  end,
}
