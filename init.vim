call plug#begin()


Plug 'Heliferepo/VimTek'
Plug 'Heliferepo/VimUtils'
Plug 'preservim/nerdtree'
Plug 'frazrepo/vim-rainbow'
Plug 'itchyny/lightline.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'morhetz/gruvbox'
Plug 'skywind3000/vim-quickui'
Plug 'rhysd/vim-clang-format'
Plug 'sonph/onehalf', {'rtp':'vim'}
Plug 'github/copilot.vim'

call plug#end()

set tabstop=4
set shiftwidth=4
set expandtab
let g:rainbow_active = 1

let g:lightline = {
	\ 'colorscheme': 'default',
	\ }

set number
set relativenumber

let mapleader = " "

set noswapfile

set nowrap


let g:quickui_show_tip = 2

let g:quickui_border_style = 2

noremap <silent><leader><leader> :call quickui#menu#open()<CR>
nnoremap <leader>sh :call quickui#terminal#open('zsh', opts)<CR>

function! TermExit(code)
	echom "terminal exit code: ". a:code
endfunction

let opts = {'w':80, 'h':35, 'callback':'TermExit'}

let opts.title = 'Zsh'

iab retrun return
iab flase false

call quickui#menu#install('&File', [
            \ [ "&Open New File\tCurrent(:Explore)", 'Explore' ],
            \ [ "&Open New File\tVertical(:Vexplore)", 'Vexplore' ],
            \ [ "&Open New File\tHorizontal(:Sexplore)", 'Sexplore' ],
            \ [ "--", '' ],
            \ [ "&UndoTree\t:UndotreeShow", 'UndotreeShow' ],
            \ [ "&Indent file\tmagg=`a", 'call feedkeys("magg=G`a")' ],
            \ [ "&Trailing Spaces Remover\t:call CleanExtraSpaces()", 'call CleanExtraSpaces() | echo "Rest in peace now"' ],
            \ [ "--", '' ],
            \ [ "&Save\t:w", 'w' ],
            \ [ "&Save and quit\t:wq", 'wq' ],
            \ [ "--", '' ],
            \ [ "&Exit\t:q", 'q' ],
            \ [ "&Force exit\t:q!", 'q!' ],
            \ ])

call quickui#menu#install('&Terminal', [
            \ [ "&Terminal (Zsh Popup)\t<leader>sh", 'call feedkeys("\<space>sh")' ],
            \ [ "&Terminal (Built in)\t:terminal", 'terminal' ],
            \ ])


let g:context_menu_k = [
            \ ["&Peek Definition", 'call quickui#tools#preview_tag("")'],
            \ ["--", '' ],
            \ ["&Indent file\tmagg=G`a", 'call feedkeys("magg=G`a")' ],
            \ ["&Trailing Spaces Remover\tCleanExtraSpaces", 'call CleanExtraSpaces() | echo "Rest in peace now"' ],
            \ ["--", '' ],
            \ ["&Highlight search\tset hlsearch", 'set hlsearch' ],
            \ ["&NoHighlight search\tset nohlsearch", 'set nohlsearch' ],
            \ ]

let g:clang_format#code_style = "google"

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>

nnoremap <leader><silent>f :Clangformat<CR>

nnoremap <leader>o :NERDTree<CR>
nnoremap <leader>O :NERDTreeClose<CR>

colorscheme gruvbox

let g:solarized_termcolors=256
