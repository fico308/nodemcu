local display = require("display")
-- display.clear()

-- fetch price
display.showStr(0, 30, "Fetch price")
dofile("api.lua")
collectgarbage()

t = tmr.create()
t:register(300000, tmr.ALARM_AUTO, function()
    dofile("api.lua")
    collectgarbage()
end)
t:start()
