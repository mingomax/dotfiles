" Custom Vim editor configuration Domingos Teruel <mingomax@dteruel.net.br>
" reference http://marcgg.com/blog/2016/03/01/vimrc-example/

execute pathogen#infect()

filetype on
" Theme
syntax on
set background=dark
colorscheme dante

set guifont=Menlo\ Regular:h18
set colorcolumn=90

set nowrapscan    " Nao prossegue procura apos fim/inicio do arquivo
set bs=2          " Allow backspacing over everything in insert mode
"set autoindent    " Always set autoindenting on
" set autoread
"set smartindent   " Always set smartindenting on
set nobackup      " Dont keep a backup file
set textwidth=0   " Dont wrap words by default
set ruler         " Show the line and column numbers of the cursor
set t_kb=
set showcmd       " Show partial command in status line.
set showmatch     " Show matching brackets.
set incsearch      " Incremental search
set autowrite     " Automatically save before commands like :next &amp; :make
set ls=2
set ts=3
set sw=3
" let mapleader=","

set showcmd       " Show (partial) command in status line.
set incsearch     " Incremental search. A busca (comando /) é feita enquanto você digita.
set hlsearch     " Destaca todas as ocorrências da busca. Ótimo pra verificar
                 " rapidamente onde uma variável é usada ou se todas estão escritas com o nome igual
set laststatus=2  " Usar sempre a barrinha de status mais informativa
set wildmenu      " menu rápido quando aperta tab na linha de comando ":"

" Se por acaso o Vim parar de indentar automaticamente seus arquivos, deve ser
" este comando que está faltando no seu .vimrc
" filetype plugin indent on

" Identificar os espaços que ficarem no fim da linha e todos os tabs
set list
set listchars=tab:»\ ,trail:·


let mapleader=" "
map <leader>s :source ~/.vimrc<CR>
set hidden
set history=100
filetype indent on
set nowrap
set tabstop=4 " seta para cada tab o número n de espaços
set expandtab " troca a tab por espaço 
set number    " Mostra as linhas
set shiftwidth=2
set smartindent
set autoindent
autocmd BufWritePre * :%s/\s\+$//e
set hlsearch
nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>
map <D-A-RIGHT> <C-w>l
map <D-A-LEFT> <C-w>h
map <D-A-DOWN> <C-w><C-w>
map <D-A-UP> <C-w>W
noremap <Leader><Leader> :e#<CR>
set showmatch
set wildignore+=*.log,*.sql,*.cache
noremap <Leader>r :CommandTFlush<CR>
let NERDTreeMapActivateNode='<right>'
nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>j :NERDTreeFind<CR>
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
let NERDTreeIgnore=['\.DS_Store', '\~$', '\.swp']
set signcolumn=yes
