local display = {}

function display.init()
    local sda = 2
    local scl = 1
    local sla = 0x3c
    local i2cId = 0
    i2c.setup(i2cId, sda, scl, i2c.SLOW)
    disp = u8g2.ssd1306_i2c_128x64_noname(i2cId, sla)
    disp:setFont(u8g2.font_6x10_tf)
    disp:setFontRefHeightExtendedText()
    disp:setDrawColor(1)
    disp:setFontPosTop()
    disp:setFontDirection(0)
end

function display.clear()
    disp:setDrawColor(0)
    disp:drawBox(0, 0, 128, 64)
    disp:sendBuffer()
end

function display.showStr(x, y, str)
    display.clear()
    disp:setFont(u8g2.font_6x10_tf)
    -- check length
    local maxCharOneLine = (128 - x) / 6
    local strLen = string.len(str)
    print(str, maxCharOneLine, strLen, x, y)
    if strLen > maxCharOneLine then
        local start = 1
        local over = maxCharOneLine
        while start < strLen do
            -- print(x, y + (start / maxCharOneLine) * 10, string.sub(str, start, over))
            disp:setDrawColor(2)
            disp:drawStr(x, y + (start / maxCharOneLine) * 10, string.sub(str, start, over))
            start = over + 1
            over = start + maxCharOneLine - 1
            if over > strLen then
                over = strLen
            end
        end
    else
        -- directly show
        disp:setDrawColor(2)
        disp:drawStr(x, y, str)
    end
    disp:sendBuffer()
end

function display.showLine(x, y, str)
    disp:setFont(u8g2.font_6x10_tf)
    disp:setDrawColor(2)
    disp:drawStr(x, y, str)
    disp:sendBuffer()
end

-- function display.test()
--     disp:setFont(u8g2.font_6x10_tf)

--     disp.setDrawColor(1);
--     disp.drawStr(3, 15, "Color=1, Mode 0");
--     disp.setDrawColor(0);
--     disp.drawStr(3, 30, "Color=0, Mode 0");
--     disp.setDrawColor(1);
--     disp.drawStr(3, 45, "Color=1, Mode 1");
--     disp.setDrawColor(0);
--     disp.drawStr(3, 60, "Color=0, Mode 1");
-- end

function  display.showUTF8(x, y, code)
    disp:setFont(u8g2.font_unifont_t_symbols);
    disp:setDrawColor(2)
    disp:drawGlyph(x, y, code);
    disp:sendBuffer()
end

return display
