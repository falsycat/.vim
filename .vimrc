"
" vim config
"
" author: falsycat <me@falsy.cat>
" license: WTFPL
"

"
" ---- visual ----
"
set number
set cursorline
set cursorcolumn
set laststatus=2
set showcmd
set background=dark
set ruler

syntax enable


"
" ---- editing ----
"
set smartindent
set expandtab
set autoindent
set shiftwidth=2
set mouse=

filetype plugin indent on


"
" ---- searching ----
"
set hlsearch
set incsearch
set ignorecase
set smartcase
set wrapscan

nnoremap <Esc><Esc> :nohlsearch<CR>


"
" ---- menu ----
"
set wildmenu


"
" ---- plugin: vim-easy-align ----
"
xmap <Space>a <Plug>(EasyAlign)
nmap <Space>a <Plug>(EasyAlign)


"
" ---- plugin: vim-translator ----
"
let g:translator_target_lang = "ja"

nmap <Space>t <Plug>Translate
vmap <Space>t <Plug>TranslateV


"
" ---- plugin: tagbar
"
nmap <Space>c :TagbarToggle<CR>


"
" ---- plugin: pathogen ----
"
execute pathogen#infect()


"
" ---- plugin: onedark.vim ----
"
colorscheme onedark
