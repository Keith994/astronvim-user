local status_ok, go = pcall(require, "go")
if not status_ok then return end
go.setup {
    -- verbose = true,
    log_path = vim.fn.expand "$HOME" .. "/tmp/gonvim.log",
    lsp_codelens = true,
    comment_placeholder = "",
    dap_debug = true,
    dap_debug_gui = true,
    dap_debug_vt = true,
    dap_debug_keymap = false, -- true: use keymap for debugger defined in go/dap.lua
    run_in_floaterm = true, -- set to true to run in float window.
    icons = false,
    sign_priority = 500,
    lsp_inlay_hints = {
        enable = true,
        -- Only show inlay hints for the current line
        only_current_line = false,
        -- Event which triggers a refersh of the inlay hints.
        -- You can make this "CursorMoved" or "CursorMoved,CursorMovedI" but
        -- not that this may cause higher CPU usage.
        -- This option is only respected when only_current_line and
        -- autoSetHints both are true.
        only_current_line_autocmd = "CursorHold",
        -- whether to show variable name before type hints with the inlay hints or not
        -- default: false
        show_variable_name = true,
        -- prefix for parameter hints
        parameter_hints_prefix = " ",
        show_parameter_hints = true,
        -- prefix for all the other hints (type, chaining)
        other_hints_prefix = "=> ",
        -- whether to align to the lenght of the longest line in the file
        max_len_align = false,
        -- padding from the left if max_len_align is true
        max_len_align_padding = 1,
        -- whether to align to the extreme right or not
        right_align = false,
        -- padding from the right if right_align is true
        right_align_padding = 6,
        -- The color of the hints
        highlight = "Comment",
    },
}
