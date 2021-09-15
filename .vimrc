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

set cinoptions+=l1

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


"
" ---- plugin: ale ----
"
let g:ale_lint_on_text_changed = 0
let g:ale_sign_error   = 'E'
let g:ale_sign_warning = 'W'
let g:ale_echo_msg_format = '[%linter%]%code: %%s'

let g:ale_linters = { 'cpp': ['cppcheck', 'cpplint'] }

nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
