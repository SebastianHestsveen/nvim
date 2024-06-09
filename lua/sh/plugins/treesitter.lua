return {
  "nvim-treesitter/nvim-treesitter",

  event = {
    "BufReadPre",
    "BufNewFile",
  },

  version = "*",

  build = ":TSUpdate",

  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "c",
        "lua",
        "vim",
        "vimdoc",
        "javascript",
        "typescript",
        "bash",
        "go",
        "gomod",
        "gowork",
        "gosum",
        "python",
        "toml",
        "sql",
        "yaml",
        "json",
        "terraform",
        "dockerfile",
        "gitignore",
        "git_config",
        "gitcommit",
        "hcl",
        "html",
        "latex",
        "markdown",
        "markdown_inline",
        "regex",
        "requirements",
        "sql",
        "toml",
        "xml",
        "vue",
        "csv",
        "java",
        "diff",
      },
      sync_install = false,
      auto_install = true,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
    })
  end,
}
