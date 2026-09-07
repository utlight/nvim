return {
  "nvim-mini/mini.nvim",
  version = "*",
  config = function()
    require("mini.pairs").setup()
    require("mini.surround").setup()
    require("mini.splitjoin").setup({mappings = { toggle = "gs" }})
    require("mini.ai").setup()
    do
      require("mini.jump").setup({ delay = { highlight = 100 } })
      vim.api.nvim_set_hl(0, "MiniJump", { link = "Search" })

      vim.keymap.set({ "n", "x", "o" }, "<Esc>", function()
        vim.api.nvim_command("nohlsearch")
        if not MiniJump.state.jumping then
          return "<Esc>"
        end
        MiniJump.stop_jumping()
      end, { expr = true, desc = "Stop jumping" })
    end
  end,
}
