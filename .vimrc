" ---------- General Settings ----------
set encoding=utf-8
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

" Highlight the 80 column margin.
" Highlight the 120 margin for black.
set colorcolumn=80,99,120

" Trim the trailing white space on save.
" autocmd BufWritePre <buffer> :%s/\s\+$//e

" ---------- Indentation ----------
" Use spaces instead of tabs
set expandtab

" Number of spaces that a <TAB> in the file counts for
set tabstop=4

" Number of auto-indent spaces
set shiftwidth=4
set autoindent

" ---------- Folding ----------
set foldenable
set foldmethod=syntax

" Do not fold the code by default
set foldlevel=10000

set termguicolors
set guicursor=
set signcolumn=yes
set cmdheight=2
set nobackup
set nowritebackup
set hidden

" F3: Toggle list (display unprintable characters).
nnoremap <F3> :set list!<CR>
set listchars=space:\.

set nocompatible              " be iMproved, required
"filetype off                  " required

" -------- vim-plug --------

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" Flash yanked area
Plug 'kana/vim-operator-user'
Plug 'haya14busa/vim-operator-flashy'

" better JSON for Vim
Plug 'elzr/vim-json'

" fugitive.vim: A Git wrapper so awesome, it should be illegal
Plug 'tpope/vim-fugitive'

" The monokai color scheme.
Plug 'filfirst/Monota'

" The falcon theme
Plug 'fenetikm/falcon'

" Everforest theme
Plug 'sainnhe/everforest'

" material theme
Plug 'marko-cerovac/material.nvim'

" The project source tree browser.
Plug 'scrooloose/nerdtree'

" A light and configurable statusline/tabline plugin for Vim
" Plug 'itchyny/lightline.vim'

Plug 'nvim-lualine/lualine.nvim'

" The enhanced C++ syntax highlighting.
Plug 'octol/vim-cpp-enhanced-highlight'

" Plug 'neoclide/coc.nvim', {'branch':'release'}

" Check Python Syntax
Plug 'vim-syntastic/syntastic'

" Super Searching
Plug 'kien/ctrlp.vim'

" tmux navigation
Plug 'christoomey/vim-tmux-navigator'

" Nerd Commenting
Plug 'scrooloose/nerdcommenter'

" VimWiki
Plug 'vimwiki/vimwiki'

" Auto PEP8
" Plug 'tell-k/vim-autopep8'

" Python Black
Plug 'psf/black', {'branch':'stable'}

" PEP 8 checking
Plug 'nvie/vim-flake8'

" Python Autocompletion
Plug 'davidhalter/jedi-vim'

" Python Indent
Plug 'https://github.com/vim-scripts/indentpython.vim'

" Markdown Preview
Plug 'shime/vim-livedown'

" Markdown Pandoc
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'

" Latex Support
" Plug 'lervag/vimtex'
" Plug 'sirver/ultisnips'

" Pylint support
Plug 'gryf/pylint-vim'

" Copilot Support
Plug 'github/copilot.vim'

Plug 'kovetskiy/vim-bash'

" Nightfox Theme
Plug 'EdenEast/nightfox.nvim'

" Moonfly Theme
Plug 'https://github.com/bluz71/vim-moonfly-colors'

" Kanagawa Theme
Plug 'https://github.com/rebelot/kanagawa.nvim'

" Better syntax-highlighting for filetypes in vim
Plug 'sheerun/vim-polyglot'

"Tree-sitter support
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Python Docstring
Plug 'https://github.com/pixelneo/vim-python-docstring'

" Semantic Highlighting
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}

" All of your Plugs must be added before the following line
call plug#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"

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


" ----------- Syntastic ----------------

" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" Disable pymode
let g:pymode_lint_on_write=0

" let g:syntastic_always_populate_loc_list=1
" let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" let g:syntastic_python_checkers=['autopep8'] ", 'pylint']
let g:syntastic_python_python_exec='python3'
let g:syntastic_python_checkers=['flake8']
let g:syntastic_python_flake8_args = '--ignore=W503,E203,E501,E402'
" let g:syntastic_python_checkers=['black']

" ----------- Autopep8 ---------------

" let g:autopep8_ignore="E221"
" let g:autopep8_ignore="E402"
" let g:autopep8_max_line_length=79
" let g:autopep8_aggressive=1
" let g:autopep8_on_save=1
" let g:autopep8_disable_show_diff=1

" ----------- Black ---------------
"  Run Black when saving python files
" autocmd BufWritePre *.py execute ':Black'
let g:black_linelength=99

" --------- Vim Operator Flashy --------
map y <Plug>(operator-flashy)
nmap Y <Plug>(operator-flashy)$

" -------- Lightline ---------
" let g:lightline = {
      " \ 'colorscheme': 'one',
      " \ 'active': {
      " \   'left': [ [ 'mode', 'paste' ],
      " \             [ 'gitbranch', 'readonly', 'realpath', 'modified' ] ]
      " \ },
      " \ 'component_function': {
      " \   'gitbranch': 'FugitiveHead',
      " \   'fileformat': 'LightlineFileformat',
      " \   'filetype': 'LightlineFiletype',
      " \ },
      " \ }

" function! LightlineFileformat()
  " return winwidth(0) > 70 ? &fileformat : ''
" endfunction

" function! LightlineFiletype()
  " return winwidth(0) > 70 ? (&filetype !=# '' ? &filetype : 'no ft') : ''
" endfunction

" ------- Latex -------
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'
let g:vimtext_compiler_progname = 'nvr'

let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

if has('nvim')
    setlocal spell spelllang=en_us,de_ch
endif
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

" -------- CoC ----------

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use <c-space> to trigger completion.
" if has('nvim')
  " inoremap <silent><expr> <c-space> coc#refresh()
" else
  " inoremap <silent><expr> <c-@> coc#refresh()
" endif

" Disable for Python files
autocmd BufNew,BufEnter *.py execute "silent! CocDisable"

" ------ Copilot -------
:echo "Filetype" &filetype
if &filetype == "markdown" || &filetype == "text" || &filetype == "vimrc"
  imap <silent><script><expr> <c-right> copilot#Accept("\<CR>")
  " inoremap <silent><script><expr> <S-Space> copilot#Accept("\<CR>")
  let g:copilot_no_tab_map = v:true
endif

" ------ General -------
" Flag unnecessary whitespace
au BufRead, BufNewFile *.py,*.pyw,*.c,*.h,*.cpp,*.hpp match BadWhitespace /\s\+$/

" ------ Lualine -------

if has('nvim')
lua << END
require('lualine').setup {
  options = { theme = 'ayu_dark'},
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'filename'},
    lualine_c = {'branch'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactivate_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {}
  },
}
END
endif

" ########## Themes ############
" ---------- Monokai color scheme ----------
" syntax on
" colorscheme Monota

" ---------- Falcon -----------
" colorscheme falcon

" let g:falcon_lightline = 1
" let g:lightline.colorscheme = 'falcon'

" ---------- Tokyo Night -----------
"
" colorscheme tokyonight
"
" ---------- Nightfox -----------
if has('nvim')
    colorscheme nightfox
    let g:lightline = {'colorscheme': 'nightfox'}
else
    colorscheme Monota
endif

" ---------- Moonfly -----------
"
" colorscheme moonfly

" ---------- Kanagawa -----------
"
if has('nvim')
    colorscheme kanagawa-dragon
    let g:lightline = {'colorscheme': 'kanagawa-dragon'}
else
    colorscheme Monota
endif
" ---------- Material -----------
"Vim-Script:
" let g:material_style = 'deep ocean' " darker, lighter, oceanic, palenight, deep ocean

" colorscheme material
"

" ---------- Everforest -----------
" set background=dark " dark or light
" let g:everforest_background = 'hard' "hard, medium, soft
" let g:lightline = {'colorscheme' : 'everforest'}
" let g:everforest_enable_italic = 1
" let g:everforest_disable_italic_comment = 1
" colorscheme everforest
