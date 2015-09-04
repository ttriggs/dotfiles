" TT additions
" called once right before you start selecting multiple cursors
function! Multiple_cursors_before()
  if exists(':NeoCompleteLock')==2
    exe 'NeoCompleteLock'
  endif
endfunction

" Called once only when the multiple selection is cancelled (default <Esc>)
function! Multiple_cursors_after()
  if exists('NeoCompleteLock')==2
    exe 'NeoCompleteLock'
  endif
endfunction


" Turn off default key mappings
let g:multi_cursor_use_default_mapping=0

" Switch to multicursor mode with ,mc
" let g:multi_cursor_start_key=',mc'
" TT addition
" Switch to multicorsor mode with <C-d>
let g:multi_cursor_start_key='<C-d>'

" Ctrl-n, Ctrl-p, Ctrl-x, and <Esc> are mapped in the special multicursor
" mode once you've added at least one virtual cursor to the buffer
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

