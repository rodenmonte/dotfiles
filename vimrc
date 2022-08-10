execute pathogen#infect()

syntax on
color ron " ron is a color scheme
filetype plugin indent on

imap kj <Esc>
set number " line number
set rnu " relative number
set cursorline

set ignorecase " Ignore case in search
set smartcase " Improves ignorecase - only use ignorecase when all lower

set hlsearch " highlight search result
set incsearch " Show matches as typed

set expandtab
set shiftwidth=2
set tabstop=2
set smarttab
set autoindent

" Experimental
set wildmenu
set wildmode=longest:full,full

" set clipboard=unnamed
set clipboard=unnamedplus

" https://github.com/zivyangll/git-blame.vim
" Just \s for blame
nnoremap <Leader>s :<C-u>call gitblame#echo()<CR>
" Leader+w to close tab
nnoremap <Leader>w :tabc<CR>
" FZF to ctrl-p like vscode
nnoremap <C-p> :FZF<CR>
nnoremap <C-k> :NERDTreeToggleVCS<CR>
nnoremap <C-i> :NERDTreeToggleVCS %<CR>
"Doesn't work
nnoremap <C-;> :Rg 
nnoremap <Leader>[ :tprev<CR>
nnoremap <Leader>] :tnext<CR>

let NERDTreeWinSize = 40

" Relative linenumbers in netrw
let g:netrw_bufsettings="noma nomod nonu nobl nowrap ro rnu"
let g:sql_type_default = 'postgresql'

set mouse=a

" Make commands follow netrw browsing
" Breaks FZF Hmmm...
" let g:netrw_keepdir = 0

" Disable hovering showing documentation (makes reading code impossible)
let g:ycm_auto_hover=''
" Toggle YCM doc
nmap <leader>D <plug>(YCMHover)

" Ocaml Merlin
" Make sure to run `opam install merlin` first!
" https://ocaml.org/docs/up-and-running#installing-the-dune-build-system
let g:opamshare = substitute(system('opam var share'),'\n$','','''')
execute "set rtp+=" . g:opamshare . "/merlin/vim"
" Index Merlin docs
execute "helptags " . g:opamshare . "/merlin/vim/doc"

