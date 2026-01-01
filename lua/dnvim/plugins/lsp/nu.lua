return {
	cmd = { "nu", "--lsp" },
	filetypes = { "nu" },
	root_dir = function(fname)
		return vim.fs.dirname(vim.fs.find({ "config.nu", ".git" }, { upward = true, path = fname })[1])
	end,
	settings = {},
}
