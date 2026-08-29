return {
    'stevearc/oil.nvim',
    opts = {
        default_file_explorer = true,
        columns = {
            "icon",
            "mtime",
            "size",
        },
        skip_confirm_for_simple_edits = true,
        watch_for_changes = true,
        use_default_keymaps = false,
        keymaps = {
            ["<CR>"] = "actions.select",
            ["-"] = { "actions.parent", mode = "n" },
            ["_"] = { "actions.open_cwd", mode = "n" },
            ["`"] = { "actions.cd", mode = "n" },
        },
        prompt_save_on_select_new_entry = true,
    },
    dependencies = { { "nvim-mini/mini.icons", opts = {} } },
    lazy = false,
}
