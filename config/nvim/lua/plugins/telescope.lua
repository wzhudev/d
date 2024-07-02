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
      vimgrep_arguments = {
        'rg',
        '--color=never',
        '--no-heading',
        '--with-filename',
        '--line-number',
        '--column',
        '--smart-case',
        '-u' -- do not respect .gitignore
      },
    },
  },
  keys = {
    -- Show all files, even those exclude by .gitignore.
    {
      "<leader><space>",
      function()
        require("telescope.builtin").find_files({
          no_ignore = true,
          hidden = true,

        })
      end,
      { slient = true, noremap = true },
      desc = "Find All Files",
    },
    {
      "<leader>fp",
      "<cmd>Telescope commands<cr>",
      { slient = true, noremap = true },
      desc = "Find keymaps",
    },
  }
}
