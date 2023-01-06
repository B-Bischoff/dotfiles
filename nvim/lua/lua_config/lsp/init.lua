local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "lua_config.lsp.handlers"
require "lua_config.lsp.null-ls"
