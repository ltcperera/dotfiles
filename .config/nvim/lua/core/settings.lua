-- Setup vim variables
local o = vim.opt
local g = vim.g

-- Set leader and localleader to space
g.mapleader = " "
g.maplocalleader = " "

-- Line Numbers
o.relativenumber = true
o.number = true

-- Search options
o.incsearch = true

-- Tabs & Indentation
o.tabstop = 4
o.shiftwidth = 4
o.expandtab = true
o.autoindent = true

-- Line Wrapping
o.wrap = false

-- Case-insensitive search
o.ignorecase = true
o.smartcase = true

-- Cursor Line
o.cursorline = false

-- Appearance
o.termguicolors = true
o.background = "dark"
o.signcolumn = "yes"

-- Backspace
o.backspace = "indent,eol,start"

-- Clipboard
-- o.clipboard:append("unnamedplus")

-- Split Windows
o.splitright = true
o.splitbelow = true

-- Consider hyphenated words as one word (e.g. hello-world)
o.iskeyword:append("-")

-- Accommodate more than one mark in the sign column
o.signcolumn = "auto:2-5"

-- Enable mouse mode
o.mouse = 'a'

-- When lines wrap, indent the continuation for readability
o.breakindent = true

-- Set completeopt for better a completion experience
o.completeopt = 'menuone,noselect'

