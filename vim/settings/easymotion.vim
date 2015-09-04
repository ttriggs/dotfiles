" These keys are easier to type than the default set
" We exclude semicolon because it's hard to read and
" i and l are too easy to mistake for each other slowing
" down recognition. The home keys and the immediate keys
" accessible by middle fingers are available 
let g:EasyMotion_keys='asdfjkoweriopvng'
" nmap ,<ESC> ,,w
" nmap ,<S-ESC> ,,b
"
" TT additions
" change ,esc to Bidirectional search
nmap <leader><ESC> <Plug>(easymotion-bd-w)

" change ,S-Esc to two char Bidirectional sneak
nmap <leader><S-ESC> <Plug>(easymotion-s2)
