local logo = {}
logo.width = 128
logo.height = 64
local bits = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF8, 
    0x1F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x80, 0x07, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF0, 0x07, 0x00, 0x03, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x00, 
    0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x06, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x20, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x8E, 0x02, 0x00, 
    0x00, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0xE0, 0x63, 0x01, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x1C, 0xB0, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x90, 0x00, 0x00, 
    0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC0, 
    0x01, 0x48, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x60, 0x00, 0x48, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x00, 0x04, 0x40, 0x00, 
    0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C, 
    0x00, 0x04, 0x40, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x02, 0x00, 0x04, 0x80, 0x00, 0x01, 0x00, 0x18, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x02, 0x80, 0xE0, 
    0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 
    0x00, 0x02, 0x00, 0x21, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x01, 0x00, 0x82, 0x00, 0x12, 0x00, 0x00, 0x10, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x82, 0x00, 0x08, 
    0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x00, 
    0x00, 0xC2, 0x1F, 0x04, 0xE0, 0x01, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x80, 0x00, 0x00, 0x42, 0x10, 0x02, 0x18, 0x07, 0xC8, 0x1F, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x42, 0x08, 0x00, 
    0x0E, 0x04, 0x78, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x00, 
    0x00, 0x42, 0x08, 0x00, 0x05, 0x04, 0x18, 0x60, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0xE0, 0x00, 0x00, 0x42, 0x08, 0x00, 0x04, 0x04, 0x0C, 0xC0, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0xC2, 0x24, 0x00, 
    0x04, 0x02, 0x04, 0x80, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 
    0x00, 0x82, 0xE3, 0x03, 0x04, 0x02, 0x04, 0x00, 0x01, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x02, 0x00, 0x00, 0x02, 0x00, 0x1C, 0x84, 0xFD, 0x0F, 0x00, 
    0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x02, 0x00, 0x00, 
    0x7C, 0x07, 0x01, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0xC0, 0x00, 0x00, 
    0x00, 0x04, 0x00, 0x00, 0x00, 0x01, 0x01, 0x00, 0xF8, 0x3F, 0x00, 0x00, 
    0x00, 0x60, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x80, 0x80, 0x00, 0x00, 
    0x00, 0x20, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 
    0xC0, 0x40, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 
    0x00, 0x08, 0x00, 0x00, 0x40, 0x40, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 
    0x00, 0x20, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x40, 0x40, 0x00, 0x00, 
    0x00, 0x20, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x30, 0x00, 0x00, 
    0x40, 0x30, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 
    0x00, 0x60, 0x00, 0x00, 0x40, 0x08, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 
    0x00, 0x20, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x80, 0x09, 0x00, 0x00, 
    0x00, 0x20, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 
    0x00, 0x07, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 
    0x00, 0x00, 0x06, 0x00, 0x80, 0x0D, 0x00, 0x00, 0x00, 0xE0, 0x1F, 0x00, 
    0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x38, 0x00, 0x70, 0x30, 0x00, 0x00, 
    0x00, 0x00, 0xE0, 0x03, 0x00, 0x80, 0x01, 0x3C, 0x00, 0x00, 0xD0, 0xFF, 
    0x3F, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0xFF, 0x0F, 
    0x00, 0x80, 0xFF, 0x00, 0x18, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 
    0x00, 0x00, 0x00, 0x30, 0x00, 0x70, 0x88, 0x01, 0x0C, 0x08, 0x00, 0x00, 
    0x00, 0x00, 0xC0, 0x00, 0x00, 0x00, 0x00, 0xE0, 0x01, 0x0E, 0x08, 0xFF, 
    0x03, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0xFF, 0x01, 0x08, 0x80, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x18, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x01, 0xFC, 0x3F, 0x00, 
    0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 
    0x02, 0x00, 0xC0, 0xFF, 0x1F, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x06, 0xF0, 0x03, 0x00, 0x02, 0x00, 0x00, 0x00, 0xE0, 0x83, 0x03, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x0C, 0x0C, 0x00, 0x00, 0x86, 0x03, 0x00, 0x00, 
    0x00, 0x5E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x30, 0x06, 0x00, 0x00, 
    0x7C, 0x06, 0x00, 0x00, 0x00, 0x3E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x40, 0x03, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, }

logo.bits = string.char(unpack(bits))

-- logo.bits = string.char(
--   0x00, 0x18, 0x00, 0x00, 0x24, 0x00, 0x00, 0x24, 0x00, 0x00, 0x42, 0x00,
--   0x00, 0x42, 0x00, 0x00, 0x42, 0x00, 0x00, 0x81, 0x00, 0x00, 0x81, 0x00,
--   0xC0, 0x00, 0x03, 0x38, 0x3C, 0x1C, 0x06, 0x42, 0x60, 0x01, 0x42, 0x80,
--   0x01, 0x42, 0x80, 0x06, 0x42, 0x60, 0x38, 0x3C, 0x1C, 0xC0, 0x00, 0x03,
--   0x00, 0x81, 0x00, 0x00, 0x81, 0x00, 0x00, 0x42, 0x00, 0x00, 0x42, 0x00,
--   0x00, 0x42, 0x00, 0x00, 0x24, 0x00, 0x00, 0x24, 0x00, 0x00, 0x18, 0x00)

return logo
