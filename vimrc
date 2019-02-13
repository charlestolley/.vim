set softtabstop=4 expandtab
set shiftwidth=4
set number
set hlsearch
colorscheme zellner
nnoremap <esc><esc> :noh<return>:<backspace>
nnoremap OC gt
nnoremap OD gT
for i in ["'", "\"", " "]
	execute printf("xnoremap Q%s c%s\"%s<esc>", i, i, i)
endfor
for pair in [["(",")"],["{","}"],["[","]"],["<",">"]]
    execute printf("xnoremap Q%s c%s\"%s<esc>", pair[0], pair[0], pair[1])
    execute printf("xnoremap Q%s c%s\"%s<esc>", pair[1], pair[0], pair[1])
endfor

au Filetype python setlocal sts=4 sw=4 et
au Filetype css,html,htmldjango,javascript,yaml setlocal sts=2 sw=2 et
au Filetype html,htmldjango nnoremap  o<space><space><link<space>rel="stylesheet"<space>type="text/css"<space>href="">F"i
au Filetype html,htmldjango inoremap  <script<space>type="text/javascript"<space>src=""></script>F"i
au Filetype c,cpp,java setlocal sts=4 sw=4 ts=4 noet
au Filetype make setlocal sts=0 sw=8 ts=8 noet
