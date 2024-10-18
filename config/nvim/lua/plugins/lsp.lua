-- We use antfu/eslint-config in lots of projects, so we need to customize
-- eslint-lsp. Refer to https://github.com/antfu/eslint-config.
local customizations = {
  { rule = 'style/*',   severity = 'off', fixable = true },
  { rule = 'format/*',  severity = 'off', fixable = true },
  { rule = '*-indent',  severity = 'off', fixable = true },
  { rule = '*-spacing', severity = 'off', fixable = true },
  { rule = '*-spaces',  severity = 'off', fixable = true },
  { rule = '*-order',   severity = 'off', fixable = true },
  { rule = '*-dangle',  severity = 'off', fixable = true },
  { rule = '*-newline', severity = 'off', fixable = true },
  { rule = '*quotes',   severity = 'off', fixable = true },
  { rule = '*semi',     severity = 'off', fixable = true },
}

local lspconfig = require('lspconfig')

-- Enable eslint for all supported languages
lspconfig.eslint.setup(
  {
    filetypes = {
      "javascript",
      "javascriptreact",
      "javascript.jsx",
      "typescript",
      "typescriptreact",
      "typescript.tsx",
      "vue",
      "html",
      "markdown",
      "json",
      "jsonc",
      "yaml",
      "toml",
      "xml",
      "gql",
      "graphql",
      "astro",
      "svelte",
      "css",
      "less",
      "scss",
      "pcss",
      "postcss"
    },
    settings = {
      -- Silent the stylistic rules in you IDE, but still auto fix them
      rulesCustomizations = customizations,
    },
  }
)

lspconfig.eslint.setup({
  --- ...
  on_attach = function(client, bufnr)
    vim.api.nvim_create_autocmd("BufWritePre", {
      buffer = bufnr,
      command = "EslintFixAll",
    })
  end,
})

return {
  {
    "nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false }, -- make code hard to read
      -- also diable auto format by setting vim.g.autoformat = false
      autoformat = false,                -- disable auto format and leave that to LSP plugins such as ESLint
    },
  },
  {
    "hrsh7th/nvim-cmp",
    dependencies = { "onsails/lspkind.nvim" },
    opts = {
      -- change auto complete style
      window = {
        completion = {
          winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,CursorLine:PmenuSel,Search:None",
          col_offset = 0,
          side_padding = 0,
        },
        documentation = {
          winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,Search:None",
          col_offset = 0,
          side_padding = 0,
        },
      },
      -- format auto complete
      formatting = {
        fields = { "kind", "abbr", "menu" },
        format = function(entry, vim_item)
          local kind = require("lspkind").cmp_format({ mode = "symbol_text", maxwidth = 50 })(entry, vim_item)
          local strings = vim.split(kind.kind, "%s", { trimempty = true })
          kind.kind = " " .. (strings[1] or "") .. " "
          kind.menu = "    (" .. (strings[2] or "") .. ")"

          return kind
        end,
      },
    },
  },
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      table.insert(opts.routes, {
        filter = {
          event = "notify",
          find = "No information available",
        },
        opts = { skip = true },
      })
    end,
  },
}
