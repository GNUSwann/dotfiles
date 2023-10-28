require("telescope").setup({
   defaults = {
      prompt_prefix = "📡 ",
      selection_caret = " ➥ ",
   },
})
local builtin = require("telescope.builtin")

require("telescope").load_extension("media_files")

vim.keymap.set("n", "<c-p>", builtin.find_files, {})
vim.keymap.set("n", "<Space><Space>", builtin.oldfiles, {})
vim.keymap.set("n", "<Space>fm", builtin.live_grep, {})
vim.keymap.set("n", "<Space>fr", builtin.lsp_references, {})
