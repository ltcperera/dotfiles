local M = {}

function M.smart_quit()
    local bufnr = vim.api.nvim_get_current_buf()
    local modified = vim.api.nvim_buf_get_option(bufnr, "modified")
    if modified then
        vim.ui.input({
            prompt = "You have unsaved changes. Save before quit? (y/n) ",
        }, function(input)
            if input == "y" then
                vim.cmd "wq"
            end
        end)
    else
        vim.cmd "q!"
    end
end

return M
