return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    keys = {
      { "<leader>no", "<cmd>Neotree focus<CR>", desc = "Focus Neotree" },
    },
    opts = {
      -- Change neotree icons to make it more beautiful
      default_component_configs = {
        modified = {
          symbol = "",
          highlight = "NeoTreeModified",
        },
        git_status = {
          symbols = {
            added = "",
            modified = "",
            deleted = "x",
            renamed = "󰁕",
            untracked = "?",
            ignored = "",
            unstaged = "󰄱",
            staged = "",
            conflict = "",
          },
        },
      },
      -- Change visible items
      filesystem = {
        filtered_items = {
          visible = true,
          hide_dotfiles = false,
          hide_gitignored = false,
          hide_hidden = false,
          hide_by_name = {
            --"node_modules"
          },
          hide_by_pattern = {
            --"*.meta",
            --"*/src/*/tsconfig.json",
          },
          always_show = {
            --".gitignored",
          },
          always_show_by_pattern = {
            --".env*",
          },
          never_show = {
            ".DS_Store",
            "thumbs.db",
          },
          never_show_by_pattern = {
            --".null-ls_*",
          },
        },
      },
    },
  },
}
