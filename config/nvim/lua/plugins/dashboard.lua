local logo = [[
                _                 _              
               | |               | |             
__      __ ____| |__   _   _   __| |  ___ __   __
\ \ /\ / /|_  /| '_ \ | | | | / _` | / _ \\ \ / /
 \ V  V /  / / | | | || |_| || (_| ||  __/ \ V / 
  \_/\_/  /___||_| |_| \__,_| \__,_| \___|  \_/  
]]


logo = string.rep("\n", 6) .. logo .. string.rep("\n", 4)

return {
  {
    "nvimdev/dashboard-nvim",
    opts = {
      config = {
        header = vim.split(logo, "\n"),
      }
    }
  }
}
