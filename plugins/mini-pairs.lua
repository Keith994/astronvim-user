return {

  {
    "windwp/nvim-autopairs",
    enabled = false,
  },
  -- auto pairs
  {
    "echasnovski/mini.pairs",
    event = "VeryLazy",
    config = function(_, opts) require("mini.pairs").setup(opts) end,
  },
}
