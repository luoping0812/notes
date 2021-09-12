# gdb
> gcc 编译时加上-g选项

## 基本命令

- set args: set args arg1 arg2
- break/b：
- run/r:
- next/n:
- step/s:
- print/p:
- list/l:
- continue/c: 
- set var: set var name="luo"
- quit:q

## 调试core文件
- ulimit -a
- ulimit -c unlimited 
- gdb main core_main

## 调试正在运行的程序
- gdb main -p pid 

## 调试多进程
- set follow-fork-mode parent: 调试父进程 
- set follow-fork-mode clild: 调试子进程 

- set detach-on-fork on/off: 调试当前进程，其他进程是否继续运行

- 查看调试进程: info inferiors
- 切换调试进程: inferior id

## 调试多线程

- info threads:
- thread id:
- set scheduler-locking on/off: 只运行当前线程/运行全部线程
- thread apply tid cmd: 线程执行某gdb命令
- thread apply all cmd: 全部的线程执行某gdb命令

