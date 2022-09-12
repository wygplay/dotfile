" 配置信息入口 
for f in split(glob('$HOME/dotfile/vim/.config/*.vim'), '\n')
  exe 'source' f
endfor
