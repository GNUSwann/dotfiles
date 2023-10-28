require("mason").setup({
   ui = {
      icons = {
         package_installed = "✓",
         package_pending = "➜",
         package_uninstalled = "✗",
      },
   },
})
require("mason-lspconfig").setup({
   -- idk why, but i have to install luau_lsp ( a modifed version of lua for the robox game ) insted of lua_ls ( the default lua LSP ).
   -- but for some reason i still have to call "require("lspconfig").lua_ls.setup" insted of "require("lspconfig").luau_lsp.setup" to setup it...
   -- and the wierdest thing is that ":LspInfo" tells me that luau_lsp in not installed and the current client is lua_ls. But ":Mason" say exactly the opposite...
   ensure_installed = { "luau_lsp", "rust_analyzer", "eslint", "html", "solargraph" },
})

local on_attach = function(_, _)
   vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
   vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})

   vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
   vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})
   vim.keymap.set("n", "gr", require("telescope.builtin").lsp_references, {})
   vim.keymap.set("n", "K", vim.lsp.buf.hover, {})

   vim.keymap.set("n", "<space>f", function()
      vim.lsp.buf.format({ async = true })
   end, opts)
end

local capabilities = require("cmp_nvim_lsp").default_capabilities()

require("lspconfig").lua_ls.setup({
   on_attach = on_attach,
   capabilites = capabilities,
})
require("lspconfig").rust_analyzer.setup({
   on_attach = on_attach,
   capabilites = capabilities,
})
require("lspconfig").solargraph.setup({
   root_dir = require("lspconfig").util.root_pattern("Gemfile", ".git", "."),
   on_attach = on_attach,
   capabilites = capabilities,
})
require("lspconfig").eslint.setup({
   on_attach = on_attach,
   capabilites = capabilities,
})
