return {
  "saghen/blink.cmp",
  build = function()
    require("blink.cmp").build():pwait()
  end,
  dependencies = {
    "saghen/blink.lib",
    "rafamadriz/friendly-snippets",
    "xzbdmw/colorful-menu.nvim",
  },
  opts = {
    completion = {
      menu = {
        draw = {
          columns = { { "kind_icon" }, { "label", gap = 1 } },
          components = {
            label = {
              text = function(ctx)
                return require("colorful-menu").blink_components_text(ctx)
              end,
              highlight = function(ctx)
                return require("colorful-menu").blink_components_highlight(ctx)
              end,
            },
          },
        },
      },
    },
  },
}
