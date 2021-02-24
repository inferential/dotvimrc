" Author:
" Inferential 
" https://github.com/inferential
"
" Description:
" Single .vimrc with minimal plugins installed.
" * Why Vim? 
" 	- Because it comes pre-installed on all GNU/Linux and Unix-like systems. 
" * Why a minimal .vimrc? 
" 	- To keep it fast, lightweight and easy to install on other systems, without sacrificing functionality.
" * How can I learn to use Vim?
" 	- https://people.csail.mit.edu/vgod/vim/vim-cheat-sheet-en.pdf
" 	- https://github.com/LeCoupa/awesome-cheatsheets/blob/master/tools/vim.txt
" 	- `$ vimtutor` in the terminal
" 	- https://vim.rtorr.com/ 
" 	- http://vim.wikia.com/wiki/
" 	- https://ddg.gg/ is your friend
" 
" 
" ## Inelegant installation:  
" ```bash
" #!/usr/bin/env zsh  
" echo "Clone Vim Code Dark theme" # I've had issues installing it through vim-plug  
" git clone https://github.com/tomasiser/vim-code-dark.git ~/.vim  
" echo "Install vim-plug to simplify the process"  
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim  
" echo "Create backup directory"
" mkdir -p .vim/backup
" ```  
" 
" 
" ## Plugins used:  
" * `vim-plug` https://github.com/junegunn/vim-plug "A minimalist Vim plugin manager"
" * `vim-code-dark` https://github.com/tomasiser/vim-code-dark "Dark color scheme for Vim and vim-airline, inspired by Dark+ in Visual Studio Code"
" * `base16-shell` https://github.com/chriskempson/base16-shell "Base16 for Shells https://github.com/chriskempson/base16"
" * `auto-pairs` https://github.com/jiangmiao/auto-pairs "Vim plugin, insert or delete brackets, parens, quotes in pair" 
" * `vim-endwise` https://github.com/tpope/vim-endwise "endwise.vim: wisely add 'end' in ruby, endfunction/endif/more in vim script, etc"
" * `syntastic`  https://github.com/vim-syntastic/syntastic "Syntax checking hacks for vim"
" * `tagbar` https://github.com/majutsushi/tagbar "Vim plugin that displays tags in a window, ordered by scope"  
" * `vimpyter` https://github.com/szymonmaszke/vimpyter "Edit your Jupyter notebooks in Vim/Neovim"
" * `surround.vim` https://github.com/tpope/vim-surround "Surround.vim is all about surroundings: parentheses, brackets, quotes, XML tags, and more. The plugin provides mappings to easily delete, change and add such surroundings in pairs." 
" * `Dockerfile.vim` https://github.com/ekalinin/Dockerfile.vim "Vim syntax file for Docker's Dockerfile and snippets for snipMate."  
" * `ctrlp.vim` https://github.com/ctrlpvim/ctrlp.vim "Active fork of kien/ctrlp.vim—Fuzzy file, buffer, mru, tag, etc finder."
" * `vim-airline` https://github.com/vim-airline/vim-airline "lean & mean status/tabline for vim that's light as air"
" !Disable this plug-in when using Deno + CoC! * `tabnine-vim` https://github.com/codota/tabnine-vim "This is the Vim client for TabNine, the all-language autocompleter."   
" * `coc-nvim` https://github.com/neoclide/coc.nvim "Make your Vim/Neovim as smart as VSCode."  
" * `vimspector` https://github.com/puremourning/vimspector "A multi language graphical debugger for Vim"   
" * `vim-autopep8` https://github.com/tell-k/vim-autopep8 "vim-autopep8 is a Vim plugin that applies autopep8 to your current file. autopep8 automatically formats Python code to conform to the PEP 8 style guide."
" * `markdown-preview.nvim` https://github.com/iamcco/markdown-preview.nvim " ✨ Markdown Preview for (Neo)vim ✨ "  
" * `vim-json` https://github.com/elzr/vim-json "Better JSON for VIM"  
" * `csv.vim` https://github.com/chrisbra/csv.vim "This plugin is used for handling column separated data with Vim."  
" * `julia-vim` https://github.com/JuliaEditorSupport/julia-vim "Julia support for Vim."
"
" ## Acknowledgements:   
" Peter Jang https://medium.com/actualize-network/how-to-learn-vim-a-four-week-plan-cd8b376a9b85  
" Benjamin A. Kuperman https://www.cs.oberlin.edu/~kuperman/help/vim/home.html  
" Alex Dzyoba https://alex.dzyoba.com/blog/vim-revamp/  
" Various authors (see Plugins)  
" 
" 
" ## Commands to remember:  
 " `<Ctrl-w / u>` = erase word / line  
" `<g Ctrl-g>` = word count  
" `:b <TAB>` = change buffer  
" `/` = search (`n` = next, `.` = prev)  
" `]s / [s` = next / previous misspelled word  
" `zg` = mark word as valid (add to dictionary)    
" `z=` - show spelling suggestions  
" `<Ctrl-x / k>` = dictionary completion   
" ` mk`     = mark current position (can use _a-z_)  
" `'k`      = move to mark _k_  
" `d'k`     = delete from current position to mark _k_  
" `'a-z`    = same file  
" `'A-Z`    = between files  
" `V=`  = select text, then reformat with _=_  
" `=`   = will correct alignment of code  
" `==`  = one line   
" `gq`  = reformat paragraph  
" select block, then `:fold`  
" `zo` = open  
" `zc` = close  
" `%y+` = _%_ to work on all lines, _y_  yank lines, _+_ copy to system clipboard  
" `Ctrl-w` then `j, k, l, h`` = split navigation up, down, right, left
" `gd` / `gD` = jump to local definition / global definition
" ` * ` = highlight all occurrences of word under cursor
" `za` = fold/unfold region
" `1 Ctrl-G` = Show the full path of first file being edited
" `* / #` = Jump to next / previous occurrence of word under the cursor
" `cp` = Copy the full path incl. the filename of the file currently being edited
" `zR` = Unfold all
" `zM` = Fold all
" `Ctrl-O` = go back to previous location
"""

" Set theme to codedark https://github.com/tomasiser/vim-code-dark
colorscheme codedark

" Spell checking
set spell spelllang=en_gb

" Required for vim to be iMproved
set nocompatible

" Syntax highlighting
syntax on

" GUI font size
set guifont=Monaco:h15

" Detect filetype
filetype indent plugin on

" Set file encoding to utf8
set fileencoding=utf8

" Line numbering
set number

" Highlight current line
set cursorline

" fold based on indent 
set foldmethod=indent
set foldnestmax=10
set foldenable

" Set leader key (default leader is \)
let mapleader = ","

"" keep backup
set backup
set swapfile
set backupdir=~/.vim/backup// " Where to store backups
set writebackup " Make backup before overwriting the current buffer
set backupcopy=yes " Overwrite the original backup file
au BufWritePre * let &bex = '@' . strftime("%F.%H:%M") " Meaningful backup name, ex: filename@2015-04-05.14:59
""

" show command in taskbar
set showcmd

" highlight matching parens
set showmatch

" Automatically reload file when changed
set autoread

" Backspace fix http://vim.wikia.com/wiki/Backspace_and_delete_problems
set backspace=indent,eol,start

"" Plugins 
call g:plug#begin()
  Plug 'chriskempson/base16-shell'
  Plug 'jiangmiao/auto-pairs' 
  Plug 'tpope/vim-endwise'
  Plug 'vim-syntastic/syntastic'
  Plug 'majutsushi/tagbar'
  Plug 'szymonmaszke/vimpyter' 
  Plug 'tpope/vim-surround'
  Plug 'ekalinin/Dockerfile.vim'
  Plug 'ctrlpvim/ctrlp.vim' 
  Plug 'vim-airline/vim-airline'
"  Plug 'zxqfl/tabnine-vim'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'puremourning/vimspector'
  Plug 'tell-k/vim-autopep8'
  Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
  Plug 'elzr/vim-json'
  Plug 'chrisbra/csv.vim'
  Plug 'JuliaEditorSupport/julia-vim'
call g:plug#end()
"" Plugins

"" Syntastic settings https://github.com/vim-syntastic/syntastic#settings
" Close warning pane with :SyntasticReset
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0 " Change to 1 for automatic check (Warning: slows down start-up).
" Disable automatic syntax checking 
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
nnoremap <F6> :SyntasticCheck<CR> :SyntasticToggleMode<CR>
" Manually checking syntax
let g:syntastic_check_on_wq = 0 
"" Syntastic

"" Using netrw for directory browsing, instead of NERDTree https://shapeshed.com/vim-netrw/
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
nmap <F7> :Vexplore<CR>
" Automatically open side pane (Warning: decreases pane space). 
"augroup ProjectDrawer
"  autocmd!
"  autocmd VimEnter * :Vexplore
"augroup END
" Close side pane with :close
""

" Toggle Tagbar with F8 https://github.com/majutsushi/tagbar 
nmap <F8> :TagbarToggle<CR>

"" Vimpyter
let g:vimpyter_color = 1
autocmd Filetype ipynb nmap <silent><Leader>b :VimpyterInsertPythonBlock<CR>
autocmd Filetype ipynb nmap <silent><Leader>j :VimpyterStartJupyter<CR>
autocmd Filetype ipynb nmap <silent><Leader>n :VimpyterStartNteract<CR>
"" Vimpyter

"" markdown-preview.nvim
let g:mkdp_auto_start = 0
let g:mkdp_echo_preview_url = 1
"" markdown-preview.nvim

" Bracket matching  https://superuser.com/questions/205038/vim-highlight-color-parentheses
autocmd BufRead,BufNewFile * syn match parens /[(){}]/ | hi parens ctermfg=blue 

" Enable mouse
set mouse+=a

" Copy to clipboard (requires +clipboard)
set clipboard=unnamed
vnoremap <C-C> :w !xclip -i -sel c<CR><CR>

" Search into subfolders, enable file tab-completion
set path=.,,**

" Copy the full path incl. the filename of the file currently being edited
nmap cp :let @" = expand("%:p")<cr>

" Display all matching files when tab-complete
set wildmenu

"" Use case insensitive search except when using capital letters
set ignorecase
set smartcase
""

"" Highlight search
set hlsearch
" Toggle highlight search using F3
nnoremap <F3> :set hlsearch!<CR> 
""


"" Python:
" enable all Python syntax highlighting features
let python_highlight_all = 1
" 4-space wide tab
set tabstop=8
" Convert TABs to spaces
set expandtab
" Tab key indents by four spaces
set softtabstop=4
" Sets the width for autoindents
set shiftwidth=4
" Enable intelligent tabbing and spacing for indentation and alignment
set smarttab
" Autoindent and smartindent
" In Insert mode, Ctrl+t / Ctrl+d (indent forward / backward)
" In Visual mode > or < (repeat with .)
set autoindent
set smartindent
" Margins and text
set wrap linebreak nolist
" Don't indent arbitrarily when pasting with the mouse
set pastetoggle=<F5>
" Line numbers
set number
" Enable Python omnicomplete (Requires vim compiled with +python)
autocmd FileType python set omnifunc=pythoncomplete#Complete
""

"" Highlight duplicate entries https://stackoverflow.com/questions/1268032/how-can-i-mark-highlight-duplicate-lines-in-vi-editor and add a shortcut in .vimrc https://stackoverflow.com/questions/18916929/setting-a-keyboard-shortcut-for-a-vim-command
" :nnoremap <C-r> :syn clear Repeat | g/^\(.*\)\n\ze\%(.*\n\)*\1$/exe 'syn match Repeat "^' . escape(getline('.'), '".\^$*[]') . '$"' | nohlsearch<CR>

