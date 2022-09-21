"isable compatibility with vi 
set nocompatible

"Enable type file detection
filetype on

"Enable plugins and load plugin for detected file type.
filetype plugin on

"Load an indent file for the detected file type.
filetype indent on

"Turn syntax highlighting on.
syntax on

"Add numbers to each line on LHS
set relativenumber

" Set shift width to 4 spaces
set shiftwidth=4

"Set tablewidth to 4 columns
set tabstop=4

" Use space characters instead of tabs.
set expandtab

" Backspace tab 4 spaces
set softtabstop=4

" Colorscheme
colorscheme one
set background=dark

" Enable mouse
set mouse=a


" WSL yank support
let s:clip = '/mnt/c/Windows/System32/clip.exe' 
if executable(s:clip)
    augroup WSLYank
        autocmd!
        autocmd! TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0)
    augroup END
endif
