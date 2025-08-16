return {
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = function()
      require("gruvbox").setup({
        terminal_colors = true,
        undercurl = true,
        underline = true,
        bold = true,
        italic = {
          strings = true,
          emphasis = true,
          comments = true,
          operators = false,
          folds = true,
        },
        strikethrough = true,
        invert_selection = false,
        invert_signs = false,
        invert_tabline = false,
        invert_intend_guides = false,
        inverse = true,
        contrast = "",
        palette_overrides = {
          -- Background colors
          dark0_hard = "#2C2A24",
          dark0 = "#2C2A24",
          dark0_soft = "#2C2A24",
          dark1 = "#3A372F",
          dark2 = "#3A372F",

          -- Foreground/text colors
          light0_hard = "#DDD5C4",
          light0 = "#DDD5C4",
          light0_soft = "#DDD5C4",
          light1 = "#DDD5C4",

          -- Border colors
          gray = "#A0907A",

          -- Accent colors
          bright_orange = "#D08B57",
          bright_yellow = "#BFAA80",
          bright_blue = "#7699A3",
          bright_purple = "#8D7AAE",
          bright_green = "#78997A",
          bright_red = "#B05A5A",

          -- Normal versions
          neutral_orange = "#D08B57",
          neutral_yellow = "#BFAA80",
          neutral_blue = "#7699A3",
          neutral_purple = "#8D7AAE",
          neutral_green = "#78997A",
          neutral_red = "#B05A5A",
        },
        overrides = {},
        dim_inactive = false,
        transparent_mode = false,
      })
      vim.cmd.colorscheme("gruvbox")
    end,
  },
}
