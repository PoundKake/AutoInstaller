syntax enable 

"Sets:"
set background=dark
set number
set t_Co=256
set splitright
set splitbelow
set laststatus=2
set encoding=utf-8
set softtabstop=4
set cursorline
set showmatch
set showcmd
set autoindent
set ruler
set mouse=a
set hlsearch

"Commands:"
command ClearSearch let @/=""
syntax enable

"Sets: "
set background=dark
set number
set t_Co=256
set encoding=utf-8
set list
set listchars=tab:>_,space:_
hi SpecialKey ctermfg=darkgrey guifg=grey70
set cursorline
set showmatch
set showcmd
set ruler
set mouse=a
set hlsearch
set clipboard=unnamedplus

"Tabs:"
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set smartindent
set expandtab
