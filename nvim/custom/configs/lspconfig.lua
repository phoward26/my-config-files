local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
-- local servers = { "html", "cssls", "clangd", "cmake" }
local cmp_nvim_lsp = require "cmp_nvim_lsp"

lspconfig.clangd.setup {
  on_attach = on_attach,
  capabilities = cmp_nvim_lsp.default_capabilities(),
  cmd = { "clangd", "--offset-encoding=utf-16", "--all-scopes-completion", "--suggest-missing-includes", "--enable-config" },
}
lspconfig.cmake.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
-- This for loop will automatically set everything up for me, but I need to manually control the command for clang
-- for _, lsp in ipairs(servers) do
--   lspconfig[lsp].setup {
--     on_attach = on_attach,
--     capabilities = capabilities,
--   }
-- end
