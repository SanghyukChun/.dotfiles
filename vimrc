" [Start] Setting from https://github.com/VundleVim/Vundle.vim
set nocompatible              " be iMproved, required
set backspace=2               " compatible with version 5.4 and earlier
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" personal setting for plugins 
Plugin 'kien/ctrlp.vim' " ctrlp, easy file finder
Plugin 'scrooloose/nerdcommenter' " nerdcommenter, easy comment/decomment
"Plugin 'scrooloose/syntastic' " syntastic, syntax checking plugin
Plugin 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }  " nerdtree, explore filesystem for vim
Plugin 'jistr/vim-nerdtree-tabs' " nerdtree-tabs, NERDTree and tabs together in Vim, painlessly
"if v:version > 703                 " youcompleteme requires Vim 7.3.598+
  "Plugin 'Valloric/YouCompleteMe'  " youcompleteme, fast, as-you-type, fuzzy-search code completion engine for Vim
"endif
"Plugin 'vim-scripts/taglist.vim' " taglist, source code browser plugin for Vim
"Plugin 'wesleyche/SrcExpl' " srcexpl, Source Explorer that provides context for the currently selected keyword
Plugin 'klen/python-mode' " python-mode
Plugin 'davidhalter/jedi-vim' " jedi-vim
Plugin 'fs111/pydoc.vim'  " pydoc
Plugin 'airblade/vim-gitgutter' " vim-gitgutter, shows a git diff
Plugin 'Xuyuanp/nerdtree-git-plugin' " nerdtree-git, git plugin for nerdtree
Plugin 'tpope/vim-fugitive' " vim-fugitive
" Plugin 'altercation/vim-colors-solarized'
Plugin 'flazz/vim-colorschemes'

" vim-airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
syntax on
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
" [End] Setting from https://github.com/VundleVim/Vundle.vim

" colorscheme solarized
set background=dark
" colorscheme Tomorrow-Night
" colorscheme minimalist
colorscheme PaperColor

" --- NERDTree Tabs Setting ----------------------------------------------------------------"
" NERDTree auto open
let g:nerdtree_tabs_open_on_gui_startup=1     " Open NERDTREE on gvim/macvim startup
let g:nerdtree_tabs_open_on_console_startup=1 " Open NERDTree on console vim startup
" ------------------------------------------------------------------------------------------"

" --- NERDTree Git Setting ----------------------------------------------------------------"
let g:NERDTreeIndicatorMapCustom = {
      \ "Modified"  : "~",
      \ "Staged"    : "+",
      \ "Untracked" : "u",
      \ "Renamed"   : "r",
      \ "Unmerged"  : "!",
      \ "Deleted"   : "-",
      \ "Dirty"     : "*",
      \ "Clean"     : "",
      \ "Unknown"   : "?"
      \ }
" ------------------------------------------------------------------------------------------"

" --- TagList Setting-----------------------------------------------------------------------"
"let Tlist_Use_Right_Window=1
"let Tlist_Auto_Open=1
"let Tlist_Enable_Fold_Column=0
"let Tlist_Compact_Format=0
"let Tlist_File_Fold_Auto_Close = 1
"nmap <LocalLeader>tt :Tlist<cr>
" ------------------------------------------------------------------------------------------"

" -----python-mode Setting----------------------------------------------------------------- "
set foldlevel=99
let g:pymode_options_colorcolumn = 0
let g:pymode_rope_complete_on_dot = 0
let g:pymode_lint_ignore = ["E501", "E402", "C901"]

let g:jedi#popup_on_dot = 0
let g:jedi#popup_select_first = 0
let g:jedi#use_splits_not_buffers = 'top'
" ------------------------------------------------------------------------------------------"

" -----git-fugitive Setting----------------------------------------------------------------- "
" other commands: 
"   - Gbrowse (open source in web)
"   - Gsplit (git horizontal split)
"   - Ggrep (git grep)
"   - Glog (git log)
ca gb Gblame
ca ge Gedit
ca gm Gmove
ca grm Gremove
ca gvs Gvsplit
ca revert Gread
ca add Gwrite
" use  - to add file at Gstatus!
ca st Gstatus
ca diff Gdiff
ca commit Gcommit
ca push Gpush
ca pull Gpull
" ------------------------------------------------------------------------------------------"


" --- Key Mapping Setting-------------------------------------------------------------------"
map <F2> :set nonumber!<CR>
map <F3> :set hlsearch!<CR>
nnoremap <silent> <F5> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>
map <F6> :NERDTreeTabsToggle<CR>
"map <F7> :TlistToggle<CR>
"map <F8> :SrcExplToggle<CR>
" ------------------------------------------------------------------------------------------"

set autoindent
set cindent " auto inden for C
set smartindent " set smart indent
set nobackup " do not create backup files
set ruler " show current cursor position
set number " show line number

set tabstop=4 " set tab as 2 spaces
set expandtab " use space instead of tab
set shiftwidth=4 " auto indent = 2 spaces

syntax enable " use syntax highlighter
set title " show title
set showmatch " show matched brackets
set hlsearch " highlighted searched results
set smartcase " sensitive case search
"set clipboard=unnamed " setting for MAC. for iterm2, enable Use modern parser (experimental) in preference > profile > terminal

set mouse=a " enable vim automatic visual mode using mouse " press shift for disable (e.g. for copy & paste)

set wildmenu
set wildignore=*.bak,*.o,*.e,*~
set completeopt-=preview

" use :tn as shortcut of :tabnew
ca tn tabnew
command! W w " use :W as save
