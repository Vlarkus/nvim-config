local opts = {noremap = true, silent = true}

local keymap = vim.keymap.set

keymap("n", "n", "nzzzb", opts)
keymap("n", "<C-d>", "<C-d>zz", opts)
keymap("n", "<C-u>", "<C-u>zz", opts)
keymap("n", "<leader>bn", "<Cmd>bnext<CR>", opts)
keymap("n", "<leader>bp", "<Cmd>bprevious<CR>", opts)
keymap("n", "<leader>bb", "<Cmd>enew<CR>", opts)
keymap("n", "<leader>bd", "<Cmd>bd!<CR>", opts)

keymap("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
keymap("n", "<C-j>", "<C-w>j", { desc = "Move to bottom window" })
keymap("n", "<C-k>", "<C-w>k", { desc = "Move to top window" })
keymap("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })

keymap("n", "<leader>sv", "<Cmd>vsplit<CR>", { desc = "Split window vertically" })
keymap("n", "<leader>sh", "<Cmd>split<CR>", { desc = "Split window horizontally" })
keymap("n", "<leader><Up>", "<Cmd>resize -2<CR>", { desc = "Increase window height" })
keymap("n", "<leader><Down>", "<Cmd>resize +2<CR>", { desc = "Decrease window height" })
keymap("n", "<leader><Left>", "<Cmd>vertical resize +2<CR>", { desc = "Decrease window width" })
keymap("n", "<leader><Right>", "<Cmd>vertical resize -2<CR>", { desc = "Increase window width" })

keymap("n", "<leader>vc", function()
  require("telescope.builtin").find_files({
    prompt_title = "Neovim Config",
    cwd = vim.fn.stdpath("config"), -- ~/.config/nvim
    hidden = true, -- show dotfiles if needed
  })
end, { desc = "Open Neovim config files" })


keymap("n", "<leader>tp", "<cmd>TypstPreviewToggle<CR>", { desc = "Typst: toggle live preview" })

keymap("n", "<leader>/", "gcc", { remap = true, desc = "Toggle comment line" })
keymap("v", "<leader>/", "gc",  { remap = true, desc = "Toggle comment block" })

keymap("n", "<leader>wp", "<cmd>setlocal wrap!<cr>", { desc = "Toggle wrap (buffer-local)" })

keymap("n", "<leader>tt", "<cmd>ToggleTerm direction=float<cr>", { desc = "Toggle floating terminal" })
keymap("n", "<leader>th", "<cmd>ToggleTerm size=15 direction=horizontal<cr>", { desc = "Toggle horizontal terminal" })
keymap("n", "<leader>tv", "<cmd>ToggleTerm size=50 direction=vertical<cr>", { desc = "Toggle vertical terminal" })

keymap("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "Find files" })
keymap("n", "<leader>ft", "<cmd>Telescope colorscheme<CR>", { desc = "Find files" })
keymap("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", { desc = "Live grep" })
keymap("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "Find buffers" })
keymap("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { desc = "Help tags" })

keymap("v", "<", "<gv", { desc = "Indent left and reselect" })
keymap("v", ">", ">gv", { desc = "Indent right and reselect" })

keymap("n", "<leader>ww", ":w<CR>", opts)
keymap("n", "<leader>wq", ":wq<CR>", opts)
keymap("n", "<leader>qq", ":q!<CR>", opts)
keymap("n", "<leader>so", ":source %<CR>", opts)

keymap("n", "<leader>e",  "<cmd>Neotree reveal right source=filesystem<CR>", { desc = "Neo-tree: Files (right)" })
keymap("n", "<leader>ef", "<cmd>Neotree reveal right source=filesystem<CR>", { desc = "Neo-tree: Files (right)" })
keymap("n", "<leader>eg", "<cmd>Neotree reveal right source=git_status<CR>", { desc = "Neo-tree: Git status (right)" })
keymap("n", "<leader>eb", "<cmd>Neotree reveal right source=buffers<CR>",    { desc = "Neo-tree: Buffers (right)" })
