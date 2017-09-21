" This loads after the yadr plugins so that plugin mappings can
" be overwritten.

" TT additions
" Disable arrow keys in normal mode
" map <up> <nop>
" map <down> <nop>
" map <left> <nop>
" map <right> <nop>

" TOMAP:
" easy way to copy paste kwargs? snippit?

" add Cmd-e to change word to right of insert cursor
inoremap <D-e> <C-o>dw
noremap <D-e> dw

" format code block lines
nmap vmm =ar

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

" TT star highlights without jumping to next
nmap * *N

" TT addition: % go to last non-whitespace character
" therefore in normal mode, v% will highlight from the cursor to the last
" non-whitespace character
vmap <Space> g_

" TT quick access decorators
map ,jD :CtrlP db<CR>
map ,jd :CtrlP app/decorators<CR>

" use ag in CtrlP ??
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

if filereadable(expand("~/.yadr/vim/after/.vimrc.after"))
  source ~/.yadr/vim/after/.vimrc.after
endif

if filereadable(expand("~/.vimrc.after"))
  source ~/.vimrc.after
endif

" syntax highlighting for ES6 files:
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': ['javascript', 'coffee'], 'passive_filetype': ['go'] }
autocmd BufRead,BufNewFile *.es6, *.jsx setfiletype javascript
autocmd FileType javascript let b:syntastic_checkers = findfile('.eslintrc', '.;') != '' ? ['eslint'] : ['jshint']
let g:syntastic_javascript_eslint_exe = 'npm run eslint --'

" golang
let g:go_fmt_command = "goimports"
