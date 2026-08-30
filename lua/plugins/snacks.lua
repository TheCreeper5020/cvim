return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
        bigfile = {
            notify = true,
            size = 2 * 1024 * 1024 -- 2 MiB
        },
        dashboard = {
            preset = {
                keys = {
                    { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
                    { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
                    { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
                    { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
                    { icon = " ", key = "s", desc = "Restore Session", section = "session" },
                    { icon = " ", key = "o", desc = "File Explorer", action = ":Oil" },
                    { icon = " ", key = "q", desc = "Quit", action = ":qa" },
                }
            },
            sections = {
                { section = "header" },
                { icon = " ", title = "Keymaps", section = "keys", indent = 4, padding = 1 },
                { icon = " ", title = "Recent Files", section = "recent_files", indent = 4, padding = 1 },
                { section = "startup" },
            },
        },
        explorer = {},
        indent = {},
        picker = {},
    },
    keys = {
        -- Explorer
        { "<leader>e", function() Snacks.explorer() end, desc = "File Explorer" },
        -- find
        { "<leader>ff", function() Snacks.picker.files() end, desc = "Find Files" },
        { "<leader>fr", function() Snacks.picker.recent() end, desc = "Recent" },
        -- Grep
        { "<leader>/", function() Snacks.picker.grep() end, desc = "Grep" },
        { "<leader>sw", function() Snacks.picker.grep_word() end, desc = "Visual selection or word", mode = { "n", "x" } },
        -- search
        { "<leader>sd", function() Snacks.picker.diagnostics() end, desc = "Diagnostics" },
        { "<leader>sD", function() Snacks.picker.diagnostics_buffer() end, desc = "Buffer Diagnostics" },
        { "<leader>sh", function() Snacks.picker.help() end, desc = "Help Pages" },
        { "<leader>si", function() Snacks.picker.icons() end, desc = "Icons" },
        { "<leader>sj", function() Snacks.picker.jumps() end, desc = "Jumps" },
        { "<leader>sk", function() Snacks.picker.keymaps() end, desc = "Keymaps" },
        -- LSP
        { "gd", function() Snacks.picker.lsp_definitions() end, desc = "Goto Definition" },
        { "gD", function() Snacks.picker.lsp_declarations() end, desc = "Goto Declaration" },
        { "gr", function() Snacks.picker.lsp_references() end, nowait = true, desc = "References" },
        { "gI", function() Snacks.picker.lsp_implementations() end, desc = "Goto Implementation" },
        { "gy", function() Snacks.picker.lsp_type_definitions() end, desc = "Goto T[y]pe Definition" },
        { "gai", function() Snacks.picker.lsp_incoming_calls() end, desc = "C[a]lls Incoming" },
        { "gao", function() Snacks.picker.lsp_outgoing_calls() end, desc = "C[a]lls Outgoing" },
        { "<leader>ss", function() Snacks.picker.lsp_symbols() end, desc = "LSP Symbols" },
        { "<leader>sS", function() Snacks.picker.lsp_workspace_symbols() end, desc = "LSP Workspace Symbols" },
        -- todo comments
        { "<leader>st", function() Snacks.picker.todo_comments() end, desc = "Todo comments" },
        -- dash
        { "<leader>d", function() Snacks.dashboard.open() end, desc = "Dashboard" }
    },
}
