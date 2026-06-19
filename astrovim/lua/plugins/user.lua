-- LunarVim -> AstroNvim migration

---@type LazySpec
return {

  -- ===== Plugins =====

  -- OneDark colorscheme
  { "navarasu/onedark.nvim" },

  -- Flash: fast cursor jump (replaces hop.nvim)
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    keys = {
      {
        "s",
        function() require("flash").jump() end,
        mode = { "n", "x", "o" },
        desc = "Flash jump",
      },
      {
        "S",
        function() require("flash").treesitter() end,
        mode = { "n", "x", "o" },
        desc = "Flash treesitter",
      },
      -- f/F/t/T: vim-style char jump (press f then target char like fa, fT)
      -- flash.nvim automatically creates these when repeat is enabled
    },
    opts = {
      modes = {
        char = {
          enabled = true,
          jump_labels = true,
        },
      },
    },
  },

  -- Session manager
  {
    "folke/persistence.nvim",
    event = "BufReadPre",
    config = function()
      require("persistence").setup {
        dir = vim.fn.expand(vim.fn.stdpath "config" .. "/session/"),
        options = { "buffers", "curdir", "tabpages", "winsize" },
      }
    end,
  },

  -- Surround
  {
    "kylechui/nvim-surround",
    version = "^3.0.0",
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup {}
    end,
  },

  -- IME switch
  {
    "kevinhwang91/nvim-ibus-sw",
    event = "InsertEnter",
    config = function()
      require("ibus-sw").setup()
    end,
  },

  -- LeetCode (CN)
  {
    "kawre/leetcode.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "nvim-lua/plenary.nvim",
      { "MunifTanjim/nui.nvim", lazy = true },
      "nvim-treesitter/nvim-treesitter",
      "rcarriga/nvim-notify",
    },
    opts = { cn = { enabled = true } },
    config = function()
      require("leetcode").setup {
        arg = "leet",
        lang = "java",
        cn = { enabled = true },
      }
    end,
  },

  -- Better escape
  {
    "max397574/better-escape.nvim",
    config = function()
      require("better_escape").setup {
        timeout = vim.o.timeoutlen,
        default_mappings = true,
        mappings = {
          i = { i = { i = "<Esc>" } },
        },
      }
    end,
  },

  -- ===== Keymaps =====

  -- Save with <C-s> (normal + visual + insert)
  {
    "AstroNvim/astrocore",
    ---@param opts AstroCoreOpts
    opts = function(_, opts)
      local maps = assert(opts.mappings)
      maps.n["<C-s>"] = { "<Cmd>silent! update<CR>", desc = "Save file" }
      maps.x["<C-s>"] = { "<Cmd>silent! update<CR>", desc = "Save file" }
      maps.i["<C-s>"] = { "<Esc><Cmd>silent! update<CR>gi", desc = "Save file" }
    end,
  },

  -- Insert mode hjkl movement
  {
    "AstroNvim/astrocore",
    ---@param opts AstroCoreOpts
    opts = function(_, opts)
      local maps = assert(opts.mappings)
      maps.i["<C-h>"] = { "<Left>", desc = "Move left" }
      maps.i["<C-j>"] = { "<Down>", desc = "Move down" }
      maps.i["<C-k>"] = { "<Up>", desc = "Move up" }
      maps.i["<C-l>"] = { "<Right>", desc = "Move right" }
    end,
  },

  -- Session shortcuts
  {
    "AstroNvim/astrocore",
    ---@param opts AstroCoreOpts
    opts = function(_, opts)
      local maps = assert(opts.mappings)
      maps.n["<Leader>Ss"] = { function() require("persistence").load() end, desc = "Restore session (cwd)" }
      maps.n["<Leader>SS"] = { function() require("persistence").select() end, desc = "Select session" }
      maps.n["<Leader>Sl"] = { function() require("persistence").load { last = true } end, desc = "Restore last session" }
      maps.n["<Leader>Sd"] = { function() require("persistence").stop() end, desc = "Stop session saving" }
    end,
  },
}
