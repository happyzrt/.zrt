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

"map keyboard
nmap <F2> <Esc>:TlistToggle<CR>
nmap <F4> <Esc>:Explore<CR>
nmap <F5> <Esc>:call Ctags_update()<CR><CR>
nmap <tab> <Esc>gt
nmap <C-w> <Esc>:w<CR>
imap <C-w> <Esc>:w<CR>
nmap <C-b> <Esc>:NERDTreeToggle<CR>
nmap <C-p> <Esc>:FZF<CR>
nmap <F6> <Esc>:w<CR>
nmap ` <Esc>:shell<CR>

"function
function! Ctags_update()
    let curdir=getcwd()
    while !filereadable("./tags")
        cd ..
        if getcwd() == "/" 
            break
        endif
    endwhile
    if filewritable("./tags")
        !ctags -R  
        TlistUpdate
    endif
    execute ":cd" . curdir
endfunction

"for YouCompleteMe
let g:ycm_global_ycm_extra_conf = '~/.vim/pack/zrt/start/YouCompleteMe/.ycm_extra_conf.py'
let g:ycm_use_clangd = 'Always'
nmap <C-]> :YcmCompleter GoTo<CR>
