set laststatus=2
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab
so ~/.vim/plugins.vim
set nocompatible
set nobackup
set nowritebackup
set noswapfile
set wildmenu
set ruler
set hlsearch
set statusline+=%F
set incsearch
set showmatch
set smartindent
set autoindent
set nofoldenable
set t_Co=256
set foldmethod=indent
set clipboard=unnamed
set completeopt=menuone,longest
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
"let g:alduin_Shout_Become_Ethereal = 1
set number
set mouse+=a
syn on
set termguicolors
set linespace=3
set guifont=Fira\ Code:h12
set cursorline
"set cursorcolumn
let g:enable_italic_font = 1
let g:enable_bold_font = 1
let g:gruvbox_contrast_dark = 'hard'
let g:deoplete#enable_at_startup = 1
syntax enable
"colorscheme hybrid_reverse
colorscheme gruvbox
set background=dark
hi Normal guibg=black ctermbg=NONE
map <C-n> :NERDTreeToggle<CR>
let g:molokai_original = 1
set lazyredraw
set synmaxcol=180
set ttyfast
set termguicolors
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>
if has("autocmd")
  filetype plugin indent on
endif

autocmd FileType * highlight ExtraWhitespace ctermbg=red guibg=red
autocmd FileType * match Error /\s\+$/


" Syntastic Config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

" (Optional)Remove Info(Preview) window
set completeopt-=preview

" (Optional)Hide Info(Preview) window after completions
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

"" (Optional) Enable terraform plan to be include in filter
"let g:syntastic_terraform_tffilter_plan = 1
"
"" (Optional) Default: 0, enable(1)/disable(0) plugin's keymapping
"let g:terraform_completion_keys = 1
"
"" (Optional) Default: 1, enable(1)/disable(0) terraform module registry completion
"let g:terraform_registry_module_completion = 1


set runtimepath+=~/.vim/plugged/deoplete.nvim
let g:deoplete#enable_at_startup = 1

filetype plugin indent on
syntax enable

"----------------------------------------------------------
" Neovim's Python provider
"----------------------------------------------------------
let g:python_host_prog  = '/usr/bin/python'
let g:python3_host_prog = '/usr/bin/python3'


let g:deoplete#omni_patterns = {}

"call deoplete#custom#option('omni_patterns', {
"\ 'complete_method': 'omnifunc',
"\ 'terraform': '[^ *\t"{=$]\w*',
"\})

call deoplete#initialize()
