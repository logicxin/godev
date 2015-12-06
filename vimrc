" Common
set so=99
set encoding=utf-8
set fileencoding=utf-8
set laststatus=2
set report=0
set linebreak
set breakindent
set number
set showcmd
set ignorecase
set smartcase
set showmatch
set incsearch 
set smarttab
set ruler
set autowrite
set confirm
set showmode
set splitbelow
set splitright
set noswapfile
set nobackup
set hidden
set cursorline
set gdefault
set t_Co=256
set relativenumber
set shiftwidth=4
set tabstop=4
set expandtab
set selection=exclusive

" Pathogen
execute pathogen#infect()
filetype plugin indent on

" Tagbar plugin
autocmd VimEnter * nested :TagbarOpen

" Airline plugin
let g:airline_theme = 'badwolf'
let g:airline_powerline_fonts = 1

" Closetag script
autocmd Filetype html let g:closetag_html_style=1
autocmd Filetype html,xml,xsl source ~/.vim/scripts/closetag.vim
autocmd FileType ruby setl nowrap sw=2 sts=2 et
autocmd BufWritePost *.go :GoInstall
autocmd FileType qf wincmd J

" Syntax highlighting
syntax on

" Go-vim plugin
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_auto_type_info = 0
let g:go_highlight_trailing_whitespace_error = 0
let g:go_fmt_command = "goimports"

" YouCompleteMe plugin
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_autoclose_preview_window_after_insertion = 1

" Emmet plugin
let g:user_emmet_leader_key='<C-C>'

" DelimitMate plugin
let delimitMate_expand_cr = 1
let delimitMate_expand_space = 1
let delimitMate_jump_expansion = 0


" Syntastic plugin
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_reuse_loc_lists = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_aggregate_errors = 1
let g:syntastic_go_checkers = ['go', 'gofmt', 'golint', 'govet']

" Go-Specific
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <Leader>e <Plug>(go-rename)
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <leader>l :GoLint<CR>
au FileType go nmap <Leader>g <Plug>(go-implements)
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>v <Plug>(go-vet)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)
au FileType go nmap <Leader>gb <Plug>(go-doc-browser)
au FileType go nmap <Leader>gs <Plug>(go-doc-split)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
