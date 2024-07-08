return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("harpoon"):setup()
  end,
  keys = {
    { "<leader>aa", function() require("harpoon"):list():append() end, desc = "Append XS harpoon file", },
    { "<leader>ah", function() local harpoon = require("harpoon") harpoon.ui:toggle_quick_menu(harpoon:list()) end, desc = "harpoon quick menu", },
    { "<leader>ap", function() require("harpoon"):list():prev() end, desc = "harpoon prev file", },
    { "<leader>an", function() require("harpoon"):list():next() end, desc = "harpoon next file", },
  },
}
