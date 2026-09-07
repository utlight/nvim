return {
  "nvim-neo-tree/neo-tree.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  lazy = false,
  config = function()
    require("neo-tree").setup({
      close_if_last_window = true,
      sources = { "filesystem", "git_status" },
      filesystem = {
        bind_to_cwd = true,
        follow_current_file = { enabled = true, leave_dirs_open = true },
        use_libuv_file_watcher = true,
        filtered_items = { visible = true },
      },
    })

    vim.keymap.set("n", "<leader>n", function()
      require("neo-tree.command").execute({
        action = "focus",
        source = "filesystem",
        toggle = true,
        reveal = true,
        dir = vim.fn.getcwd(),
      })
    end, { desc = "[N]eoTree" })
  end,
}
