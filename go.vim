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
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

" (Optional) Multi-entry selection UI.
Plug 'junegunn/fzf'
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
let g:LanguageClient_serverCommands = {
       \ 'go': ['gopls']
       \ }
autocmd BufWritePre *.go :call LanguageClient#textDocument_formatting_sync()
nmap <F5> <Plug>(lcn-menu)
" Or map each action separately
nmap <silent>K <Plug>(lcn-hover)
nmap <silent> gd <Plug>(lcn-definition)
nmap <silent> <F2> <Plug>(lcn-rename)


