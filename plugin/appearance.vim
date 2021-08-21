""""""""""
" Colorscheme
""""""""""

if has('termguicolors')
  set termguicolors
endif

set background=dark
let g:neodark#use_256color = 1
let g:neodark#solid_vertsplit = 1
colorscheme neodark

set t_Co=256

" Color issue with tmux  https://www.reddit.com/r/vim/comments/75zvux/why_is_vim_background_different_inside_tmux/
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
if !has('nvim')
    set term=xterm-256color
endif

set list listchars=tab:»·,trail:·,nbsp:·
" Don't want to see filter line ~
hi EndOfBuffer guifg=bg
hi LineNr guifg=lightblue

""""""""""
" Screen display
""""""""""
" Split direction
set splitbelow
set splitright
set showtabline=2   " Always show tabline.

""""""""""
" Tabs and spaces
""""""""""
set autoindent      " respect indentation when starting a new line.
" Tabstop determines how many columns a tab counts for.
set tabstop=4       " Number of spaces tab is counted for.
set softtabstop=4   " So tabstop is about how wide a Tab is defined, while softtabstop is about how far cursor moves while typing Tab.
" Shiftwidth determines how many columns text is indented when using reindent operations.
set shiftwidth=4    " Number of spaces use for autoindent.
set expandtab       " Expand tabs into spaces.

autocmd FileType javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2
" Make backspace work like most other programs
set backspace=2     " Fix backspace behavior on most terminals.

" View highlight group
nmap <leader>sp :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

