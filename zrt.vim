"vim display format
set nu
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set backspace=indent,eol,start

"set encoding
set fileencodings=utf-8,chinese,latin-1
set termencoding=utf-8
set encoding=utf-8

"filetype
filetype plugin indent on

"map keyboard
nmap <F1> <Esc>:GitMessenger<CR>
nmap <F3> <Esc>:Explore<CR>
nmap <tab> <Esc>gt
nmap <C-w> <Esc>:w<CR>
imap <C-w> <Esc>:w<CR>
nmap <C-b> <Esc>:NERDTreeToggle<CR>
nmap <C-p> <Esc>:Files<CR>
nmap <C-f> <Esc>:Rg<CR>
nmap <F6> <Esc>:w<CR>
nmap ` <Esc>:shell<CR>

"for coc
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
nmap <silent><nowait> gd <Plug>(coc-definition)
nmap <silent><nowait> gy <Plug>(coc-type-definition)
nmap <silent><nowait> gi <Plug>(coc-implementation)
nmap <silent><nowait> gr <Plug>(coc-references)
nmap <F2> <Esc>:CocList symbols<CR>
