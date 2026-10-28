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
nmap <C-m> <Esc>:GitMessenger<CR>
nmap <C-g> <Esc>:
imap <C-g> <Esc>:
nmap <F3> <Esc>:Explore<CR>
"nmap <tab> <Esc>gt
nmap <C-w> <Esc>:w<CR>
imap <C-w> <Esc>:w<CR>
nmap <C-b> <Esc>:NERDTreeToggle<CR>
nmap <C-p> <Esc>:Files<CR>
nmap <C-f> <Esc>:Rg<CR>
nmap <F6> <Esc>:w<CR>
nmap ` <Esc>:shell<CR>

"for vim-lsp
nmap <C-[> <Esc>:LspDeclaration<CR>
nmap <C-]> <Esc>:LspDefinition<CR>
au User lsp_setup call lsp#register_server({
    \ 'name': 'clangd',
    \ 'cmd': {server_info->['clangd']},
    \ 'allowlist': ['c', 'cpp', 'objc', 'objcpp', 'cuda'],
    \ })
set foldmethod=expr
  \ foldexpr=lsp#ui#vim#folding#foldexpr()
  \ foldtext=lsp#ui#vim#folding#foldtext()

"for copilot
imap <silent><script><expr> <C-s> copilot#Suggest()
imap <silent><script><expr> <C-x> copilot#Dismiss()
