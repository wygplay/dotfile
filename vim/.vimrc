" 全局变量
if has('wsl') || has('win') || has('win32') || has('win64')
    let g:win = 1
endif
" 配置信息入口 
for f in split(glob('$HOME/dotfile/vim/.config/*.vim'), '\n')
  exe 'source' f
endfor
