set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Flash yanked area
Plugin 'kana/vim-operator-user'
Plugin 'haya14busa/vim-operator-flashy'

" better JSON for Vim
Plugin 'elzr/vim-json'

" fugitive.vim: A Git wrapper so awesome, it should be illegal
Plugin 'tpope/vim-fugitive'

" The project source tree browser.
Plugin 'scrooloose/nerdtree'

" The enhanced editor status bar.
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" The enhanced C++ syntax highlighting.
Plugin 'octol/vim-cpp-enhanced-highlight'

Plugin 'neoclide/coc.nvim', {'branch':'release'}

" Auto-Indentation Python
Plugin 'vim-scripts/indentpython.vim'

" Check Python Syntax
Plugin 'vim-syntastic/syntastic'

" Super Searching
Plugin 'kien/ctrlp.vim'

" tmux navigation
Plugin 'christoomey/vim-tmux-navigator'

" Nerd Commenting
Plugin 'scrooloose/nerdcommenter'

" Auto PEP8
Plugin 'tell-k/vim-autopep8'

" Markdown Preview
Plugin 'shime/vim-livedown'

" Markdown Pandoc
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'vim-pandoc/vim-pandoc-syntax'


" Color schemes
Plugin 'filfirst/Monota'
Plugin 'rakr/vim-one'
Plugin 'andreasvc/vim-256noir'

" Nim support
Plugin 'zah/nim.vim'

" Latex support
Plugin 'lervag/vimtex'

" VimWiki
Plugin 'vimwiki/vimwiki'

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

" ---------- General Settings ----------
set backspace=indent,eol,start

syntax enable

" Show line numbers
set number

" Highlight matching brace
set showmatch

" Highlight all search results
set hlsearch

" Highlight the current cursor line
set cursorline

" Highlight the 80 columns margin.
set colorcolumn=80

" Trim the trailing white space on save.
autocmd BufWritePre <buffer> :%s/\s\+$//e

" ---------- Indentation ----------
" Use spaces instead of tabs
set expandtab

" Number of spaces that a <TAB> in the file counts for
set tabstop=2

" Number of auto-indent spaces
set shiftwidth=2
set autoindent

" ---------- Folding ----------
set foldenable
set foldmethod=syntax

" Do not fold the code by default
set foldlevel=10000

" ---------- NerdTree Project Browser ----------
nnoremap <C-n> :NERDTreeToggle<CR>
let g:NERDTreeQuitOnOpen = 1
let g:NERDTreeMinimalMenu = 1


"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
"autocmd BufWritePost * NERDTreeFocus | execute 'normal R' | wincmd p

" ----------- Nerd Commenter ---------------
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDTrimTrailingWhitespace = 1


" ---------- Enhanced C++ syntax highlighting ----------
let g:cpp_class_scope_highlight=1
let g:cpp_concepts_highlight=1
let g:cpp_experimental_simple_template_highlight=1


" ---------- YCM Auto Complete ----------
nnoremap <F12> :YcmCompleter GoTo<CR>

"let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
let g:ycm_collect_identifiers_from_tags_files = 1

" ---------- Python Support -------------
au BufNewFile, BufRead *.py
    \ set tabstop=4|
    \ set softtabstop=4|
    \ set shiftwidth=4|
    \ set textwidth=79|
    \ set expandtab|
    \ set autoindent|
    \ set fileformat=unix|
    \ set encoding=utf-8|


" let python_highlight_all=1
" syntax on

" Ignore files in NERDTree
let NERDTreeIgnore=['\.pyc$', '\~$']

set clipboard=unnamed

" You Complete Me
" let g:ycm_autoclose_preview_window_after_completion=1
" map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Flag unnecessary whitespace
" au BufRead, BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/


" ----------- Syntastic ----------------

" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list=1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
let g:sytastic_python_checkers=['autopep8']

" ----------- Autopep8 ---------------

" let g:autopep8_ignore="E221"
" let g:autopep8_ignore="E402"
let g:autopep8_pep8_passes=150
let g:autopep8_max_line_length=79
let g:autopep8_aggressive=2
let g:autopep8_on_save=1
let g:autopep8_disable_show_diff=1

set termguicolors
set guicursor=
set signcolumn=yes
set cmdheight=2
set nobackup
set nowritebackup
set hidden

" --------- Vim Operator Flashy --------
map y <Plug>(operator-flashy)
nmap Y <Plug>(operator-flashy)$
"
" ---------- color scheme ----------
syntax on
" colorscheme Monokai
colorscheme one
set background=dark
"set background=light

" colorscheme 256_noir

" set cursorline
" highlight CursorLine cterm=NONE ctermfg=NONE ctermbg=233 guifg=NONE guibg=#121212
" autocmd InsertEnter * highlight CursorLine cterm=NONE ctermfg=NONE ctermbg=234 guifg=NONE guibg=#1c1c1c
" autocmd InsertLeave * highlight CursorLine cterm=NONE ctermfg=NONE ctermbg=233 guifg=NONE guibg=#121212

" let g:coc_bash_path = '/bin/bash'
let g:coc_node_path='/home/jeremy/src/node-v12.16.1-linux-x64/bin/node'

" ---------- Nim -----------
fun! JumpToDef()
  if exists("*GotoDefinition_" . &filetype)
    call GotoDefinition_{&filetype}()
  else
    exe "norm! \<C-]>"
  endif
endf

" Jump to tag
nn <M-g> :call JumpToDef()<cr>
ino <M-g> <esc>:call JumpToDef()<cr>i

au BufNewFile, BufRead *.nim
    \ set tabstop=2|
    \ set softtabstop=2|
    \ set shiftwidth=2|
    \ set textwidth=100|
    \ set expandtab|
    \ set autoindent|
    \ set fileformat=unix|
    \ set encoding=utf-8|


" ---------
let g:python3_host_prog="/usr/bin/python3"

"-------- Latex
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

"------ VimWiki
let g:vimwiki_list = [{'path': '~/programming/website/wiki/'}]

inoremap <tab> <c-v><tab>
