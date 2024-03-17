local function organize_imports()
  local params = {
    command = "_typescript.organizeImports",
    arguments = { vim.api.nvim_buf_get_name(0) },
    title = "",
  }
  vim.lsp.buf.execute_command(params)
end

local function show_relative_path()
  local relative_path = vim.fn.expand "%"
  print("Relative Path: " .. relative_path)
end

local function show_project_path()
  local project_path = vim.fn.systemlist("git rev-parse --show-toplevel")[1]
  if vim.v.shell_error ~= 0 then project_path = vim.fn.getcwd() end
  print("Project Path: " .. project_path)
end

return {
  n = {
    --  ╭──────────────────────────────────────────────────────────╮
    --  │ Nvimtree                                                 │
    --  ╰──────────────────────────────────────────────────────────╯
    -- ["<leader>e"] = { "<cmd>NvimTreeToggle<cr>", desc = "Toggle NvimTree" },
    -- ["<leader>o"] = { toggle_nvimtree, desc = "Toggle/Focus NvimTree" },

    ["<leader>Oi"] = { organize_imports, desc = "Organize TypeScript Imports" },
    ["<leader>$"] = { show_relative_path, desc = "Show Relative Path" },
    ["<leader>%"] = { show_project_path, desc = "Show Project Path" },
    ["``"] = { "<cmd>ToggleTerm<cr>", desc = "Toggle terminal" },
    ["Dw"] = { "vb_d", desc = "Delete word backward" },
    ["<C-a>"] = { "gg<S-v>G", desc = "Select all" },
    ["<F7>"] = { "" },
    ["q"] = { "" },
    ["<leader>c"] = { function() require("astronvim.utils.buffer").close() end, desc = "󰅗 Close buffer" },
    -- ["<leader>C"] = {
    --   function() require("astronvim.utils.buffer").close(0, true) end,
    --   desc = "󰱝 Force close buffer",
    -- },
    [";"] = { ":" },
    ["mk"] = { "<cmd>m-2<cr>", desc = "Move Line Up" },
    ["mj"] = { "<cmd>m+1<cr>", desc = "Move Line Down" },
    ["+"] = { "<cmd>vertical resize +1<cr>", desc = "Vertical resize +" },
    ["_"] = { "<cmd>vertical resize -1<cr>", desc = "Vertical rezise -" },
    ["="] = { "<cmd>horizontal resize +1<cr>", desc = "Horizontal resize +" },
    ["-"] = { "<cmd>horizontal resize -1<cr>", desc = "Horizontal rezise -" },
    ["x"] = { '"_x', desc = "Delete one word but not copy" },
    ["c"] = { '"_c', desc = "Delete word but not copy" },
    ["X"] = { '"_X', desc = "Delete one word but not copy" },
    ["C"] = { '"_C', desc = "Delete word but not copy" },
    ["<Tab>"] = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
    },
    ["<S-Tab>"] = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    },
    ["<leader>N"] = {
      "<cmd> set rnu! <CR>",
      desc = " Toggle relative number",
    },

    --  ╭──────────────────────────────────────────────────────────╮
    --  │     Undotree                                             │
    --  ╰──────────────────────────────────────────────────────────╯
    ["<C-u>"] = { "<cmd>UndotreeToggle<cr>", desc = "UndotreeToggle" },

    --  ╭──────────────────────────────────────────────────────────╮
    --  │ Split                                                    │
    --  ╰──────────────────────────────────────────────────────────╯
    ["<leader>s"] = { desc = "Split" },
    ["<leader>sv"] = { "<cmd>:vsplit<cr>", desc = "Vertical split" },
    ["<leader>sh"] = { "<cmd>:split<cr>", desc = "Horizontal split" },

    -- Group Name
    ["<leader>gD"] = {
      desc = "Diffview",
    },
    ["<leader>gDo"] = {
      "<cmd>:DiffviewOpen<CR>",
      desc = "DiffviewOpen",
    },
    ["<leader>gDl"] = {
      "<cmd>:DiffviewLog<CR>",
      desc = "DiffviewLog",
    },
    ["<leader>H"] = {
      desc = "Highlighter",
    },
    ["<leader>O"] = { desc = "Organize Imports,  Octo" },
    ["<leader>fT"] = {
      desc = "Telescope DAP",
    },

    -- ╭─────────────────────────────────────────────────────────╮
    -- │ Rest-Nvim                                               │
    -- ╰─────────────────────────────────────────────────────────╯
    ["<leader>R"] = { desc = "Rest-Nvim" },

    ["<leader>C"] = { desc = "Compiler" },
    ["<leader>Co"] = { "<cmd>CompilerOpen<cr>", desc = "CompilerOpen" },
    ["<leader>Ct"] = { "<cmd>CompilerToggleResults<cr>", desc = "CompilerToggleResults" },
    ["<leader>z"] = { desc = "Color Picker" },
    ["<leader>fd"] = { desc = "DevDocs" },
  },

  i = {
    ["<F7>"] = { "" },
  },

  v = {
    -- ╭─────────────────────────────────────────────────────────╮
    -- │ Comment Box                                             │
    -- ╰─────────────────────────────────────────────────────────╯
    ["<leader>x"] = { desc = "Comment Box" },
  },

  t = {
    ["<esc><esc>"] = {
      "<c-\\><c-n>",
      desc = "Enter Normal Mode",
    },
    ["``"] = { "<cmd>ToggleTerm<cr>", desc = "Toggle terminal" },
    ["<F7>"] = { "" },
  },
}
