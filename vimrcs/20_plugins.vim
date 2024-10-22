call plug#begin("~/.config/nvim/plugged")
"call plug#begin("~/.vim/plugged")


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" =========================================================
"                         Theme
" =========================================================
" Soothing color scheme for your favorite [best] text editor
Plug 'NLKNguyen/papercolor-theme'

" =========================================================
"                     File Explorer
" =========================================================

" =========================================================
"                     File Searching
" =========================================================
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'rking/ag.vim'

" =========================================================
"   Code Completion, IntelliSense and Syntax Highlighting
" =========================================================
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig'

" wrapper for git and display git diff in the left gutter
Plug 'tpope/vim-fugitive' | Plug 'mhinz/vim-signify'
Plug 'junegunn/gv.vim'
Plug 'airblade/vim-gitgutter'

" surrounding text objects with whatever you want paranthesis, quotes, html tags...)
Plug 'tpope/vim-surround'

" Multiple Cursor
Plug 'terryma/vim-multiple-cursors'

" Lightline
Plug 'itchyny/lightline.vim'

"Indentation Guide
"Plug 'nathanaelkane/vim-indent-guides'
Plug 'Yggdroot/indentLine'

"Ack
Plug 'mileszs/ack.vim'
Plug 'ggreer/the_silver_searcher'

"Auto pairs
"Vim plugin, insert or delete brackets, parens, quotes in pair
Plug 'jiangmiao/auto-pairs'

"Easy Motion
"Vim motions on speed!
Plug 'easymotion/vim-easymotion'


call plug#end()

" Automatically install missing plugins on startup
if !empty(filter(copy(g:plugs), '!isdirectory(v:val.dir)'))
  autocmd VimEnter * PlugInstall | q
endif

