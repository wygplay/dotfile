call plug#begin()
Plug 'easymotion/vim-easymotion'
Plug 'lilydjwg/fcitx.vim', {'branch': 'fcitx4'}
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'morhetz/gruvbox'
call plug#end()


" 设置主题, 保证gruvbox在插件加载完成之后配置，否则会报警告
"autocmd vimenter * ++nested colorscheme gruvbox
colorscheme gruvbox
set bg=dark
