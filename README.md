# 基于Reactor模型的Reep网络库框架
## Reep网络库是在学习并参考Muduo源码的基础上，使用C++11对Muduo网络库进行了重构，去除Muduo对Boost库的依赖，并根据Muduo的设计思想，实现的基于多Reactor多线程模型的网络库。
### 下载项目
```bash
git clone https://github.com/beierdada/Reep.git
```
### 执行脚本自动编译项目，并自动将Reep库的相关头文件和库文件分别添加到/usr/include/Reep和/usr/lib中
```bash
cd ./Reep && bash autobuild.sh
```
### 测试案例
```bash
cd ./example
# 编译
make
# 启动一个简单的EchoServer服务
./testserver
# 连接
telnet 127.0.0.1 8000
```
