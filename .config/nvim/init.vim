"help key-notation"help key-notation""""""""""""""""""""""""""""""""
"   Usability
""""""""""""""""""""""""""""""""""
set mouse=a
set smarttab
set tabstop=4
set shiftwidth=4
set encoding=UTF-8
" use spaces instead of tabs
set expandtab

""""""""""""""""""""""""""""""""""
" Keybinds
""""""""""""""""""""""""""""""""""
nnoremap <silent> <C-k> :Commentary<CR>
nnoremap <silent> <C-v> :vsp<CR>
nnoremap <silent> <C-h> :sp<CR>
nnoremap <silent> <C-j> :tab ter<CR>

" NerdTree Keybinding
nnoremap <silent> <C-n> :NERDTree<CR>
nnoremap <silent> <C-t> :NERDTreeToggle<CR>
nnoremap <silent> <C-f> :NERDTreeFind<CR>
"""""""""""""""""""""""""""""""
"   Interface
""""""""""""""""""""""""""""""""""


" Line number settings
set number relativenumber
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave    * set relativenumber
    autocmd BufEnter,FocusLost,InsertEnter      * set norelativenumber
augroup end


" Make comments italic
highlight comment cterm=italic gui=italic


""""""""""""""""""""""""""""""""""
"   Plugins
""""""""""""""""""""""""""""""""""


call plug#begin()
    Plug 'arcticicestudio/nord-vim' 
    Plug 'Yggdroot/indentLine' " line indentation visualization
    Plug 'scrooloose/nerdtree' " side directory viewer
    Plug 'sheerun/vim-polyglot' " syntax hightlighting
    Plug 'dense-analysis/ale'
    Plug 'itchyny/lightline.vim'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'https://github.com/tpope/vim-commentary'
    Plug 'pangloss/vim-javascript'
    Plug 'mxw/vim-jsx' " jsx syntax hightlighting
    Plug 'jelera/vim-javascript-syntax' " javascript syntax hightlighting
    Plug 'tpope/vim-fugitive'
    Plug 'jiangmiao/auto-pairs'
    Plug 'ryanoasis/vim-devicons' " sidebar icon
    Plug 'catppuccin/nvim', {'as': 'catppuccin'}
call plug#end()

" --------- Lightline ----------
let g:lightline = {'colorscheme': 'catppuccin'}
""""""""""""""""""""""""""""""""""""""""""""""""""
"" --------- indentLine settings -------------------
let g:indentLine_showFirstLevelIndent=1
let g:indentLine_setColors=0
"""""""""""""""""""""""""""""""""""""""""""""""""""
"---------------- Color Scheme --------------------
let g:nord_underline_option = 'none'
let g:nord_italic = v:true
let g:nord_italic_comments = v:false
let g:nord_minimal_mode = v:false
let g:nord_alternate_backgrounds = v:false
let g:catppuccin_flavour = "mocha" " latte, frappe, macchiato, mocha

lua << EOF
require("catppuccin").setup()
EOF

colorscheme catppuccin
""""""""""""""""""""""""""""""""""""""""""""""""""
"------------ Enable indentation -----------------
filetype indent on
filetype plugin indent on
""""""""""""""""""""""""""""""""
"------------ Plugin settings -------------------
" NERDTree
"  Start NERDTree and put the cursor back in the other window.
" autocmd VimEnter * NERDTree | wincmd p 
" Open the existing NERDTree on each new tab.
" autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif
"""""""""""""""""""""""""""""""""""""""""""""""""

autocmd FileType json syntax match Comment +\/\/.\+$+
let g:ale_disable_lsp = 1
