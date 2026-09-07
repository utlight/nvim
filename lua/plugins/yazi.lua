return {
  "mikavilpas/yazi.nvim",
  event = "VeryLazy",
  dependencies = { { "nvim-lua/plenary.nvim", lazy = true } },
  opts = {
    open_for_directories = true,
    change_neovim_cwd_on_close = true,
  },
  keys = {
    { "<leader>y", "<cmd>Yazi cwd<cr>", desc = "[Y]azi" },
  },
  init = function()
    vim.g.loaded_netrwPlugin = 1
  end
}
