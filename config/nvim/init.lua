-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.opt.clipboard:append("unnamedplus")

require("neotest").setup({
	adapters = {
		require("neotest-dotnet"),
	},
})

-- set Neovim option to keep buffers/layouts when switch occurs
vim.o.switchbuf = "useopen,uselast"
