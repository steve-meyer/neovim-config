return {
  {
    'nvim-telescope/telescope.nvim', version = '*',
    dependencies = {
      'nvim-lua/plenary.nvim',
      -- optional but recommended
      { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
    config = function()
      local builtin = require("telescope.builtin")
      vim.keymap.set("n", "<leader>ff", builtin.git_files,  { desc = "Telescope find git files" })
      vim.keymap.set("n", "<leader>fa", builtin.find_files, { desc = "Telescope find all files" })
      vim.keymap.set("n", "<leader>fb", builtin.buffers,    { desc = "Telescope find buffers" })
      vim.keymap.set("n", "<leader>fh", builtin.help_tags,  { desc = "Telescope help tags" })
    end
  }
}
