return {
  {
    "lukas-reineke/virt-column.nvim",
    opts = {},
    lazy = false,
    config = function()
      require("virt-column").setup({
        char = "│",
        virtcolumn = "+1,120,+1,80",
      })
    end,
  },
}
