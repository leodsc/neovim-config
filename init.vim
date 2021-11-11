set hidden
set number
set relativenumber
set showmatch
set autoindent
"set termguicolors

"plugins"
call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-commentary'
Plug 'terroo/vim-auto-markdown'
"Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'gcmt/taboo.vim'
Plug 'vim-airline/vim-airline-themes'
Plug 'dense-analysis/ale'
Plug 'airblade/vim-gitgutter'
Plug 'sheerun/vim-polyglot'
Plug 'ryanoasis/vim-devicons'
Plug 'joshdick/onedark.vim'
Plug 'tpope/vim-fugitive'
Plug 'alvan/vim-closetag'
call plug#end()
let g:airline_theme='deus'
let g:airline_section_b='%{strftime("%c")}'
"let g:airline_powerline_fonts = 1 
let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_left_sep = ''
let g:airline#extensions#tabline#buffer_nr_show = 1
"ale config
"let b:ale_fixers = {'javascript': ['eslint']}
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'
let g:closetag_filenames = '*.html,*.xhtml,*.xml,*.js,*.jsx,*.tsx,*.html.erb,*.md'
let g:closetag_xhtml_filenames = '*.js,*.jsx,*.tsx'

syntax on
colorscheme onedark

"mapping

inoremap jk <Esc>
"nnoremap <C-S> :split <CR>
"nnoremap <F5> :NERDTreeToggle <CR>
nnoremap <C-L> :bn <CR>
nnoremap <C-H> :bp <CR>
" map jk to escape
tnoremap jk <C-\><C-n>

"create new tab"
nnoremap <C-t> :tabnew <CR>

"move between split screens
tnoremap <A-j> :wincmd j <CR>
tnoremap <A-L> :wincmd l <CR>
tnoremap <A-h> :wincmd h <CR>
tnoremap <A-k> :wincmd k <CR>
tnoremap <A-c> :wincmd c <CR>
nmap <A-j> :wincmd j <CR>
nmap <A-l> :wincmd l <CR>
nmap <A-h> :wincmd h <CR>
nmap <A-k> :wincmd k <CR>
nmap <A-c> :wincmd c <CR>

"buffers"
"nmap bd :bd <CR>
"nmap bdd :bd! <CR>

"save and quit commands"
nmap ss :w <CR>
nmap qq :q <CR>

"auto closing 
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
