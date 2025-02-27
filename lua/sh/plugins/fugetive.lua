return {
    "tpope/vim-fugitive",

    lazy = false,

    config = function()
        vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
        vim.keymap.set("n", "<leader>gA", function()
            vim.cmd.Git({ "add *" })
        end)
        vim.keymap.set("n", "<leader>gP", function()
            vim.cmd.Git({ "pull" })
        end)
        vim.keymap.set("n", "<leader>gp", function()
            vim.cmd.Git({ "push" })
        end)
        vim.keymap.set("n", "<leader>gc", function()
            local commit_msg = vim.fn.input("Commit message: ")
            if commit_msg ~= "" then
                vim.cmd.Git({ "commit", "-m", commit_msg })
            else
                print("Aborted: No commit message provided.")
            end
        end)
    end,
}
