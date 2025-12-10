return{
        "nvim-treesitter/nvim-treesitter",
        dependencies = {
                "nvim-treesitter/playground",
        },
        build = ":TSUpdate", -- Simpler build command recommended for Lazy
        event = { "BufReadPost", "BufNewFile" }, -- Load when opening a file
	config = function ()
		require'nvim-treesitter.configs'.setup ({
                        ensure_installed = { "c",
                        "lua",
                        "vim",
                        "vimdoc",
                        "query",
                        "markdown",
                        "markdown_inline",
                        "html",
                        "javascript",
                        "latex",
                        "cpp",
                        "java",
                        "python"
                },
                highlight = {
                        enable = true,
                        additional_vim_regex_highlighting = false,
                },

                indent = { enable = true },
                auto_install = true,

		})
	end,
}
