local display = require("display")

display.init()
-- draw watch
display.showUTF8(0, 0, 0x23F2)
display.showLine(16, 2, "2024-11-15 11:22:33")

display.showLine(0, 11, "BTC: 98765.32 -12.98%")
display.showLine(0, 22, "ETH: 3200.32  +12.98%")
display.showLine(0, 33, "BNB: 640.32   +12.98%")
display.showLine(0, 44, "G  : 0.02933  +12.97%")
display.showLine(0, 55, "Ppl: 0.06524  -12.96%")
