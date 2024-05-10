call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'rakr/vim-colors-rakr', { 'branch': 'master' }
Plug 'zah/nim.vim'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'Mofiqul/adwaita.nvim'
Plug 'tenxsoydev/size-matters.nvim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
call plug#end()

imap <c-space> <Plug>(asyncomplete_force_refresh)
" For Vim 8 (<c-@> corresponds to <c-space>):
" imap <c-@> <Plug>(asyncomplete_force_refresh)
colorscheme adwaita
display lightline
set laststatus=2
let g:SuperTabDefaultCompletionType = "<C-n>"
set noshowmode
autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
set number
if executable('pylsp')
    " pip install python-lsp-server
    au User lsp_setup call lsp#register_server({
        \ 'name': 'pylsp',
        \ 'cmd': {server_info->['pylsp']},
        \ 'allowlist': ['python'],
        \ })
endif
