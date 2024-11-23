local hs = require("httpserver")
function startServer()
    print("start server")
    hs.createServer(8080, function(req, res)
        -- analyse method and url
        print("+R", req.method, req.url, node.heap())
        -- setup handler of headers, if any
        -- req.onheader = function(self, name, value) -- luacheck: ignore
        -- print("+H", name, value)
        -- E.g. look for "content-type" header,
        --   setup body parser to particular format
        -- if name == "content-type" then
        --   if value == "application/json" then
        --     req.ondata = function(self, chunk) ... end
        --   elseif value == "application/x-www-form-urlencoded" then
        --     req.ondata = function(self, chunk) ... end
        --   end
        -- end
        -- end
        if req.url == "/update" then
            -- update config
            req.ondata = function(self, chunk) -- luacheck: ignore
                print("+U", chunk, node.heap())
                -- parse body 
                local sep = input:find("&") -- 找到 & 的位置
                local pairs_value = input:sub(7, sep - 1) -- 提取 pairs 的值
                local interval_value = tonumber(input:sub(sep + 10)) -- 从 interval= 后提取值
                print("+U", pairs_value, interval_value)
                -- save
                db.updateToken(pairs_value, interval_value)
                print("+U", "update success")
                if not chunk then
                    -- reply
                    res:send("ok", 200)
                    res:send_header("Connection", "close")
                    res:finish()
                    collectgarbage()
                end
            end
        elseif req.url == "/var" then
            req.ondata = function(self, chunk) -- luacheck: ignore
                print("+V", chunk, node.heap())
                local db = require("db")
                if not chunk then
                    -- reply
                    res:send_header("Connection", "close")
                    res:send_header("content-type", "application/json; charset=utf-8")
                    res:send('{"pairs": "' .. db.tokenConfigPairs() .. '","interval":"' .. db.tokenConfigInterval() ..
                                   '"}', 200)
                    res:finish()
                    collectgarbage()
                end
            end
        else
            -- open index page
            req.ondata = function(self, chunk) -- luacheck: ignore
                print("+B", chunk and #chunk, node.heap())
                if not chunk then
                    -- reply
                    res:send(nil, 200)
                    res:send_header("Connection", "close")
                    if file.open("index.html") then
                        res:send(file.read())
                    end
                    res:finish()
                    collectgarbage()
                end
            end
        end

    end)
end

startServer()
