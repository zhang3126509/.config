let mapleader=" "
let g:lightline = {
			\ 'colorscheme': 'snazzy',
			\ }





set relativenumber
set cursorline
set wrap
set showcmd
set wildmenu
set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase
set nu
set scrolloff=8




set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set encoding=utf-8
let &t_ut=''
set list
set listchars=tab:▸\ ,trail:▫
set tabstop=4
set shiftwidth=4
set softtabstop=4
set scrolloff=5
set tw=0
set indentexpr=
set backspace=indent,eol,start
set foldmethod=indent
set foldlevel=99
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
set laststatus=2
syntax on
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif














map Q :q!<CR>
map S :w<CR>
map W :wq<CR>
map s <nop>
map X :source $MYVIMRC<CR>
map = <C-v>

noremap I 5k
noremap K 5j
noremap J 5h
noremap L 5l
noremap H I
noremap h i




noremap <LEADER>i :set nosplitbelow<CR>:split<CR>
noremap <LEADER>k :set splitbelow<CR>:split<CR>
noremap <LEADER>l :set splitright<CR>:vsplit<CR>
noremap <LEADER>j :set nosplitright<CR>:vsp;it<CR>


map <LEADER>K <C-w>j
map <LEADER>I <C-w>k
map <LEADER>J <C-w>h
map <LEADER>L <C-w>l


map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>



map ti :tabe<CR>
map tj :-tabnext<CR>
map tl :+tabnext<CR>

noremap i k
noremap k j
noremap j h



call plug#begin('~/.config/nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'connorholyday/vim-snazzy'



"File navigation
 Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
 Plug 'Xuyuanp/nerdtree-git-plugin'

 " Taglist
 Plug 'majutsushi/tagbar', { 'on': 'TagbarOpenAutoClose' }

 " Error checking
 Plug 'w0rp/ale'

" " Auto Complete
" Plug 'Valloric/YouCompleteMe'
" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

 " Undo Tree
 Plug 'mbbill/undotree/'

 " Other visual enhancement
 Plug 'nathanaelkane/vim-indent-guides'
 Plug 'itchyny/vim-cursorword'

 " Git
 Plug 'rhysd/conflict-marker.vim'
 Plug 'tpope/vim-fugitive'
 Plug 'mhinz/vim-signify'
 Plug 'gisphm/vim-gitignore', { 'for': ['gitignore', 'vim-plug'] }

 " HTML, CSS, JavaScript, PHP, JSON, etc.
 Plug 'elzr/vim-json'
 Plug 'hail2u/vim-css3-syntax'
 Plug 'spf13/PIV', { 'for' :['php', 'vim-plug'] }
 Plug 'gko/vim-coloresque', { 'for': ['vim-plug', 'php', 'html','javascript', 'css', 'less'] }
 Plug 'pangloss/vim-javascript', { 'for' :['javascript', 'vim-plug'] }
 Plug 'mattn/emmet-vim'

 " Python
 Plug 'vim-scripts/indentpython.vim'

 " Markdown
 Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install_sync()}, 'for' :['markdown', 'vim-plug'] }
 Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }
 Plug 'vimwiki/vimwiki'

 " Bookmarks
 Plug 'kshenoy/vim-signature'

 " Other useful utilities
 Plug 'terryma/vim-multiple-cursors'
 Plug 'junegunn/goyo.vim' " distraction free writing mode
 Plug 'tpope/vim-surround' " type ysks' to wrap the word with '' or type cs'`to change 'word' to `word`
 Plug 'godlygeek/tabular' " type ;Tabularize /= to align the =
 Plug 'gcmt/wildfire.vim' " in Visual mode, type i' to select all text in '', or type i) i] i} ip
 Plug 'scrooloose/nerdcommenter' " in <space>cc to comment a line

 " Dependencies
 Plug 'MarcWeber/vim-addon-mw-utils'
 Plug 'kana/vim-textobj-user'
 Plug 'fadein/vim-FIGlet'
call plug#end()




let g:SnazzyTransparent = 1
 " ===
 " === NERDTree
 " ===
 map tt :NERDTreeToggle<CR>
 let NERDTreeMapOpenExpl = ""
 let NERDTreeMapUpdir = ""
 let NERDTreeMapUpdirKeepOpen = "l"
 let NERDTreeMapOpenSplit = ""
 let NERDTreeOpenVSplit = ""
 let NERDTreeMapActivateNode = "i"
 let NERDTreeMapOpenInTab = "o"
 let NERDTreeMapPreview = ""
 let NERDTreeMapCloseDir = "n"
 let NERDTreeMapChangeRoot = "y"




  " == NERDTree-git
  " ==
  let g:NERDTreeIndicatorMapCustom = {
      \ "Modified"  : "✹",
	  \ "Staged"    : "✚",
	  \ "Untracked" : "✭",
	  \ "Renamed"   : "➜",
	  \ "Unmerged"  : "═",
	  \ "Deleted"   : "✖",
	  \ "Dirty"     : "✗",
	  \ "Clean"     : "✔︎",
	  \ "Unknown"   : "?"
	  \ }



  " ===
  " === You Complete ME 需要到plugged 安装
  " ===
  nnoremap gd :YcmCompleter GoToDefinitionElseDeclaration<CR>
  nnoremap g/ :YcmCompleter GetDoc<CR>
  nnoremap gt :YcmCompleter GetType<CR>
  nnoremap gr :YcmCompleter GoToReferences<CR>
  let g:ycm_autoclose_preview_window_after_completion=0
  let g:ycm_autoclose_preview_window_after_insertion=1
  let g:ycm_use_clangd = 0
  let g:ycm_python_interpreter_path = "/usr/bin/python3" 
  let g:ycm_python_binary_path = "usr/bin/python3"
 " 上两行需要添加python3路径
  


  " ===
   " === ale
   " ===
   let b:ale_linters = ['pylint']
   let b:ale_fixers = ['autopep8', 'yapf']
  
  
   " ===
   " === Taglist
   " ===
   map <silent> T :TagbarOpenAutoClose<CR>
  
  
   " ===
   " === MarkdownPreview
   " ===
   let g:mkdp_auto_start = 0
   let g:mkdp_auto_close = 1
   let g:mkdp_refresh_slow = 0
   let g:mkdp_command_for_global = 0
   let g:mkdp_open_to_the_world = 0
   let g:mkdp_open_ip = ''
   let g:mkdp_browser = 'chromium'
   let g:mkdp_echo_preview_url = 0
   let g:mkdp_browserfunc = ''
   let g:mkdp_preview_options = {
       \ 'mkit': {},
	   \ 'katex': {},
	   \ 'uml': {},
	   \ 'maid': {},
	   \ 'disable_sync_scroll': 0,
	   \ 'sync_scroll_type': 'middle',
	   \ 'hide_yaml_meta': 1
	   \ }
   let g:mkdp_markdown_css = ''
   let g:mkdp_highlight_css = ''
   let g:mkdp_port = ''
   let g:mkdp_page_title = '「${name}」'
  




" ===
" === vim-table-mode
" ===
map <LEADER>tm :TableModeToggle<CR>

" ===
" === Python-syntax
" ===
let g:python_highlight_all = 1
" let g:python_slow_sync = 0


" ===
" === vim-indent-guide
" ===
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 2
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_color_change_percent = 1
silent! unmap <LEADER>ig
autocmd WinEnter * silent! unmap <LEADER>ig


" ===
" === Goyo
" ===
map <LEADER>gy :Goyo<CR>




" ===
 " === vim-signiture
 " ===
 let g:SignatureMap = {
         \ 'Leader'             :  "m",
		 \ 'PlaceNextMark'      :  "m,",
		 \ 'ToggleMarkAtLine'   :  "m.",
		 \ 'PurgeMarksAtLine'   :  "dm-",
		 \ 'DeleteMark'         :  "dm",
		 \ 'PurgeMarks'         :  "dm/",
		 \ 'PurgeMarkers'       :  "dm?",
		 \'GotoNextLineAlpha'   :  "m<LEADER>",
		 \'GotoPrevLineAlpha'   :  "",
		 \ 'GotoNextSpotAlpha'  :  "m<LEADER>",
		 \ 'GotoPrevSpotAlpha'  :  "",
		 \ 'GotoNextLineByPos'  :  "",
		 \ 'GotoPrevLineByPos'  :  "",
		 \ 'GotoNextSpotByPos'  :  "mn",
		 \ 'GotoPrevSpotByPos'  :  "mp",
		 \ 'GotoNextMarker'     :  "",
		 \ 'GotoPrevMarker'     :  "",
		 \ 'GotoNextMarkerAny'  :  "",
		 \ 'GotoPrevMarkerAny'  :  "",
		 \ 'ListLocalMarks'     :  "m/",
		 \ 'ListLocalMarkers'   :  "m?"
		 \ }



" ===
" === Undotree
" ===
let g:undotree_DiffAutoOpen = 0
map L :UndotreeToggle<CR>

" ===
" ===  coc 
" ===
" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=100
" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

