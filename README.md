# fcitx5-lua-spusim

## 简介
此插件用于 fcitx5 对特定程序初始化特定输入法

## 用法
1. 将 spusim.lua 置于`～/.local/share/fcitx5/lua/imeapi/extensions/`目录下，没有则新建
2. 通过设置环境变量 `FCITX_LUA_SPUSIM` 来指定特定程序初始化为特定输入法，格式为 `程序名:输入法名`，有多个用英文逗号隔开，例如： `firefox:shuangpin,fractal:rime`
