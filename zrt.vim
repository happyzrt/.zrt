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
nmap <F2> <Esc>:TagbarToggle<CR>
nmap <F3> <Esc>:Explore<CR>
nmap <tab> <Esc>gt
nmap <C-w> <Esc>:w<CR>
imap <C-w> <Esc>:w<CR>
nmap <C-b> <Esc>:NERDTreeToggle<CR>
nmap <C-p> <Esc>:FZF<CR>
nmap <F6> <Esc>:w<CR>
nmap ` <Esc>:shell<CR>

"for YouCompleteMe
let g:ycm_global_ycm_extra_conf = '~/.vim/pack/zrt/start/YouCompleteMe/.ycm_extra_conf.py'
let g:ycm_use_clangd = 1
let g:ycm_add_preview_to_completeopt = 0
set completeopt-=preview
nmap <C-]> :YcmCompleter GoTo<CR>
