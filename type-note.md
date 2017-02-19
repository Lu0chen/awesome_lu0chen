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
    -- 通过awesome的table来进行界面布局
 -- }}}

 -- {{{ 设置壁纸
 -- }}}

 -- {{{ 定义标签
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


## Modules 
### naughty
 - naughty是awesome中的负责通知警告的库
 - 写启动错误报告时调用了其中的notify函数，他用来创建一个通知警告。这个函数的参数巨多，在awesome的启动错误警告中用到了三个参数。
  1. preset：
  2. title：报错头，提示
  3. text：详细的报错信息，这个awesome中有专门的函数 awesome.startup_errors

### gears.wallpaper
 - 对壁纸的显示布局进行设置的库
 - 我只是用里面的maximized函数，设置最大尺寸的壁纸maximized(surf, s, ignore_aspect, offset)
  1. surf：定义壁纸，可以使文件名或者用cairo画也可以.不过因为我们的渲染都在theme.lua里，所以使用beautiful.wallpaper
  2. s：设置这个壁纸的屏幕，适用于多屏，可以为nil，不过这样的话，会应用于所有屏幕
  3. ignore_aspect：true or false，如果为真，图像的宽高比会被忽略。
  4. offset：设置具有条目x或y的表，我不会使用

## functions
### os.getenv
 - 这个函数用来查询一些系统的环境变量，比如系统的版本，关键路径，程序运行路径什么的。
 - os.getenv(varname):返回当前进程"varname"的环境变量，若变量没有定义返回nil
 - varname对大小写不敏感

## classes
### awful.wifget.launcher
 - 














