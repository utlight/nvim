return {
  "saghen/blink.cmp",
  build = function() require('blink.cmp').build():pwait() end,
  dependencies = {
    "saghen/blink.lib",
    "rafamadriz/friendly-snippets",
  },
  opts = {},
}
