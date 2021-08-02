# Luo的学习笔记 

通过Makedown记录，MKDocs生成的学习笔记

## Makedown

> http://xianbai.me/learn-md/article/about/readme.html

## MKDocs

> https://www.mkdocs.org/

### 常用命令

* `mkdocs new [dir-name]` - 创建mkdocs工程.
* `mkdocs serve` - 启动mkdocs服务，地址：**127.0.0.1:8000** 
* `mkdocs build` - 构建文档.
* `mkdocs gh-deploy` - 构建，并提交文档到`github`的gh-pages分支.
* `mkdocs gh-deploy --config-file ../notes/mkdocs.yml` - 在`itsluo.github.io`仓库目录下执行，部署到github 

### 目录结构
```
mkdocs.yml    # 配置文件.
docs/
    index.md  # 主页.
    ...        

```
