return {
    "tpope/vim-fugitive",

    lazy = false,

    config = function()
        vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
        vim.keymap.set("n", "<leader>gP", function()
            vim.cmd.Git({ "pull" })
        end)
        vim.keymap.set("n", "<leader>gp", function()
            vim.cmd.Git({ "push" })
        end)
    end,
}
