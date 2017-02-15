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

