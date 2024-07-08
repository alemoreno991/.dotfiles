-- map the leader key to <space>
vim.g.mapleader = " "

-- open the file explorer
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

-- save buffer
vim.keymap.set("n", "<leader>w", vim.cmd.w)

-- exit buffer
vim.keymap.set("n", "<leader>q", vim.cmd.q)

-- toggle comments
vim.keymap.set("n", "<leader>/", vim.cmd.CommentToggle)
vim.keymap.set("v", "<leader>/", ":'<,'>CommentToggle<CR>")

-- drag lines up and down 
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- append current line to the one right above
vim.keymap.set("n", "J", "mzJ`z")

-- move up/down fast
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- after searching for a regex, go to next/previous match
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Allow to use the system's clipboard for coping stuff
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- use the lsp to format the file
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- I don't know what this does!!!
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
-- make the current file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- open `packer.lua`
vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.config/nvim/lua/alejandro/packer.lua<CR>");
-- I don't know what this does!!!
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

-- source current file
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

-- unbind Q 
vim.keymap.set("n", "Q", "<nop>")

-- Navigate between panes
vim.keymap.set("n", "<C-h>", vim.cmd.TmuxNavigateLeft)
vim.keymap.set("n", "<C-l>", vim.cmd.TmuxNavigateRight)
vim.keymap.set("n", "<C-j>", vim.cmd.TmuxNavigateDown)
vim.keymap.set("n", "<C-k>", vim.cmd.TmuxNavigateUp)

-- vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
-- vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
-- vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
-- vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Copilot accept suggestion remap
  vim.g.copilot_assume_mapped = true
