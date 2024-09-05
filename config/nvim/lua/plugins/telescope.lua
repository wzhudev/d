return {
  "nvim-telescope/telescope.nvim",
  opts = {
    defaults = {
      path_display = { "smart" },
      prompt_prefix = "🐿 ",
      selection_caret = "🐹 ",
      dynamic_preview_title = true, -- always show the title on the preview pane
      -- Since we can search all files by <leader><space>, some patterns need to be ignore manually.
      file_ignore_patterns = { "node_modules", ".git" },
    },
  },
  keys = {
    -- Show all files, even those exclude by .gitignore.
    {
      "<leader>fp",
      "<cmd>Telescope commands<cr>",
      { slient = true, noremap = true },
      desc = "Find keymaps",
    },
  }
}
