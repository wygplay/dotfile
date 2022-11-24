function! Cond(cond, ...)
  let opts = get(a:000, 0, {})
  return a:cond ? opts : extend(opts, { 'on': [], 'for': [] })
endfunction

call plug#begin()
" use normal easymotion when in VIM mode
Plug 'easymotion/vim-easymotion', Cond(!exists('g:vscode'))
" use VSCode easymotion when in VSCode mode
Plug 'asvetliakov/vim-easymotion', Cond(exists('g:vscode'), { 'as': 'vsc-easymotion' })
Plug 'lilydjwg/fcitx.vim', Cond(!exists('g:win'), {'branch': 'fcitx4'})
Plug 'Leiyi548/vim-im-select', Cond(exists('g:win'))
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-surround'
Plug 'terryma/vim-multiple-cursors'
call plug#end()


" 设置主题, 保证gruvbox在插件加载完成之后配置，否则会报警告
"autocmd vimenter * ++nested colorscheme gruvbox
colorscheme gruvbox
set bg=dark
