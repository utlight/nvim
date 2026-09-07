return {
  "stevearc/conform.nvim",
  config = function()
    require("conform").setup({
      formatters_by_ft = {
        lua = { "stylua" },
        rust = { "rust-fmt" },
      },
    })

    vim.keymap.set({ "n", "v" }, "<leader>uf", function()
      require("conform").format()
    end, { desc = "[F]ormat buffer" })
  end,
}
