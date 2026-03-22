return {
  {
    "kevinhwang91/nvim-ibus-sw",
    event = "InsertEnter",
    config = function()
      require('ibus-sw').setup()
    end,
  },
}