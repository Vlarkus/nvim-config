return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
    config = function()
      -- Mason manages external tools
      require("mason").setup()

      -- Mason-LSP bridge
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",       -- Lua
          "pyright",      -- Python
          "ts_ls",        -- TypeScript / JavaScript
          "bashls",       -- Bash
          "zls",          -- Zsh
          "clangd",       -- C / C++
          "html",         -- HTML
          "cssls",        -- CSS
          "jsonls",       -- JSON
          "yamlls",       -- YAML
          "jdtls",        -- Java
          "typst_lsp",
        },
        automatic_installation = true,
      })

      -- Keymaps for LSP
      local on_attach = function(_, bufnr)
        local map = function(mode, lhs, rhs, desc)
          vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, silent = true, desc = desc })
        end
        map("n", "K", vim.lsp.buf.hover, "Hover docs")
        map("n", "gd", vim.lsp.buf.definition, "Go to definition")
        map("n", "gr", vim.lsp.buf.references, "Go to references")
        map("n", "gi", vim.lsp.buf.implementation, "Go to implementation")
        map("n", "<leader>rn", vim.lsp.buf.rename, "Rename symbol")
        map("n", "<leader>ca", vim.lsp.buf.code_action, "Code action")
        map("n", "[d", vim.diagnostic.goto_prev, "Prev diagnostic")
        map("n", "]d", vim.diagnostic.goto_next, "Next diagnostic")
      end

      -- Capabilities (useful later for completion with nvim-cmp)
      local capabilities = vim.lsp.protocol.make_client_capabilities()

      -- Servers to configure
      local servers = {
        "lua_ls",
        "pyright",
        "ts_ls",
        "bashls",
        "zls",
        "clangd",
        "html",
        "cssls",
        "jsonls",
        "yamlls",
        "jdtls",
      }

      for _, server in ipairs(servers) do
        vim.lsp.config(server, {
          on_attach = on_attach,
          capabilities = capabilities,
        })
        vim.lsp.enable(server)
      end
    end,
  },
}

