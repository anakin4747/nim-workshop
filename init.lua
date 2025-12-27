
-- options {{{ (see :help options or :h 'number')
vim.o.number = true         -- Show line number
vim.o.wrap = false          -- Don't wrap long lines
vim.o.textwidth = 79        -- Go to new line after 80 characters
vim.o.virtualedit = "all"   -- Ability to move anywhere
vim.o.list = true           -- Show all whitespace
vim.o.shiftwidth = 4        -- Specifies indent width
vim.o.tabstop = 4           -- Specifies how many spaces in a tab
vim.o.smartindent = true    -- Automatic indenting
vim.o.expandtab = true      -- Always expand tabs to spaces
vim.o.hlsearch = false      -- After searching remove highlight
vim.o.incsearch = true      -- Show incremental matches while searching
vim.o.undofile = true       -- Make undo history persist exiting vim
vim.o.swapfile = false      -- Don't use swapfiles
vim.o.backup = false        -- Don't save .bak backups
vim.o.termguicolors = true  -- Enables 24-bit RGB color
vim.o.signcolumn = "number" -- Place errors over number columns to avoid jitter
vim.o.winborder = "rounded" -- Set rounded floating window borders
-- }}}

-- create a more automated way to list all your language servers and not to get
-- fancy about root_markers since its only ever gunna

-- can pack.add() can be used to just install language servers?

-- keymaps {{{ (see :h vim.keymap.set)
vim.keymap.set('n', 'gd', '<C-]>')
vim.keymap.set('t', '<esc><esc>', '<C-\\><C-n>')
-- }}}

-- autocmds {{{ (see :h autocmd)
vim.api.nvim_create_autocmd('BufWritePre', {
    desc = "Clear trailing whitespace on write",
    callback = function()
        local view = vim.fn.winsaveview()
        vim.cmd([[%s/\s\+$//e]])
        vim.fn.winrestview(view)
    end
})
-- }}}

-- lsp {{{ (see :h lsp-api)
vim.lsp.config.lua_ls = {
    cmd = { 'lua-language-server' },
    root_markers = { '.git' },
    filetypes = { 'lua' },
}

vim.lsp.enable('lua_ls')
-- }}}

-- diagnostics {{{ (see :h diagnostic)
vim.diagnostic.config({
    jump = { on_jump = vim.diagnostic.open_float },
    virtual_text = true, -- or virtual_lines = true,
    -- update_in_insert = true,
})
-- }}}

-- plugins {{{ (see :h vim.pack)
vim.pack.add({
    'https://github.com/anakin4747/ai.nvim',
    'https://github.com/ellisonleao/gruvbox.nvim.git',
})
-- }}}
