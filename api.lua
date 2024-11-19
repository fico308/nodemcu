local display = require("display")

function showPrice(prices)
    display:clear()

    -- draw watch
    display.showUTF8(0, 0, 0x23F2)
    display.showLine(16, 2, prices["BTCUSDT"]["t"])

    display.showLine(0, 11, "BTC: " .. prices["BTCUSDT"]["price"] .. " " .. prices["BTCUSDT"]["percent"])

    display.showLine(0, 22, "ETH: " .. prices["ETHUSDT"]["price"] .. " " .. prices["ETHUSDT"]["percent"])

    display.showLine(0, 33, "BNB: " .. prices["BNBUSDT"]["price"] .. " " .. prices["BNBUSDT"]["percent"])

    display.showLine(0, 44, "G  : " .. prices["GUSDT"]["price"] .. " " .. prices["GUSDT"]["percent"])

    display.showLine(0, 55, "Ppl: " .. prices["PEOPLEUSDT"]["price"] .. " " .. prices["PEOPLEUSDT"]["percent"])

    prices = nil

end

function getPrice()
    http.get('https://cloudmoon.art/api/token-price?api-key=1&pairs=BTCUSDT,ETHUSDT,BNBUSDT,GUSDT,PEOPLEUSDT',
        -- "accept: application/json\r\nx_cg_demo_api_key: CG-KcbLvBxBSyufoz3zzHwyG7Rk\r\n", 
        nil, function(code, data)
            if (code < 0) then
                print("HTTP request failed")
                display.showStr(0, 40, "Request error")
            else
                print(code, data)
                if code == 200 then
                    -- decode and show
                    local rst = sjson.decode(data)
                    print(rst)
                    showPrice(rst)
                else
                    display.showStr(0, 40, "Response error")
                end
            end
        end)
end

getPrice()
