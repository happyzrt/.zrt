"vundle configure
"git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
set nocompatible
filetype off 
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
"Plugin 'VundleVim/Vundle.vim'
"Plugin 'Valloric/YouCompleteMe'
"call vundle#end()
filetype plugin indent on

"you complete me
let g:ycm_global_ycm_extra_conf='~/.zrt/.ycm_extra_conf.py'

"vim display format
set nu
set expandtab
set shiftwidth=4
set tabstop=4
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
nmap <C-w> <Esc>:wq<CR>

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
