set hidden
set number
set relativenumber
set showmatch
"set autoindent
set encoding=utf-8
set termguicolors

call plug#begin()
"vim airline
Plug 'vim-airline/vim-airline'
"create commentarys
Plug 'tpope/vim-commentary'
" Plug 'terroo/vim-auto-markdown'
"Plug 'scrooloose/nerdtree'
"substitute text between any two caracters
Plug 'tpope/vim-surround'
" Plug 'gcmt/taboo.vim'
"airline theme
Plug 'vim-airline/vim-airline-themes'
"vim linter
Plug 'dense-analysis/ale'
"shows difference in git versions
" Plug 'airblade/vim-gitgutter'
"syntax check
" Plug 'sheerun/vim-polyglot'
"vim theme
Plug 'joshdick/onedark.vim'
"git wrapper
" Plug 'tpope/vim-fugitive'
"auto close tag
"Plug 'alvan/vim-closetag'
"linter for javascript
Plug 'eslint/eslint'
"auto close brackets
Plug 'jiangmiao/auto-pairs'
"icons for vim
Plug 'ryanoasis/vim-devicons'
"Plug 'iamcco/markdown-preview.nvim'
"live server for static html files
"Plug 'turbio/bracey.vim', {'do': 'npm install --prefix server'}
"emmet (HTMT, CSS)
Plug 'mattn/emmet-vim'
let g:user_emmet_leader_key = ','
"auto completion for html and css
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

"work time tracker
Plug 'wakatime/vim-wakatime'
" Plug 'othree/yajs.vim'
" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', {
    \ 'do': 'yarn install --frozen-lockfile --production',
    \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }

call plug#end()
let g:airline_theme='deus'
let g:airline_section_b='%{strftime("%c")}'
let g:airline_powerline_fonts = 1 
let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#buffer_nr_show = 1


"ale config
let b:ale_fixers = {'javascript': ['prettier', 'eslint']}
let b:ale_linters = ['eslint']
let g:ale_completion_enabled = 1
let g:ale_sign_error = '◉'
let g:ale_sign_warning = '◉'
highlight! ALESignColumnWithErrors ctermfg=0 ctermbg=8 guifg=#A5A5A5 guibg=#F5F5F5
highlight! ALESignColumnWithoutErrors ctermfg=0 ctermbg=0 guifg=#A5A5A5 guibg=#F5F5F5
let g:closetag_filenames = '*.html,*.xhtml,*.xml,*.js,*.jsx,*.tsx,*.html.erb,*.md'
let g:closetag_xhtml_filenames = '*.js,*.jsx,*.tsx'

let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0
let g:prettier#autoformat_config_files = ['.js', '.html', '.css']

let g:bracey_refresh_on_save = 1
let g:bracey_auto_start_browser = 1

"syntax highlight config
"onedark.vi override: Set a custom background color in the terminal

if (has("autocmd") && !has("gui_running"))
  augroup colors
    autocmd!
    let s:red = { "gui": "#E06C75", "cterm": "235", "cterm16": "0" }
    autocmd ColorScheme * call onedark#set_highlight("jsObjectProp", { "fg": s:red}) "No `fg` setting
  augroup END
endif

syntax on
colorscheme onedark

"mapping

inoremap jk <Esc>
" map jk to 'escape' in terminal mode
tnoremap jk <C-\><C-n>

nnoremap <C-L> :bn <CR>
nnoremap <C-H> :bp <CR>
"nnoremap <Space> g <bar> c <bar> c 
nnoremap <C-s> V <bar> y <bar> jk
inoremap log console.log()<left>

:command S :split

nnoremap ; :
vnoremap ; :
nnoremap <C-q> A;<Esc>
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

nnoremap <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

"Paste to command mode while in insert mode
inoremap <C-v> <C-o>:<C-r>+

