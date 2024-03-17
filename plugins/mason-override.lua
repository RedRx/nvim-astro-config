return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      -- lua stuff
      "lua-language-server",
      "stylua",

      -- web dev stuff
      "css-lsp",
      "html-lsp",
      "htmlbeautifier",
      "typescript-language-server",
      "prettier",
      "ts-standard",
      "cssmodules-language-server",
      "sonarlint-language-server",
      "emmet-language-server",
      "emmet-ls",
      "tailwindcss-language-server",
      "json-lsp",
      "jsonlint",
      "eslint-lsp",
      "js-debug-adapter",
      "node-debug2-adapter",
      "graphql-language-service-cli",
      "spectral-language-server",
      "chrome-debug-adapter",
      "vtsls",
      "rustywind",

      -- json
      "cfn-lint",
      "fixjson",
      "json-lsp",

      -- c/cpp stuff
      "clangd",
      "clang-format",

      -- Docker
      "dockerfile-language-server",
      "docker-compose-language-service",
      "hadolint",

      -- Yaml
      "yaml-language-server",
      "yamlfmt",
      "yamllint",

      -- Others
      "nginx-language-server",
      "beautysh",
      "vim-language-server",

      -- SQL
      "prisma-language-server",
      "sql-formatter",
      "sqlfluff",
      "sqlls",
    },
    ui = {
      icons = {
        package_installed = "",
        package_pending = "",
        package_uninstalled = "",
      },
    },
  },
}
