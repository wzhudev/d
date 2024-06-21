" different cursor style on different mode
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

syntax on

" relative line number
set rnu 

" quick exit insert mode
inoremap <silent> jj <esc>
