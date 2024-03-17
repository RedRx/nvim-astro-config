vim.g.python3_host_prog = "/opt/homebrew/bin/python3"
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0

-- OPT
vim.opt.iskeyword:append "-" -- Append word when delete or select hello-Hello <- will select all these words
vim.opt.iskeyword:append "_" -- Append word when delete or select hello-Hello <- will select all these words

-- turn off paste mode when leaving insert mode
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = "*",
  command = "set nopaste",
})

-- fix conceallevel for json files
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "json", "jsonc" },
  callback = function()
    vim.wo.spell = false
    vim.wo.conceallevel = 0
  end,
})

return {
  colorscheme = "catppuccin-mocha",
  lsp = {
    formatting = {
      format_on_save = {
        enabled = true,
        -- ignore_filetypes = {
        --   "json",
        --   "yaml",
        --   "yml",
        -- },
      },
    },
    config = {
      clangd = {
        capabilities = { offsetEncoding = "utf-8" },
      },
    },
  },
  options = {
    opt = {
      cmdheight = 1,
      -- mouse = "", -- for disable mouse
      -- showtabline = 0, -- disable tabline
    },
    g = {
      html_indent_autocomplete = 1,
      -- transparent_enabled = true,
      icons_enabled = true,
    },
  },
  highlights = {
    -- NvChad TelescopeTheme
    init = function()
      local get_hlgroup = require("astronvim.utils").get_hlgroup
      local normal = get_hlgroup "Normal"
      local fg, bg = normal.fg, normal.bg
      local bg_alt = get_hlgroup("Visual").bg
      local green = get_hlgroup("String").fg
      local red = get_hlgroup("Error").fg
      return {
        TelescopeBorder = { fg = bg_alt, bg = bg },
        TelescopeNormal = { bg = bg },
        TelescopePreviewBorder = { fg = bg, bg = bg },
        TelescopePreviewNormal = { bg = bg },
        TelescopePreviewTitle = { fg = bg, bg = green },
        TelescopePromptBorder = { fg = bg_alt, bg = bg_alt },
        TelescopePromptNormal = { fg = fg, bg = bg_alt },
        TelescopePromptPrefix = { fg = red, bg = bg_alt },
        TelescopePromptTitle = { fg = bg, bg = red },
        TelescopeResultsBorder = { fg = bg, bg = bg },
        TelescopeResultsNormal = { bg = bg },
        TelescopeResultsTitle = { fg = bg, bg = bg },
      }
    end,
  },
  icons = {
    ActiveLSP = "",
    ActiveTS = " ",
    BufferClose = "",
    DapBreakpoint = "",
    DapBreakpointCondition = "",
    DapBreakpointRejected = "",
    DapLogPoint = "",
    DapStopped = "",
    DefaultFile = "",
    Diagnostic = "",
    DiagnosticError = "",
    DiagnosticHint = "",
    DiagnosticInfo = "",
    DiagnosticWarn = "",
    Ellipsis = "",
    FileModified = "",
    FileReadOnly = "",
    FoldClosed = "",
    FoldOpened = "",
    FolderClosed = "",
    FolderEmpty = "",
    FolderOpen = "",
    Git = "",
    GitConflict = "",
    GitIgnored = "",
    GitRenamed = "",
    GitStaged = "",
    GitUnstaged = "",
    GitUntracked = "",
    LSPLoaded = "",
    LSPLoading1 = "",
    LSPLoading2 = "",
    LSPLoading3 = "",
    MacroRecording = "",
    Paste = "",
    Search = "",
    Selected = "",
    TabClose = "",
    VimIcon = "",
    ScrollText = "",
    GitBranch = "",
    GitAdd = "",
    GitChange = "",
    GitDelete = "",
  },
  heirline = {
    separators = { -- oval
      left = { "", "" },
      right = { "", "" },
      tab = { "", "" },
    },
    -- separators = { -- default
    --   left = { "", " " }, -- separator for the left side of the statusline
    --   right = { " ", "" }, -- separator for the right side of the statusline
    --   tab = { "", "" },
    -- },
    -- add new colors that can be used by heirline
    colors = function(hl)
      local get_hlgroup = require("astronvim.utils").get_hlgroup
      -- use helper function to get highlight group properties
      local comment_fg = get_hlgroup("Comment").fg
      hl.git_branch_fg = comment_fg
      hl.git_added = comment_fg
      hl.git_changed = comment_fg
      hl.git_removed = comment_fg
      hl.blank_bg = get_hlgroup("Folded").fg
      hl.file_info_bg = get_hlgroup("Visual").bg
      hl.nav_icon_bg = get_hlgroup("String").fg
      hl.nav_fg = hl.nav_icon_bg
      hl.folder_icon_bg = get_hlgroup("Error").fg
      return hl
    end,
    attributes = {
      mode = { bold = true },
    },
    icon_highlights = {
      file_icon = {
        statusline = false,
      },
    },
  },
}
