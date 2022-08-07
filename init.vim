call plug#begin('~/.vim/plugged')
Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }
Plug 'morhetz/gruvbox',{ 'branch': 'master' }
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'rakr/vim-colors-rakr', { 'branch': 'master' }
Plug 'zah/nim.vim'
Plug 'ervandew/supertab'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'Mofiqul/adwaita.nvim'
call plug#end()

imap <c-space> <Plug>(asyncomplete_force_refresh)
" For Vim 8 (<c-@> corresponds to <c-space>):
" imap <c-@> <Plug>(asyncomplete_force_refresh)
let g:asyncomplete_auto_popup = 0
colorscheme adwaita
display lightline
set laststatus=2
let g:SuperTabDefaultCompletionType = "<C-n>"
set noshowmode
autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
set number
