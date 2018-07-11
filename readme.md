## AutoReinforce
### 简介
自动化加固工具，支持java方法级别加固，内含多种反调试措施，适配Dalvik和ART两种模式，目前已测试系统Android4.4.4、Android5.1.0
### 用法

1. 填写配置文件
    - app: 待加固App绝对路径
    - num: 需要加固的java方法数量
    - class: 需要加固方法所在类
    - function: 需要加固的方法名称
    - sigature: 方法签名
2. python reinforce.py

### 目录说明
- core: 实现加固的核心so库
- factory: 壳的smali代码
- tools: 一些辅助工具，如apktool
- reinforce.py: 实现自动化加固

### 环境要求
- NDK
- python3.5
- java