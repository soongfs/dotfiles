" leader
let mapleader=" "

" indent
set shiftwidth=4
set softtabstop=4
set expandtab

" clipboard
vnoremap <leader>y y:call system('xclip -selection clipboard', @")<CR>
nnoremap <leader>yy yy:call system('xclip -selection clipboard', @")<CR>
nnoremap <leader>Y ggVGy:call system('xclip -selection clipboard', @")<CR>

" vim-plug
call plug#begin()

Plug 'tpope/vim-sensible'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'sainnhe/gruvbox-material'
Plug 'prabirshrestha/vim-lsp'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'itchyny/lightline.vim'

call plug#end()

" gruvbox-material
if has('termguicolors')
    set termguicolors
endif

set background=dark
let g:gruvbox_material_background = 'medium'
let g:gruvbox_material_better_performance = 1
colorscheme gruvbox-material

" lightline.vim
set laststatus=2
let g:lightline = {}
let g:lightline.colorscheme = 'gruvbox_material'

" vim-lsp
if executable('clangd')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'clangd',
        \ 'cmd': {server_info -> ['clangd']},
        \ 'allowlist': ['c', 'cpp'],
        \ })
endif

function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    setlocal signcolumn=yes
    if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
    nmap <buffer> gd <plug>(lsp-definition)
    nmap <buffer> gs <plug>(lsp-document-symbol-search)
    nmap <buffer> gS <plug>(lsp-workspace-symbol-search)
    nmap <buffer> gr <plug>(lsp-references)
    nmap <buffer> gi <plug>(lsp-implementation)
    nmap <buffer> gt <plug>(lsp-type-definition)
    nmap <buffer> <leader>rn <plug>(lsp-rename)
    nmap <buffer> [g <plug>(lsp-previous-diagnostic)
    nmap <buffer> ]g <plug>(lsp-next-diagnostic)
    nmap <buffer> K <plug>(lsp-hover)
    nnoremap <buffer> <expr><c-f> lsp#scroll(+4)
    nnoremap <buffer> <expr><c-d> lsp#scroll(-4)

    let g:lsp_format_sync_timeout = 1000
    autocmd! BufWritePre *.cpp,*.hpp call execute('LspDocumentFormatSync')
endfunction

augroup lsp_install
    au!
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END

" asyncomplete.vim
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
