local plugins = {
	{
		"neovim/nvim-lspconfig",

		dependencies = {
			"jose-elias-alvarez/null-ls.nvim",
			config = function()
				require("custom.configs.null-ls")
			end,
		},
		config = function()
			require("plugins.configs.lspconfig")
			require("custom.configs.lspconfig")
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter",
		opts = {
			ensure_installed = {
				"vim",
				"lua",

				"cpp",
				"cmake",
				"json",
				"dockerfile",
			},
		},
	},
	{
		"williamboman/mason.nvim",
		opts = {
			ensure_installed = {
				"lua-language-server",
				"html-lsp",
				"prettier",
				"stylua",
        "neocmake",
        "clangd",
        "json",
        "dockerls",
        "docker_compose_language_service",
			},
		},
	},
}
return plugins
