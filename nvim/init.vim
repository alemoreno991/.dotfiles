set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

set relativenumber
set nu
set nohlsearch
set hidden
set noerrorbells
set nowrap
set noswapfile
set nobackup
set nowritebackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set scrolloff=8
set colorcolumn=80
set signcolumn=yes
set mouse=a

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Install vim-plug if not found
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Intellisense-like pluggin
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " telescope requirements...
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-telescope/telescope-fzy-native.nvim'

    Plug 'vim-conf-live/vimconflive2021-colorscheme'
    Plug 'flazz/vim-colorschemes'
    Plug 'chriskempson/base16-vim'

    Plug 'gruvbox-community/gruvbox'

    Plug 'neovim/nvim-lspconfig'
    Plug 'glepnir/lspsaga.nvim', { 'branch': 'main' }

    " Neovim Tree shitter
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'nvim-treesitter/playground'
    Plug 'romgrk/nvim-treesitter-context'

    Plug 'vim-airline/vim-airline'

    " Git
    Plug 'tpope/vim-fugitive'
    Plug 'airblade/vim-gitgutter'
call plug#end()

set background=dark
colorscheme gruvbox
highlight Normal guibg=none

fun! TrimWhiteSpace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup THE_PRIMIGEAN
    autocmd!
    autocmd BufWritePre * :call TrimWhiteSpace()
augroup END

" coc config
let g:coc_global_extensions = [
    \ 'coc-snippets',
    \ 'coc-pairs',
    \ 'coc-tsserver',
    \ 'coc-eslint',
    \ 'coc-prettier',
    \ 'coc-highlight',
    \ 'coc-json',
    \ 'coc-clangd',
    \ 'coc-clang-format-style-options',
    \ 'coc-cmake',
    \ 'coc-docker',
    \ 'coc-emmet',
    \ 'coc-git',
    \ 'coc-pyright',
    \ 'coc-julia',
    \ 'coc-ltex',
    \ 'coc-markdownlint',
    \ 'coc-markdown-preview-enhanced',
    \ 'coc-pydocstring',
    \ 'coc-sh',
    \ 'coc-texlab',
\ ]


" use <c-space>for trigger completion
inoremap <silent><expr> <c-space> coc#refresh()

" use <tab> and <S-tab> to navigate the autocompletion list
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" use <cr> to select the first autocompletion item and confirm the completion
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

nnoremap <A-Up> :m .-2<CR>==
nnoremap <A-Down> :m .+1<CR>==
