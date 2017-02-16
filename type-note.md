### 写rc.lu0chen.lua时候的笔记

## 总览
 ```lua
 -- {{{引用库
    -- awesome标准库(standard library)
    -- 窗口和布局的库(widget and layout library)
    -- 主题渲染处理库(theme handing library)
    -- 警告通知库(notification library)
 -- }}}

 -- {{{报错
    -- 启动awesome出错报错
    -- 运行awesome出错报错
 -- }}}

 -- {{{变量定义
    -- 调用theme.lua来对awesome的颜色、图标、壁纸等进行定义
    -- 定义默认的终端和编辑器
    -- 定义热键，即功能键(一般都是使用win键，也就是"Mod4")
    -- 定义awesome初始加载界面的表
 -- }}}

 -- {{{定义壁纸
 -- }}}

 --{{{定义标签
    -- 我自己的习惯: names = { " VIM ", " WEB ", " XTERM ", " OTHER " }, layout = {layout[2]...}
 -- }}}

 -- {{{初始化窗口以及主菜单
    -- 菜单栏配置(为需要使用终端的应用设置终端，也就用前面定义的默认终端:awesome.utils.terminal = terminal)
    -- 
 -- }}}

 -- {{{wibox
    -- 时钟
    -- 为每一个桌面加载一个wibox
 --}}}

 -- {{{ 鼠标绑定
 -- }}}

 -- {{{ 键盘快捷键绑定
    -- 很多默认的快捷键，不建议修改
    -- 可以 根据自己习惯添加
 -- }}}

 -- {{{ 规则
 -- }}}

 -- {{{ 信号
    -- 当客户端启动时使用的信号函数 
 -- }}}
 ```


## Module 
### naughty
 - naughty是awesome中的负责通知警告的库
 - 写启动错误报告时调用了其中的notify函数，他用来创建一个通知警告。这个函数的参数巨多，在awesome的启动错误警告中用到了三个参数。
  1. preset：
  2. title：报错头，提示
  3. text：详细的报错信息，这个awesome中有专门的函数 awesome.startup_errors
