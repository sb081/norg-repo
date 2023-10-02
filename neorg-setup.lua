   -- lazy.nvim spec
local M = {
     "nvim-neorg/neorg",
     ft = "norg",
     dependencies = {
       "nvim-treesitter/nvim-treesitter",
       "nvim-treesitter/nvim-treesitter-textobjects",
       "nvim-cmp",
       "nvim-lua/plenary.nvim",
     },
     build = ":Neorg sync-parsers",
     cmd = "Neorg",
    config = function()
      require("neorg").setup {
     load = {
       ["core.defaults"] = {},
       ["core.completion"] = { config = { engine = "nvim-cmp", name = "[Norg]" } },
       ["core.integrations.nvim-cmp"] = {},
       ["core.concealer"] = { config = { icon_preset = "diamond" } },
       ["core.export"] = {},
       ["core.dirman"] = {
            config = {
              workspaces = {
                life = "~/Desktop/ORG/life/",
                courses = "~/Desktop/ORG/life/courses"
              },
            },
        },
        -- Keybinds
       ["core.keybinds"] = {
         -- https://github.com/nvim-neorg/neorg/blob/main/lua/neorg/modules/core/keybinds/keybinds.lua
         config = {
           default_keybinds = true,
           neorg_leader = "<Leader><Leader>",
         },
       },
     }
    }
    end,
   }