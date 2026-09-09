return {
  "folke/persistence.nvim",
  enabled = false,
  config = function()
    require("persistence").setup()

    vim.keymap.set("n", "<leader>r", function()
      require("persistence").load()
    end, { desc = "[R]estore Session" })

    vim.api.nvim_create_autocmd("User", {
      pattern = "PersistenceSavePre",
      callback = function()
        vim.cmd("Neotree close")
      end,
    })

    vim.api.nvim_create_autocmd("User", {
      pattern = "PersistenceLoadPost",
      callback = function()
        require("neo-tree.command").execute({
          action = "show",
          dir = vim.fn.getcwd(),
          reveal = true,
        })
      end,
    })
  end,
}
