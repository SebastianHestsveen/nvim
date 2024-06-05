return {
    'VonHeikemen/lsp-zero.nvim', 
    branch = 'v3.x',

    dependencies = {
      { "neovim/nvim-lspconfig" }, -- Required
      { "williamboman/mason.nvim" },
      { "williamboman/mason-lspconfig.nvim" }, -- Optional
      { "WhoIsSethDaniel/mason-tool-installer.nvim" },
      -- autocompletion
      {'hrsh7th/cmp-nvim-lsp'}, --required
      {'hrsh7th/nvim-cmp'}, --required
      {'L3MON4D3/LuaSnip'}, --required
    },

     config = function()
        local lsp = require("lsp-zero")
        local mason_tool_installer = require("mason-tool-installer")
        local mason_lspconfig = require("mason-lspconfig")

        require("mason").setup({})
        lsp.preset("recommended")

        lsp.omnifunc.setup({
            tabcomplete = true,
            use_fallback = true,
            update_on_delete = true,
        })
        
        mason_lspconfig.setup({
            ensure_installed = {
                "pyright",
                "bashls",
                "yamlls",
                "terraformls",
                "gopls",
                "lua_ls",
            },
        })

        mason_tool_installer.setup({
            ensure_installed = {
                "prettier",
                "yamllint",
                "mypy",
                "markdownlint",
            },
        })
        
        require("lspconfig").lua_ls.setup(lsp.nvim_lua_ls())
        require("lspconfig").bashls.setup({})
        require("lspconfig").gopls.setup({})
        require("terraformls").terraformls.setup({})

        require("lspconfig").pyright.setup({
            filetypes = { "python" },
        })

        require("lspconfig").yamlls.setup({
            settings = {
                yaml = {
                    format = {
                        enable = false,
                    },
                    validate = true,
                    completion = true,
                    hover = true,
                },
            },
        })


    end,
}
