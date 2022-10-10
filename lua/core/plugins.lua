-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer can manage itself
	use({ "wbthomason/packer.nvim" })

	use({ "ethanholz/nvim-lastplace" })

	use({ "nvim-lualine/lualine.nvim" })

	use({ "akinsho/bufferline.nvim" })

	use({ "kyazdani42/nvim-web-devicons" })

	use({
		"kyazdani42/nvim-tree.lua",
		tag = "nightly",
	})

	use({ "lukas-reineke/indent-blankline.nvim" })

	-- 注释 <leader>cc 反注释 <leader>cu
	use({ "scrooloose/nerdcommenter" })

	use({ "BurntSushi/ripgrep" }) --requires
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
	use({ "p00f/nvim-ts-rainbow" })
	-- requires
	use({
		"nvim-telescope/telescope-fzf-native.nvim",
		run = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
	})
	use({ "nvim-telescope/telescope.nvim", requires = { { "nvim-lua/plenary.nvim" } } })

	use({ "phaazon/hop.nvim", branch = "v2" }) --rv2' optional but strongly recommended

	use({ "NvChad/nvim-colorizer.lua" })

	use({ "jiangmiao/auto-pairs" })

	-- lsp
	use({ "williamboman/mason.nvim" })
	use({ "williamboman/mason-lspconfig.nvim" })
	use({ "neovim/nvim-lspconfig" })
	use({ "hrsh7th/nvim-cmp" }) -- Autocompletion plugin
	use({ "hrsh7th/cmp-nvim-lsp" }) -- LSP source for nvim-cmp
	use({ "hrsh7th/cmp-buffer" })
	use({ "hrsh7th/cmp-path" })
	use({ "hrsh7th/cmp-cmdline" })
	use({ "f3fora/cmp-spell" })
	use({ "saadparwaiz1/cmp_luasnip" }) -- Snippets source for nvim-cmp
	use({ "L3MON4D3/LuaSnip" }) -- Snippets plugin
	use({ "rafamadriz/friendly-snippets" })
	use({ "ray-x/cmp-treesitter" })
	use({ "onsails/lspkind.nvim" })

	use({ "j-hui/fidget.nvim" })

	use({ "jose-elias-alvarez/null-ls.nvim", requires = { "nvim-lua/plenary.nvim" } })

	use({ "fatih/vim-go", run = ":GoInstallBinaried" })

	use({ "h-hg/fcitx.nvim" })

	use({ "godlygeek/tabular", ft = { "markdown" } }) -- requires
	use({ "plasticboy/vim-markdown", ft = { "markdown" } })
	use({
		"iamcco/markdown-preview.nvim",
		run = function()
			vim.fn["mkdp#util#install"]()
		end,
	})

	use({ "mbbill/undotree" })

	use({ "lervag/vimtex" })

	use({ "goolord/alpha-nvim" })

	use({ "mg979/vim-visual-multi" })

	use({ "chentoast/marks.nvim" })

	-- themes
	use({
		"sainnhe/gruvbox-material",
		"ellisonleao/gruvbox.nvim",
		"joshdick/onedark.vim",
		"Rigellute/shades-of-purple.vim",
		"rebelot/kanagawa.nvim",
		"sainnhe/everforest",
	})

	-- benchmark
	use({ "dstein64/vim-startuptime" })

	use({ "rcarriga/nvim-notify" })
end)
