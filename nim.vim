call plug#begin('~/.vim/plugged')
Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }
Plug 'morhetz/gruvbox',{ 'branch': 'master' }
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'rakr/vim-colors-rakr', { 'branch': 'master' }
Plug 'Mofiqul/adwaita.nvim'
Plug 'alaviss/nim.nvim'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'tenxsoydev/size-matters.nvim'
Plug 'davidhalter/jedi-vim'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'neovim/nvim-lspconfig'
Plug 'ray-x/go.nvim'
Plug 'ray-x/guihua.lua' 
call plug#end()
set clipboard=unnamedplus
colorscheme adwaita
display lightline
set expandtab ts=4 sw=4 ai
set laststatus=2
set noshowmode
autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
set number

au User asyncomplete_setup call asyncomplete#register_source({
    \ 'name': 'nim',
    \ 'whitelist': ['nim'],
    \ 'completor': {opt, ctx -> nim#suggest#sug#GetAllCandidates({start, candidates -> asyncomplete#complete(opt['name'], ctx, start, candidates)})}
    \ })

