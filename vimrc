syntax on
"colorscheme desert
set nocompatible
set shiftwidth=4
set tabstop=4
set cursorline
set number
set nowrap
set backspace=indent,eol,start
set smarttab
set shiftround
set autoindent
set smartindent
set expandtab
set hls
set rnu
"set copyindent
"set preserveindent	
"set cindent
"set backup
"set backupdir=~/.vim/backup
set showmatch
set matchtime=2
"set mouse=a
filetype indent on
set incsearch
set scrolloff=5
set incsearch

"---------------- Keybinds------------------"
"Allow ada compilation (gnatmake) on make
"set makeprg=gnatmake\ %

"comment or uncomment ligne or selection with Alt+c
"map <c-c> :call EnhancedCommentify('no','guess')<CR>

"change tab with alt+j and alt+k
map <a-k> gt
map <a-j> gT

" To save, press ctrl-s.
nmap <c-s> :w<CR>
imap <c-s> <Esc>:w<CR>a

"pour compiler (commande :make) avec CTRL + m
"nmap <c-m> :wa<CR>:make<CR>
"nmap <CR> :wa<CR>:qtrun<CR>
"nmap <c-m> :w<CR>:!python3 "%"<CR>
"imap <c-w> <Esc>:w<CR>:make<CR>

"switch to the compilation error with 
"CTRL + n (next) and CTRL + N (previous) and CTR + c
nmap <c-n> :cn<CR>
nmap <c-N> :cp<CR>
"nmap <c-c> :cc<CR>

"remap control+p (completion de mot) par control+espace
imap <c-space> <c-p>

"Reindent current line with tab
vmap <tab> ==
nmap <tab> ==

" Copier dans le buffer de copie systeme
vmap <C-c> "+y
" Couper dans le buffer de copie systeme
vmap <C-x> "+x
" Coller depuis le buffer de copie systeme
map <C-p> "+gP

" Move selected lines with arrow up/down
vmap <c-Down> :m '>+1<CR>gv=gv
vmap <c-Up>   :m '<-2<CR>gv=gv

nmap n nzzzv
nmap N Nzzzv

vmap p "_dP

" Refactor in file symbol under cursor
"map <c-s-r> :%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>

" Remove highlight search results with space in normal mode
nmap <esc> :noh<return>

" Change word will only cw command instead of ciw
nmap cw ciw
nmap dw diw
nmap yw yiw
nmap vw viw

"nmap d dd
"nmap y yy

" add line with enter in normal mode
"nmap <CR> o

" bind ctrl+O/I to atl+left/right
map <a-left> <c-O>
map <a-right> <c-I>

" replace world with rw
nmap rw viwp

" Status line
set laststatus=2
set statusline+=%-3.3n\                      " buffer number
set statusline+=%f\                          " filename
set statusline+=%h%m%r%w                     " status flags
set statusline+=\[%{strlen(&ft)?&ft:'none'}] " file type
set statusline+=%=                           " right align remainder
set statusline+=0x%-8B                       " character value
set statusline+=%-14(%l,%c%V%)               " line, character
set statusline+=%<%P                         " file position

" fonctions persos
function Test()
   for i in range(tabpagenr())
      echo %f
   endfor
endfunction

if has("gui_running")                 " console Vim cannot set the font
   set lines=60
   set columns=100
   "winpos 0 0

   if has("gui_gtk2")            " GTK+2, not GTK+1
      set gfn=DejaVu\ Sans\ Mono\ 9
   elseif has("gui_gtk3")            " GTK3
      set gfn=DejaVu\ Sans\ Mono\ 9
   elseif has("gui_photon")      " Photon GUI
      set gfn=DejaVu\ Sans\ Mono:s9
   elseif has("x11")             " other X11 GUIs including GTK+1
      set gfn=-*-lucidatypewriter-medium-r-normal-*-*-100-*-*-m-*-*
   else                          " non-X11 GUIs including Windows
      set gfn=DejaVu\ Sans\ Mono\ 9
   endif
else
   "set background=dark
   colorscheme desert
endif
