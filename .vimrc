"Vundle Part" 
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" install new plugin with :PluginInstall
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'preservim/nerdtree'
Plugin 'PhilRunninger/nerdtree-visual-selection'
autocmd VimEnter * NERDTree | wincmd p
" plugin from https://github.com/preservim/nerdtree
" users can visually browse complex directory hierarchies, 
" quickly open files for reading or editing, and perform basic file system operations.
" CTRL + W + L, will jump to right tab
" CTRL + W + H, will jump to left tab 
"
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" bowen environment
let $LANG='en_US.UTF-8' " set the environment as English
let $LC_MESSAGES='en'
let $LC_ALL='en_US.UTF-8'
set langmenu=none " set menu as english

if filereadable($VIMRUNTIME . "/vimrc_example.vim")
	so $VIMRUNTIME/vimrc_example.vim
endif

if filereadable($VIMRUNTIME . "/gvimrc_example.vim")
	so $VIMRUNTIME/gvimrc_example.vim
endif

if filereadable($VIMRUNTIME . "/macros/matchit.vim")
	so $VIMRUNTIME/macros/matchit.vim
endif

"" Change the runtime path
"set rtp=D:\Vim\.vim,C:\\Program\ Files\\Vim/vimfiles,C:\\Program\
"Files\\Vim\\vim70,C:\\Program\ Files\\Vim/vimfiles/after,C:\\Documents\ and\
"Settings\\f-mftsai/vimfiles/after

"" A function for mapping tab to the auto-complete ctrl-p
"function InsertTabWrapper()
	"let col = col('.') - 1
	"if !col || getline('.')[col - 1] !~ '\k'
		"return "\<tab>"
	"else
		"return "\<c-p>"
	"endif
"endfunction 

"" �� auto-complete ����: ctrl-p, ctrl-n �ন tab 
map  <C-c> :tabnew<CR>
imap <C-c> <ESC>:tabnew<CR>
map  <C-k> :tabclose<CR>
map  <C-n> :tabprev<CR>
imap <C-n> <ESC>:tabprev<CR>
map  <C-p> :tabnext<CR>
imap <C-p> <ESC>:tabnext<CR>
"" map Tab to auto-complete
"inoremap <tab> <c-r>=InsertTabWrapper()<cr>

" Control the function of tab
"map g1 :tabn 1<CR>
"map g2 :tabn 2<CR>
"map g3 :tabn 3<CR>
"map g4 :tabn 4<CR>
"map g5 :tabn 5<CR>
"map g6 :tabn 6<CR>
"map g7 :tabn 7<CR>
"map g8 :tabn 8<CR>
"map g9 :tabn 9<CR>
"map g0 :tabn 10<CR>
"map gn :tabn<CR>
"map gp :tabp<CR>
"map gc :tabnew<CR>

"" map Alt-X to change windows vertically
set winaltkeys=no
"nmap <A-x> <C-w><C-w><C-w>_

"""""""""""""""""""""""""""""""""""""""""
"" �ֳt��]�w 
"""""""""""""""""""""""""""""""""""""""""
nmap <F1> "+y
nmap <F2> "+gp
map <F3> :set invcursorline<CR>
map <F4> :set hls!<BAR>set hls?<CR>
"" F5 has been set to run Java program by a plugin
set pastetoggle=<F9>
map <F10> :if exists("syntax_on") <BAR>
\ syntax off <BAR><CR>
\ else <BAR>
\ syntax enable <BAR>
\ endif <CR>
map <F11> :set spell!<BAR>set spell?<CR>
"" insert mode
:inoremap <F12> <C-R>=strftime("%% %d/%m/%y %H:%M:%S HERE")<CR>
"" normal mode
":nnoremap <F12> "=strftime("%c")<CR>P
"" From external for Windows
"map <F12> <ESC>:r!date /t<CR> 

"" to automatically spell for specific file types
"au BufNewFile,BufRead *.txt,*.tex set spell spelllang=en_us
au BufNewFile,BufRead *.tex set spell spelllang=en_us

" to be full-screen mode
if has("gui_win32")       " NT Windows
	autocmd GUIEnter * :simalt ~x
endif

"""""""""""""""""""""""""""""""""""""""""
"" �C��]�w
"""""""""""""""""""""""""""""""""""""""""
"if ! has("gui_running") 
    set t_Co=256 
"endif 
"set background=light
"set background=dark 
"colors peaksea
"colo peaksea
"colo ps_color
"colo ir_black
color xoria256 

""""""""""""""""""""""""""""""""""""""""""
"" For Backup
""""""""""""""""""""""""""""""""""""""""""
silent !mkdir ./backup > /dev/null 2>&1 
"set directory=~/tmp,/var/tmp/vi.recover,/tmp,.
"set nobackup
""""""""""""""""""""""""""""""""""""""""""
"" �s�X�]�w
""""""""""""""""""""""""""""""""""""""""""
set encoding=utf-8 " ability
"set fileencoding=utf-8
"set fileencodings=ucs-bom,utf-8,enc-cn,gb2312,big5,latin1
"" for console mode we use big5
"if has("gui_running")
	"set termencoding=utf-8
"else
	"set termencoding=big5
"endif

""""""""""""""""""""""""""""""""""""""""""""""
"" for Folding
""""""""""""""""""""""""""""""""""""""""""""""
"set foldcolumn=2
"set foldmethod=syntax
"set foldmethod=marker
"set foldtext=/^/=>
"
" for automatic folding
"set foldmethod=indent
""""""""""""""""""""""""""""""""""""""""""""""
"" Tab for programming
""""""""""""""""""""""""""""""""""""""""""""""
set tabstop=4
set smarttab
set softtabstop=4
set shiftwidth=4
set autoindent " always set autoindenting on

""""""""""""""""""""""""""""""""""""""""""""""
"" Environment Settings
""""""""""""""""""""""""""""""""""""""""""""""
"set backspace=indent,eol,start
"set bs=2 "" allow backspacing over everything in insert mode
"set history=50 "" keep 50 lines of command line history
"set ruler "" show the cursor position all the time
"set showcmd "" display incomplete commands
"set incsearch "" jumps to search word as you type (annoying but excellent)
set wildignore=*.o,*.obj,*.bak,*.exe,*.class
set nohls
"set showmatch "" Show matching parenthese.
"set clipboard=unnamed	"" for copy and paste compatible with win32
"set wildmenu
set laststatus=2 "" Display a status-bar.
"set viminfo='20,\"50	"" read/write a .viminfo file, don't store more
"set textwidth=78
set nowrap "" no wrap the text if a text is long
set guioptions-=T "" get rid of toolbar
"set guioptions-=m "" get rid of menu
set gfn=monaco:h11 " to let font be Monaco
set number "" show the number of lines
set ch=1 "" Make command line two lines high
"set bsdir=buffer "" to let the current directory be the directory of buffer
"set autochdir "" automatically change the current directory

""""""""""""""""""""""""""""""""""""""""""""""""""""
"" For Taglist
""""""""""""""""""""""""""""""""""""""""""""""""""""
let Tlist_Ctags_Cmd = $VIM . '/ctags/ctags.exe'
nmap	<leader>t	:TlistToggle<CR>
"let Tlist_WinWidth=12

""""""""""""""""""""""""""""""""""""""""""""""""""""
"" For NERDTree
""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap	<leader>e	:NERDTreeToggle<CR>
let mapleader = ","
""""""""""""""""""""""""""""""""""""""""""""""""""""
"" For LaTeXSuite
""""""""""""""""""""""""""""""""""""""""""""""""""""
"" REQUIRED. This makes vim invoke latex-suite when you open a tex file.
filetype plugin on
"" IMPORTANT. win32 users will need to have 'shellslash' set so that latex 
"" can be called correctly.
set shellslash
"" IMPORTANT. grep will sometimes skip displaying the file name if you" search
"" in a singe file. This will confuse latex-suite. Set your grep" program to
"" alway generate a file-name.
set grepprg=grep\ -nH\ $*
"" OPTIONAL. This enables automatic indentation as you type.
filetype indent on

" vim:sw=2:ts=2
"
set ai
set tabstop=4
set shiftwidth=4
