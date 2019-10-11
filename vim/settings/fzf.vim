nnoremap <silent> <Leader>t :FZF<cr>
nnoremap <silent> <Leader>b :Buffers<cr>

" Term search via <Leader>gg
" nmap ,ag :Ag ""<Left>
nmap <silent> <Leader>ag :Ag<CR>
nmap <silent> <Leader>ad :Ag def <CR>

map ,jm :FZF app/models<CR>
map ,jc :FZF app/controllers<CR>
map ,jv :FZF app/views<CR>
map ,jf :FZF spec/fabricators<CR>

