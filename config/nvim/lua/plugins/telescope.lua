return {
  "nvim-telescope/telescope.nvim",
  opts = {
    defaults = {
      path_display = { "smart " },
      prompt_prefix = "🐿 ",
      selection_caret = "🐹 ",
      dynamic_preview_title = true, -- always show the title on the preview pane
      layout_strategy = "vertical",
      -- TODO: change cutoff for small screen
      layout_config = { prompt_position = "bottom", preview_height = 0.6 },
    }
  }
}
