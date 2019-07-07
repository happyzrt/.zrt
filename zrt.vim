"vundle configure
set nocompatible
filetype off 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
call vundle#end()
filetype plugin indent on

"yoy complete me
let g:ycm_global_ycm_extra_conf='~/.zrt/.ycm_extra_conf.py'

"vim display format
set nu
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set autoindent

"map keyboard
nmap <F2> <Esc>:TlistToggle<CR>
nmap <F4> <Esc>:Explore<CR>
nmap <F5> <Esc>:call Ctags_update()<CR><CR>

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
