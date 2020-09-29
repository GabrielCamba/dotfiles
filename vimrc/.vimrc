:set nocompatible              " be iMproved, required
:filetype off                   " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

" ailine is the visual configuration for vim
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Tern installation
Plugin 'ternjs/tern_for_vim'

" vim-vue plugin for vue syntax to be highlighted
Plugin 'posva/vim-vue'

" plugin de fzf
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'

" you complete me for autocompletion
Plugin 'Valloric/YouCompleteMe'

"plugin for syntastic for es-linting files
Plugin 'vim-syntastic/syntastic'

" PEP 8 checking
Plugin 'nvie/vim-flake8'

" Fuzzy finder
Plugin 'git://git.wincent.com/command-t.git'

" Eslint autofix
Plugin 'dense-analysis/ale'

" JSON formatting
Plugin 'elzr/vim-json'

" Jade plugin
"Plugin 'digitaltoad/vim-pug'

" coffe plugin
"Plugin 'kchmck/vim-coffee-script'

" jsx ts support
Plugin 'leafgarland/typescript-vim'
Plugin 'Quramy/tsuquyomi'
"Plugin 'peitalin/vim-jsx-typescript'

" All of your Plugins must be added before the following line
call vundle#end()            " required
syntax enable
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" set colours and highlight syntax
:set t_Co=256
:syntax on

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

let g:ale_fixers = { '*': ['remove_trailing_lines', 'trim_whitespace'], 'javascript': ['eslint'] }
" Fix files with prettier, and then ESLint.
let b:ale_fixers = ['prettier', 'eslint']
" Equivalent to the above.
let b:ale_fixers = {'javascript': ['prettier', 'eslint']}
" alefix on save
let g:ale_fix_on_save = 1

" adding fzf
"set rtp+=/usr/bin/fzf
set rtp+=~/.bin/fzf
" set rtp+=~/.fzf

" set colors on /usr/share/vim/vim81/colors/
colo molokai

" airline plugin config
let g:airline_powerline_fonts = 1
let g:airline_theme='hybrid'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = '▶'
let g:airline#extensions#tabline#right_sep = '◀'

  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif


  " unicode symbols
  let g:airline_left_sep = '▶'
  let g:airline_right_sep = '◀'
  let g:airline_symbols.branch = '⎇'
  let g:airline_symbols.notexists = '∄'

" define the leaders
:let mapleader = "ñ"
:let maplocalleader = "''"

"set vimTidal for tidal cycles configuration
let g:tidal_default_config = {"socket_name": "default", "target_pane": "vimTidalSession:tidal.1"}

" explorer configuration to be like NERDTree
" see Vexplore leader-n shortcut is below
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25

"sybtastic configuration for javascript
let g:syntastic_javascript_checkers=['eslint']


" configure to set numbers on the lines
:set number

" set tabs configuration
:set tabpagemax=15
:set showtabline=2

" set indentation with spaces instead of tabs
:set expandtab
:set shiftwidth=2
:set softtabstop=2

" set new file buffer on html from .vim/html.skel
au BufNewFile *.html 0r ~/.vim/html.skel | let IndentStyle = "html"

" enable the mouse
:set mouse=a

" To swap lines up and down
function! s:swap_lines(n1, n2)
    let line1 = getline(a:n1)
    let line2 = getline(a:n2)
    call setline(a:n1, line2)
    call setline(a:n2, line1)
endfunction

function! s:swap_up()
    let n = line('.')
    if n == 1
        return
    endif

    call s:swap_lines(n, n - 1)
    exec n - 1
endfunction

function! s:swap_down()
    let n = line('.')
    if n == line('$')
        return
    endif

    call s:swap_lines(n, n + 1)
    exec n + 1
endfunction

" setting shortcuts
" shortcuts to move up and down
:noremap <silent> <c-s-k> :call <SID>swap_up()<CR>
:noremap <silent> <c-s-j> :call <SID>swap_down()<CR>
:noremap <silent> <c-s-h> <C-W><C-H>
:noremap <silent> <c-s-l> <C-W><C-L>

" open tree to explore
:nnoremap <leader>n :Vexplore<CR>

" shortcut to run npm tests
:nnoremap <C-t> <ESC>:!npm run test<CR>

" remaping the previous tab
:nnoremap tg <ESC>:tabp<CR>

" shortcut to split the window and edit .vimrc
:nnoremap <leader>ev :tabnew $MYVIMRC<cr>
" shortcut to load current .vimrc
:nnoremap <leader>lv :source $MYVIMRC<cr>

" Shortcut to rapidly toggle `set list` to track unvisible errors
:nnoremap <leader>l :set list!<CR>
" Shortcut to consolelog debugging
" Console log from insert mode; Puts focus inside parentheses
imap cll console.log();<Esc>==f(a
" Console log from visual mode on next line, puts visual selection inside parentheses
vmap cll yocll'<Esc>pa ', <Esc>p
" Console log from normal mode, inserted on next line with word your on inside parentheses
nmap cll yiwocll'<Esc>pa ', <Esc>p

" Shortcut to consoledir debugging
" Console dir from insert mode; Puts focus inside parentheses
imap cdd console.dir(, {depth: null, colors: true});<Esc>==f(a
" Console dir from visual mode on next line, puts visual selection inside parentheses
vmap cdd yocdd<Esc>p
" Console dir from normal mode, inserted on next line with word your on inside parentheses
nmap cdd yiwocdd<Esc>p

" load fzf
"source /usr/share/doc/fzf/examples/fzf.vim
" Shortcut to activate fuzyfinder
:nnoremap <leader>f :FZF<CR>

" Shortcut to save current session
:nnoremap <leader>ss :set sessionoptions-=blank<CR>:mks! session.vim<CR>

" Shortcut to copy to the clipboard
:vnoremap <C-c> "+y
:vnoremap <C-x> "+d
:nnoremap <C-p> "+P

" :TernDef: Jump to the definition of the thing under the cursor.
" :TernDoc: Look up the documentation of something.
" :TernType: Find the type of the thing under the cursor.
" :TernRefs: Show all references to the variable or property under the cursor.
" :TernRename: Rename the variable under the cursor.
:nnoremap <leader>d :TernDef<cr>
:nnoremap <leader>r :TernRename<cr>

" add ejs filese support
au BufNewFile,BufRead *.ejs set filetype=html

"add hade support
au BufNewFile,BufReadPost *.jade set filetype=pug

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" to autoformat json
:nnoremap <leader>{ :%!python -m json.tool<cr>

let g:syntastic_typescript_checks=['tsc', 'tslint']

" make your code look pretty
syntax on
