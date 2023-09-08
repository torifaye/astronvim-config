return {
    n = {
        ["<Tab>"] = {
            function()
                require("astronvim.utils.buffer").nav(vim.v.count > 0 and
                                                          vim.v.count or 1)
            end,
            desc = "Next buffer"
        },
        ["<S-Tab>"] = {
            function()
                require("astronvim.utils.buffer").nav(
                    -(vim.v.count > 0 and vim.v.count or 1))
            end,
            desc = "Previous buffer"
        },
        ["<leader>e"] = {
            "<cmd>Neotree toggle position=right<cr>",
            desc = "Toggle Explorer"
        },
        ["<leader>n"] = {
            "<cmd>lua require('notify').dismiss()<cr>",
            desc = "Clear notifications"
        },
        ["<leader>gg"] = {"<cmd>Neogit kind=vsplit<cr>", desc = "Open Neogit"}
    }

}
