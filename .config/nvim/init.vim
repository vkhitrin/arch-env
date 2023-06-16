" Files
source ~/.config/nvim/plugin/plugins.vim   " plugins
source ~/.config/nvim/plugin/fern.vim      " fern configuration
source ~/.config/nvim/plugin/vim-cool.vim  " vim-cool configration
luafile ~/.config/nvim/lua/nvim-cmp.lua
luafile ~/.config/nvim/lua/lsp.lua
luafile ~/.config/nvim/lua/trouble_config.lua
luafile ~/.config/nvim/lua/null-ls_config.lua
luafile ~/.config/nvim/lua/todo-comments_config.lua
luafile ~/.config/nvim/lua/gitsigns_config.lua
luafile ~/.config/nvim/lua/catpuccin.lua
luafile ~/.config/nvim/lua/neovide.lua
luafile ~/.config/nvim/lua/treesitter.lua

" Options
set nocompatible                           " disable compatibility to old-time vi
set showmatch                              " show matching brackets.
set ignorecase                             " case insensitive matching
set hlsearch                               " highlight search results
set smartindent                            " enable autoindent
set number                                 " add line numbers
set termguicolors                          " improved colors
set wildmode=longest,list                  " get bash-like tab completions
filetype plugin indent on                  " allows auto-indenting depending on file type
set tabstop=4                              " number of columns occupied by a tab character
set expandtab                              " converts tabs to white space
set shiftwidth=4                           " width for autoindents
set softtabstop=4                          " see multiple spaces as tabstops so <BS> does the right thing
set updatetime=250                         " update sign column every quarter second
set signcolumn=number                      " always show sign column
set hidden                                 " keep files open without displaying
set completeopt=menu,menuone,noselect      " configure completion
set laststatus=2                           " always display statusline
set background=light                       " set background to light
set spelllang=en                           " enable spell checking for English
set spellsuggest=best,9                    " show 9 spelling suggestions at must
set spell                                  " enable spell checking
set clipboard=unnamedplus                  " copy selection to system clipboard
set cursorline                             " highlight line of cursor

" Set colorscheme and higlights
colorscheme catppuccin
:highlight SignColumn ctermbg=NONE guibg=transparent

" Commands

" Fern: Open fern
nnoremap <silent> <C-t> :Fern . -drawer -toggle <CR>
nnoremap <silent> <C-N> :bnext<CR>
nnoremap <silent> <C-P> :bprev<CR>
nnoremap <leader>ff <cmd>Telescope find_files hidden=true<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>ft <cmd>TodoTelescope<cr>
nnoremap <leader>xx <cmd>TroubleToggle<cr>
nnoremap <leader>xw <cmd>TroubleToggle workspace_diagnostics<cr>
nnoremap <leader>xd <cmd>TroubleToggle document_diagnostics<cr>
nnoremap <leader>xq <cmd>TroubleToggle quickfix<cr>
nnoremap <leader>xl <cmd>TroubleToggle loclist<cr>
nnoremap gR <cmd>TroubleToggle lsp_references<cr>
nmap <silent> <F8> :TagbarToggle<CR>
nnoremap <silent> <F11> :set spell!<cr>

