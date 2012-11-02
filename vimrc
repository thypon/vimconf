call pathogen#infect()
colorscheme wombat256
set incsearch
set ignorecase
set smartcase
set scrolloff=2
set wildmode=longest,list
set smartindent
set shiftwidth=2
set expandtab
"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use
syntax on
set rtp+=$GOROOT/misc/vim
filetype plugin indent on
"set background=dark
set ofu=syntaxcomplete#Complete
let g:user_zen_expandabbr_key = '<c-e>'
set tabstop=2
set shiftwidth=2
set softtabstop=2
"set smarttab
set mouse=a
set number
" automatically give executable permissions if filename is *.sh
au BufWritePost *.sh :!chmod a+x <afile>
" automatically insert "#!/bin/sh" line for *.sh files
au BufEnter *.sh if getline(1) == "" | :call setline(1, "#!/bin/sh") | endif
" automatically give executable permissions if file begins with #!/bin/sh
au BufWritePost * if getline(1) =~ "^#!/bin/[a-z]*sh" | silent !chmod a+x " <afile> | endif
autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4
autocmd FileType javascript setlocal expandtab shiftwidth=4 softtabstop=4
autocmd FileType java setlocal expandtab shiftwidth=4 softtabstop=4
autocmd FileType cpp setlocal expandtab shiftwidth=4 softtabstop=4

vmap <C-c> :!xclip -f -sel clip<CR>
map <C-v> :-1r !xclip -o -sel clip<CR>
map <F12> :CommandT<CR>
map <F1>  :CommandTBuffer<CR>
map <F2>  :TagbarToggle<CR>
let g:template_author = "Andrea Brancaleoni"

let g:tex_flavor='latex'

au BufNewFile,BufRead [bB]uildfile set filetype=ruby
