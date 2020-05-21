call plug#begin()
Plug 'mattn/emmet-vim'
Plug 'majutsushi/tagbar'
Plug 'dikiaap/minimalist'
Plug 'gagoar/stripwhitespaces'
Plug 'rking/ag.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'

function! BuildYCM(info)
  " info is a dictionary with 3 fields
  " - name:   name of the plugin
  " - status: 'installed', 'updated', or 'unchanged'
  " - force:  set on PlugInstall! or PlugUpdate!
  if a:info.status == 'installed' || a:info.force
    !./install.py --clangd
  endif
endfunction

Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') }
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree'
Plug 'skywind3000/asyncrun.vim'
Plug 'vim-scripts/a.vim'
call plug#end()

set number
set relativenumber

syntax on
colorscheme minimalist

set autoindent
set smartindent
set shiftwidth=2
set tabstop=2
set softtabstop=0
set expandtab
set smarttab

noremap <leader>n :NERDTreeToggle<CR>
noremap <leader>t :TagbarToggle<CR>
noremap <leader>b :CtrlPBuffer<CR>
noremap <leader>r :AsyncRun<SPACE>

let g:asyncrun_open=10
let g:NERDTreeShowHidden=1
let g:ycm_confirm_extra_conf=0
