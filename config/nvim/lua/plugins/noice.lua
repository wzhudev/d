return {
  {
    "folke/noice.nvim",
    opts = {
      routes = {
        {
          filter = {
            event = "msg_show",
            any = {
              { find = "eslint" }, -- We filter eslint error out. They are useless to me.
            },
          },
          view = "mini",
        },
      },
    },
  }
}
