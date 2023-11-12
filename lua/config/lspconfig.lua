local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

local servers = {
  "lua_ls",
  "pyright",
  "tsserver",
  "tailwindcss",
}

for _, server in ipairs(servers) do
  lspconfig[server].setup({ capabilities = capabilities })
end
