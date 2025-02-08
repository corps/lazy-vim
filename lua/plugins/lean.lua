return {
  "Julian/lean.nvim",
  -- "lean.nvim",
  -- name = "lean",
  -- dev = true,
  event = { "BufReadPre *.lean", "BufNewFile *.lean" },

  dependencies = {
    "neovim/nvim-lspconfig",
    "nvim-lua/plenary.nvim",
    "Saghen/blink.cmp",
    -- "hrsh7th/nvim-cmp",
    -- "hrsh7th/cmp-nvim-lsp",
    -- "hrsh7th/cmp-buffer",
    "AndrewRadev/switch.vim",
    "lewis6991/satellite.nvim",
  },

  -- see details below for full configuration options
  opts = {
    lsp = {},
    mappings = true,
    abbreviations = {
      -- Enable expanding of unicode abbreviations?
      enable = true,
      -- additional abbreviations:
      extra = {
        -- Add a \wknight abbreviation to insert ♘
        --
        -- Note that the backslash is implied, and that you of
        -- course may also use a snippet engine directly to do
        -- this if so desired.
        wknight = "♘",
      },
      -- Change if you don't like the backslash
      -- (comma is a popular choice on French keyboards)
      leader = "\\",
    },

    infoview = {
      -- Automatically open an infoview on entering a Lean buffer?
      -- Should be a function that will be called anytime a new Lean file
      -- is opened. Return true to open an infoview, otherwise false.
      -- Setting this to `true` is the same as `function() return true end`,
      -- i.e. autoopen for any Lean file, or setting it to `false` is the
      -- same as `function() return false end`, i.e. never autoopen.
      autoopen = true,

      -- Set infoview windows' starting dimensions.
      -- Windows are opened horizontally or vertically depending on spacing.
      width = 50,
      height = 20,

      -- Put the infoview on the top or bottom when horizontal?
      -- top | bottom
      horizontal_position = "bottom",

      -- Always open the infoview window in a separate tabpage.
      -- Might be useful if you are using a screen reader and don't want too
      -- many dynamic updates in the terminal at the same time.
      -- Note that `height` and `width` will be ignored in this case.
      separate_tab = false,

      -- Show indicators for pin locations when entering an infoview window?
      -- always | never | auto (= only when there are multiple pins)
      indicators = "auto",
    },

    progress_bars = {
      -- Enable the progress bars?
      -- By default, this is `true` if satellite.nvim is not installed, otherwise
      -- it is turned off, as when satellite.nvim is present this information would
      -- be duplicated.
      enable = true, -- see above for default
      -- What character should be used for the bars?
      character = "│",
      -- Use a different priority for the signs
      priority = 10,
    },

    stderr = {
      enable = false,
      -- height of the window
      height = 5,
      -- a callback which will be called with (multi-line) stderr output
      -- e.g., use:
      --   on_lines = function(lines) vim.notify(lines) end
      -- if you want to redirect stderr to `vim.notify`.
      -- The default implementation will redirect to a dedicated stderr
      -- window.
      on_lines = nil,
    },
  },
}
