
# NEOVIM CONFIG WORKSHOP

Goals:

- Know how to get help
- Know how to do basic configurations
- Know how to use an LSP effectively
- Learn how to install and use plugins
- Learn some motions and operators

Topics:

- 'options'
- 'plugins'
- 'lsp'
- 'keymaps'
- 'autocmds'

So I want to give you guys options, Neovim or Vim.

The focus will be on Neovim since it has an LSP client.

## Options

See :help options

Some options I highly recommend are:

```vim
set number          " Show line number
set nowrap          " Don't wrap long lines
set textwidth=80    " Go to new line at 81 characters
set virtualedit=all " Ability to move anywhere
set list            " Show all whitespace
set shiftwidth=4    " Specifies indent width
set tabstop=4       " Specifies how many spaces in a tab
set smartindent     " Automatic indenting
set expandtab       " Always expand tabs to spaces
set nohlsearch      " After searching remove highlight
set incsearch       " Show incremental matches while searching
set undofile        " Make undo history persist exiting vim
set noswapfile      " Don't use swapfiles
set nobackup        " Don't save .bak backups
set termguicolors   " Enables 24-bit RGB color
```

```lua
vim.o.number = true
vim.o.wrap = false
vim.o.textwidth = 79
vim.o.virtualedit = "all"
vim.o.list = true
vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.smartindent = true
vim.o.expandtab = true
vim.o.hlsearch = false
vim.o.incsearch = true
vim.o.undofile = true
vim.o.swapfile = false
vim.o.backup = false
```

## Plugins

So plugins are just vimscript or lua code that exists in your 'runtimepath'.

See `:help 'runtimepath'`

```vim
scriptnames
```
