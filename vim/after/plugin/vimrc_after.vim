" This loads after the yadr plugins so that plugin mappings can
" be overwritten.

" TT additions
" Disable arrow keys in normal mode
" map <up> <nop>
" map <down> <nop>
" map <left> <nop>
" map <right> <nop>

" add Cmd-e to change word to right of insert cursor
inoremap <C-e> <C-o>dw

" toggle full screen
map <D-Enter> :set invfu<CR>

" TT additions: open this file in sublime
map <Leader>os :! subl '%:p'<CR>
map <Leader>so :! subl '%:p'<CR>

" TT addtions: move cursor irrespective of text
" :set virtualedit=all
map <Leader>!y :set virtualedit=all<CR>
map <Leader>!n :set virtualedit=""<CR>

" TT addtions: BufSurf
map <Esc>o :BufSurfBack<cr>
map <Esc>i :BufSurfForward<cr>

" TT addition: % go to last non-whitespace character
" therefore in normal mode, v% will highlight from the cursor to the last
" non-whitespace character
vmap t g_


if filereadable(expand("~/.yadr/vim/after/.vimrc.after"))
  source ~/.yadr/vim/after/.vimrc.after
endif

if filereadable(expand("~/.vimrc.after"))
  source ~/.vimrc.after
endif

" syntax highlighting for ES6 files:
autocmd BufRead,BufNewFile *.es6 setfiletype javascript
