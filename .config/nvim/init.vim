set exrc " if vimrc in current dir execute it
set relativenumber
set nu " Show current line number
set scrolloff=8 " 8 lines before top/bottom to begin scroll
set hidden " keep edited buffers in bg
set noerrorbells " Turn noise on error off
set encoding=UTF-8

""" Tabs, columns
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap " Prevents wrapping of long lines
set colorcolumn=80
set signcolumn=yes " Gutter for errors/linting

""" Undo history
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile

""" Search
set incsearch
set nohlsearch " No highlight search

""" Folding
set foldmethod=indent   
set foldnestmax=10
set nofoldenable
set foldlevel=2

"""""" PLUGINS """"""
call plug#begin('~/.vim/plugged')


" Theme
Plug 'embark-theme/vim', { 'as': 'embark' }

" Fzf - Fuzzy file finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter' " Search up to parent git folder

" Stylers
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql'

" Better syntax highlighting
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" COC - Auto complete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = [
  \ 'coc-tsserver'
  \ ]
if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif

" Git integration
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Line indents
Plug 'Yggdroot/indentLine'

" Status line
Plug 'vim-airline/vim-airline'

" Visual File Directory
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin' |
            \ Plug 'ryanoasis/vim-devicons'

call plug#end()


"""""" THEME """"""
set termguicolors
colorscheme embark

"""""" REMAPS """""""
let mapleader = " "

" Insert blank lines
nnoremap <Enter> :call append(line('.'), '')<CR>
nnoremap <S-Enter> :call append(line('.')-1, '')<CR>

" Fuzzy search files
nnoremap <C-p> :Files<CR>

" esc in insert mode
inoremap jk <esc>

" esc in command mode
cnoremap jk <C-C>

" Use K for show documentation in preview window
nnoremap <silent> K :call CocAction('doHover')<CR>

"""""" AUTO-CMDS """""""
" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p

lua require'nvim-treesitter.configs'.setup { highlight = { enable = true } }
