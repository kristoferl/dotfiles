return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_installed = { "bash", "lua", "vim", "vimdoc", "javascript", "html", "css", "json", "java", "dockerfile", "html", "xml", "csv" },
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },  
    })
  end
}
