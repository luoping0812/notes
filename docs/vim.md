# vim

## 移动
- `h, j, k, l`
- ``w/W, e/E, b/B` - 单词间移动 
- `f{char}/t{char}/F{char}` - 行内搜索
- `0/$` - 行首/行尾第一个字符
- `gg/G` - 文件开头结尾 
- `ctrl + u/f` - 翻页 
- `zz` - 把当前行置为屏幕中间
- `gi` - 最后一次编辑的位置 

## 增删查改
- `a/i/o/A/I/O` - 插入
- `ctrl + h/w/u` - 删
- `x/d/dw/dt{char}` 
- `/,?` - 查找
- `n/N `
- `r/c/cw` - 改
- `:[range]s[ubstitute]/{pattern}/{string}/[flags]`  - range: 范围，如10，20表示10-20行，%表示全部，pattern: 替换的模式，string: 替换后的文本，flags: g全部范围内执行，c确认，n报告匹配次数	

## 多文件操作
- `:ls` - buffer列举当前缓冲区
- `:b n` - 跳转到第n个缓冲区
- `:sp, :vs`  - window
- `ctrl + w + w/h/j/k/l` - 窗口切换
- `ctrl + w + L/H/J/K` - 窗口移动
- `:tabnew file` - tab
- `gt` - 切换

## 复制粘贴与寄存器
- `set paste` 
- `set nopaste` 

## 补全
- `ctrl + n/p`
- `ctrl + x + f` - 文件 
