local util = require("formatter.util")

require("formatter").setup({
   logging = false,
   filetype = {
      lua = {
         function()
            return {
               exe = "stylua",
               args = {
                  "--indent-type Spaces",
                  "--indent-width 3",
                  "--search-parent-directories",
                  "--stdin-filepath",
                  util.escape_path(util.get_current_buffer_file_path()),
                  "--",
                  "-",
               },
               stdin = true,
            }
         end,
      },
      nix = {
         require("formatter.filetypes.nix").nixfmt,
      },
      ruby = {
         require("formatter.filetypes.ruby").rubocop,
      },
      html = {
         function()
            return prettier()
         end,
      },
      javascript = {
         function()
            return prettier()
         end,
      },
      typescript = {
         function()
            return prettier()
         end,
      },
      css = {
         function()
            return prettier()
         end,
      },
      json = {
         function()
            return prettier()
         end,
      },
      ["*"] = {
         require("formatter.filetypes.any").remove_trailing_whitespace,
      },
   },
})

function prettier()
   return {
      exe = "prettier",
      args = {
         "--tab-width=3",
         util.escape_path(util.get_current_buffer_file_path()),
      },
      stdin = true,
   }
end

vim.keymap.set("n", "<a-f>f", ":Format<CR>")
vim.keymap.set("n", "<a-f>w", ":FormatWrite<CR>")
