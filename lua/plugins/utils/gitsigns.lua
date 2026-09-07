return {
  "lewis6991/gitsigns.nvim",
  config = function()
    require("gitsigns").setup()

    local git = require("gitsigns.actions")
    vim.keymap.set("n", "<leader>gp", git.preview_hunk, { desc = "[P]review Hunk" })
    vim.keymap.set("n", "<leader>gs", git.stage_hunk, { desc = "[S]tage Hunk" })
    vim.keymap.set("n", "<leader>gS", git.stage_buffer, { desc = "[S]tage Buffer" })
    vim.keymap.set("n", "<leader>gr", git.reset_hunk, { desc = "[R]eset Hunk" })
    vim.keymap.set("n", "<leader>gb", git.blame_line, { desc = "[B]lame Line" })
    vim.keymap.set("n", "<leader>gn", function ()
      git.nav_hunk("next")
    end, { desc = "[N]ext Hunk" })
    vim.keymap.set("n", "<leader>gN", function ()
      git.nav_hunk("prev")
    end, { desc = "[P]revious Hunk" })
  end,
}
