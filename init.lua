display = require("display")
display.init()

enduser_setup.start(function()
    if not wifi.sta.getip() then
        display.showStr(0, 30, "Connect failed")
        return
    end
    print("Connected success")
    display.showStr(0, 30, wifi.sta.getip())
    dofile("app.lua")
end, function(err, str)
    print("enduser_setup: Err #" .. err .. ": " .. str)
end, print -- Lua print function can serve as the debug callback
)

display.showLine(0, 20, "System init")
display.showLine(0, 30, "Try to connect wifi")
display.showLine(0, 40, "Please manually connect to this ap")
display.showLine(0, 50, "if long time not connected")
