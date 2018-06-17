" ================ General Settings =================
set backspace=2
set number
syntax on

" ================ Indentation ======================
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

" Auto indent pasted text
nnoremap p p=`]<C-o>
nnoremap P P=`]<C-o>


" ================ VIM-PLUG =========================
"Start of vim-plug manager
call plug#begin()
	
  " Cool Plugins
  Plug 'scrooloose/nerdtree'
  Plug 'scrooloose/syntastic'
	Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'flazz/vim-colorschemes'
  Plug 'bling/vim-airline'

  " Tmux
  Plug 'tmux-plugins/vim-tmux'
  Plug 'christoomey/vim-tmux-navigator'

  " HTML
  Plug 'mattn/emmet-vim'

  " Javascript
  Plug 'pangloss/vim-javascript'

  " Syntaxes
  Plug 'hdima/python-syntax'

call plug#end()
"End vim-plug manager

" ================ NERDTree =========================
"Start NERDTree automaticaly on startup:
autocmd vimenter * NERDTree

"NERDTreeToggle Key Map:
nmap <F6> :NERDTreeToggle<CR>

"Close NERDTree if no file left:
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" =============== JSON PRETTIER ====================
command FormatJSON %!python -m json.tool

" =============== POWERLINE ========================
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup
