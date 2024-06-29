return {
  "nvim-telescope/telescope.nvim",
  opts = {
    defaults = {
      path_display = { "smart" },
      prompt_prefix = "🐿 ",
      selection_caret = "🐹 ",
      dynamic_preview_title = true, -- always show the title on the preview pane
    }
  },
  keys = {
    {
      "<leader>fp",
      "<cmd>Telescope commands<cr>",
      { slient = true, noremap = true },
      desc = "Find keymaps",
    },
  }
}
