call plug#begin()
" common library
Plug 'inkarkat/vim-ingo-library'
Plug 'nvim-lua/plenary.nvim'
" Theme/colors
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
" statusline/tabline
Plug 'ap/vim-buftabline'
Plug 'lukelbd/vim-statusline'
" treesitter (syntax)
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim' " File explorer
Plug 'antoinemadec/FixCursorHold.nvim'
Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/fern-git-status.vim'
Plug 'lambdalisue/fern-hijack.vim'
" git
Plug 'lewis6991/gitsigns.nvim'
" text
" Plug 'raimondi/delimitmate'
Plug 'inkarkat/vim-ShowTrailingWhitespace'
" Snippets
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
" Intellisense
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'uga-rosa/cmp-dictionary'
Plug 'jose-elias-alvarez/null-ls.nvim'
" Preview
Plug 'ellisonleao/glow.nvim'
" Editor
Plug 'editorconfig/editorconfig-vim'
Plug 'romainl/vim-cool' " disable search highlight after search
Plug 'junegunn/goyo.vim'
Plug 'preservim/tagbar'
Plug 'folke/trouble.nvim'
Plug 'folke/todo-comments.nvim'
" Tmux
Plug 'christoomey/vim-tmux-navigator'
call plug#end()

