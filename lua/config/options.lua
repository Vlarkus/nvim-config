-- Basic Settings
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.scrolloff = 10
vim.opt.sidescrolloff = 8
vim.opt.wrap = false
vim.opt.cmdheight = 1
vim.opt.spelllang = {"en"}

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.grepprg = "rg --vimgrep"
vim.opt.grepformat = "$f:$l:%c:%m"

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true
vim.opt.showmatch = true
vim.opt.matchtime = 2
vim.opt.completeopt = "menuone,noinsert,noselect"
vim.opt.showmode = false

vim.opt.signcolumn = "yes"

vim.opt.backup = false  
vim.opt.writebackup = false
vim.opt.swapfile = false
vim.opt.undofile = true
vim.opt.autoread = true
vim.opt.autowrite = false

local undodir = "~/.local/share/nvim/undodir"
vim.opt.undodir = vim.fn.expand(undodir)
local undodir_path = vim.fn.expand(undodir)
if vim.fn.isdirectory(undodir_path) == 0 then
  vim.fn.mkdir(undodir_path, "p")
end

vim.opt.errorbells = false
vim.opt.backspace = "indent,eol,start"
vim.opt.autochdir = false
vim.opt.selection = "inclusive"
vim.opt.clipboard:append("unnamedplus")
vim.opt.modifiable = true
vim.opt.encoding = "UTF-8"
vim.opt.wildmenu = true
vim.opt.wildmode = "longest:full,full"
vim.opt.wildignorecase = true

vim.opt.splitbelow = true
vim.opt.splitright = true
