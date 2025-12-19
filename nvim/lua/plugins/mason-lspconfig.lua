return {
	"mason-org/mason-lspconfig.nvim",
	opts = {},
	dependencies = {
		{ "mason-org/mason.nvim", opts = {} },
		"neovim/nvim-lspconfig",
	},

	config = function()
		local mason_lspconfig = require("mason-lspconfig") -- Mason specific configs
		local lspconfig = require("lspconfig") -- neovim lsp configuration
		mason_lspconfig.setup({
			ensure_installed = { "clangd", "stylua" },
		})

		local on_attach = function(client, bufnr)
			client.server_capabilities.documentFormattingProvider = false
		end
	end,
}
