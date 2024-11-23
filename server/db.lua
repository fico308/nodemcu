local db = {}

function db.wifiConfig()
    if file.open("db.json") then
        local rst = file.read()
        file.close()
        print(rst)

        local origin = sjson.decode(rst)
        return origin["wifi"]["ssid"], origin["wifi"]["password"]
    end
    return "", ""
end


function db.tokenConfigInterval()
    if file.open("db.json") then
        local rst = file.read()
        file.close()
        print(rst)

        local origin = sjson.decode(rst)

        return origin["token"]["interval"]
    end
    return 300000 -- 300s
end


function db.tokenConfigPairs()
    if file.open("db.json") then
        local rst = file.read()
        file.close()
        print(rst)

        local origin = sjson.decode(rst)

        return origin["token"]["pairs"]
    end
    return 300000 -- 300s
end


function db.updateWifi(ssid, password)
    local origin
    if file.open("db.json") then
        origin = sjson.decode(file.read())
        file.close()
    end

    local fd = file.open("db.json", "w+")
    if fd then
        origin["wifi"]["ssid"] = ssid
        origin["wifi"]["password"] = password
        ok, j = pcall(sjson.encode, origin)
        print(ok, j)
        if ok then
            fd:write(j)
            fd:flush()
        else
            print("Encode json failed; origin: "..origin)
        end
        fd:close()
    end
end


function db.updateToken(pairs, interval)
    local origin
    if file.open("db.json") then
        origin = sjson.decode(file.read())
        file.close()
    end

    local fd = file.open("db.json", "w+")
    if fd then
        origin["token"]["interval"] = interval
        origin["token"]["pairs"] = pairs
        ok, j = pcall(sjson.encode, origin)
        print(ok, j)
        if ok then
            fd:write(j)
            fd:flush()
        else
            print("Encode json failed; origin: "..origin)
        end
        fd:close()
    end
end

return db