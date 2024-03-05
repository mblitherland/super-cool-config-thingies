-- vim options
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.relativenumber = false
vim.opt.wrap = true
vim.opt.linebreak = true

lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.telescope.pickers.find_files.layout_strategy = "horizontal"
lvim.builtin.telescope.pickers.find_files.layout_config = {
  height = 0.9,
  width = 0.9,
  prompt_position = "top",
  preview_width = 0.55
}
lvim.builtin.telescope.pickers.live_grep.layout_strategy = "horizontal"
lvim.builtin.telescope.pickers.live_grep.layout_config = {
  height = 0.9,
  width = 0.9,
  prompt_position = "top",
  preview_width = 0.55
}
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"

lvim.builtin.treesitter.auto_install = true

-- -- Additional Plugins <https://www.lunarvim.org/docs/plugins#user-plugins>
lvim.plugins = {
  {
    "folke/todo-comments.nvim",
    event = "BufRead",
    config = function()
      require("todo-comments").setup()
    end,
  },
}
