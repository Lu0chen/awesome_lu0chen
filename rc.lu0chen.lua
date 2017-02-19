-- awesome标准库
local gears = require("gears")
local awful = require("awful")
awful.rules = require("awful.rules")
require("awful.autofocus")
-- awesome窗口和布局库
local wibox = require("wibox")
-- awesome主题处理库
local beautiful = require("beautiful")
-- awesome通知库
local naughty = require("naughty")
local menubar = require("menubar")
local hotkeys_popup = require("awful.hotkeys_popup").widget

-- {{{错误处理

-- 处理启动报错
if awesome.startup.errors then
    naughty.notify({ preset =  naughty.config.presets.critical,
                     title = "Oh,there is something wrong when startup awesome!",
                     text = awesome.startup_errors })
end

-- 启动成功后的运行错误处理
do
    local in_errors = false
    awesome.connect_signal("debug::error", function(err)
            if in_errors then return end --这里加了一个条件判定来防止陷入无尽的报错循环
            in_errors = true

            naughty.notify({ preset = naughty.config.preset.critical,
                             title = "Oh.there is something wrong whilen runing awesome!",
                             text = err })
            in_errors = false
        end)

end
-- }}}

-- {{{ 变量定义
-- icons,colour,wallpaper...use theme.lua
beautiful.init = (".../theme.lua")
-- 定义默认终端和编辑器,我用xterm和vim
terminal = "Xterm"
editor = os.getenv("EDITOR") or "vim"
editor_cmd = terminal .. "-e" .. editor

-- 定义功能键
modkey = "Mod4"

-- 使用awesome的table来布局,就是布局方式，快捷键ctrl+space
local layouts = 
{
    --我一般只是用前面两个，其它的先注释掉
    awful.layout.suit.floating,
    awful.layout.suit.tile,
    --awful.layout.suit.tile.left,
    --awful.layout.suit.tile.bottom,
    --awful.layout.suit.tile.top,
    --awful.layout.suit.fair,
    --awful.layout.suit.fair.horizontal,
    --awful.layout.suit.spiral,
    --awful.layout.suit.max,
    --awful.layout.suit.max.fullscreen,
    --awful.layout.suit.magnifier
}
-- }}}

--[[ 壁纸 
if beautiful.wallpaper then  
    for s = 1, screen.count() do 
      gears.wallpaper.maximized(beautiful.wallpaper, s, true) 
    end 
end
--]]

--[[ 标签
tags = {
    name = { " CHROMIUM ", " VIM ", " XTERM ", " OTHER " },
    layout = { layout[2], layout[2], layout[2], layout[2] } 
}
for s = 1, screen.count() do  
    tags[s] = awful.tag(tags.name, s, tags.layout)
end
--]]

-- {{{帮助函数
local function client_menu_toggle_fn() 
    local instance = nil

    return function ()
        if instance and instance.wibox.visible then 
            instance:hide()
            instance = nil
        else
            instance = awful.menu.clients({ theme = { width = 350 } })
        end
    end
end
-- }}}

-- {{{ 菜单
myawesomemenu = {
    {"manual", terminal.." -e man awesome"},
    {"editor config", editor_cmd .. " " .. awesome.conffile},
    {"restart", awesome.restart},
    {"quit", awesome.quit}
}

mymainmenu = awful.menu({ items = { { "awesome", myawesomemenu, beautiful.awesome_icon },
                                    {"open terminal", terminal } 
                                  }
                        })

mylauncher = awful.widget.laucher()
-- }}}













