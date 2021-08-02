# vim

## 基本操作 
### 移动
- `h, j, k, l`
- ``w/W, e/E, b/B` - 单词间移动 
- `f{char}/t{char}/F{char}` - 行内搜索
- `0/$` - 行首/行尾第一个字符
- `gg/G` - 文件开头结尾 
- `ctrl + u/f` - 翻页 
- `zz` - 把当前行置为屏幕中间
- `gi` - 最后一次编辑的位置 

### 增删查改
- `a/i/o/A/I/O` - 插入
- `ctrl + h/w/u` - 删
- `x/d/dw/dt{char}` 
- `/,?` - 查找
- `n/N `
- `r/c/cw` - 改
- `:[range]s[ubstitute]/{pattern}/{string}/[flags]`  - range: 范围，如10，20表示10-20行，%表示全部，pattern: 替换的模式，string: 替换后的文本，flags: g全部范围内执行，c确认，n报告匹配次数	

### 多文件操作
- `:ls` - buffer列举当前缓冲区
- `:b n` - 跳转到第n个缓冲区
- `:sp, :vs`  - window
- `ctrl + w + w/h/j/k/l` - 窗口切换
- `ctrl + w + L/H/J/K` - 窗口移动
- `:tabnew file` - tab
- `gt` - 切换

### 文本对象
- `[number]<command>[text objext]` - number: 次数， command: d(delete)/c(change)/y(yank), text object: 单词w/句子s/段落p
```
iw: inner word, 如果键入viw命令，首先v进入选择模式，然后iw将选中当前单词
aw: a word, 不但选中单词，但会包含单词前后的空格
```

### 复制粘贴与寄存器
- `set paste` -  
- `set nopaste`-   

### 补全
- `ctrl + n/p`
- `ctrl + x + f` - 文件 

## 配置
> Linux: ~/.vimrc
### 常用设置 
- `set no` - 
- `syntax on` - 
- `colorscheme default` -
- `set hlsearch` - 高亮搜索

### 映射
- `let mapleader=','` - 

- `inoremap <leader> <Esc>:w<cr>`-  
- `inoremap jj <Esc>` -  
- `inoremap zz <Esc>:wq<cr>` - 

- `nnoremap <silent> [b :bprevious<cr>` - 
- `nnoremap <silent> [n :bnext<CR>` -

- `noremap <C-h> <C-w>h`
- `noremap <C-j> <C-w>j`
- `noremap <C-k> <C-w>k`
- `noremap <C-l> <C-w>l`

### Vim脚本
```
function! IncludeGuard()
  let basename = expand("%:t:r")
  let includeGuard = '__' . basename . '_h__'
  call append(0, "#ifndef " . includeGuard)
  call append(1, "#define " . includeGuard)
  call append(line("$"), "#endif /* !" . includeGuard . " */")
endfunction
```

### 模式映射
- `nmap/vmap/imap`
- `nnoremap/vnoremap/inoremap`

### 插件
#### vim-plug
```
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'junegunn/vim-easy-align'

" Initialize plugin system
call plug#end()
```
