nnoremap <silent><C-n> :NERDTreeToggle<Enter>
let NERDTreeMinimalUI=1
let NERDTreeChDirMode=2

" Close vim automatically if the only window left open is a NERDTree.
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif 
