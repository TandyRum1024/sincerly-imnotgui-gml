///vk2ascii(vk)

var asciiChar = argument0;

if (argument0 >= 188 && argument0 <= 191)
    asciiChar -= 144;
if (argument0 == 187)
    asciiChar = 61;   
if (argument0 == 192)
    asciiChar = 96;
if (argument0 == 220)
    asciiChar = 92;
if (argument0 == 219 || argument0 == 221)
    asciiChar -= 128;
if (argument0 == 222)
    asciiChar = 39;
if (argument0 == 186)
    asciiChar = 59;

return asciiChar;
