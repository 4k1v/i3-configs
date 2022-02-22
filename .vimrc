call plug#begin('~/.vim/plugged')
Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
call plug#end()
colorscheme spaceduck
display lightline
set laststatus=2
set noshowmode
autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
set number
