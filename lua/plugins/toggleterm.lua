return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup({
      direction = "float",
    })

    vim.keymap.set("n", "<leader>t", "<cmd>ToggleTerm<cr>", { desc = "[T]erminal" })
    vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")

    vim.api.nvim_create_autocmd("DirChanged", {
      group = vim.api.nvim_create_augroup("UpdateTerminalDir", { clear = true }),
      callback = function()
        local ok, current_terminal = pcall(function()
          return require("toggleterm.terminal").get(1, true)
        end)

        if ok and current_terminal then
          current_terminal:change_dir(vim.fn.getcwd())
        end
      end,
    })
  end,
}
