///draw_colourblock(colour, text1, text2, x, y, wid, hei)


var blockX = argument3;
var blockY = argument4;
var blockW = argument5;
var blockH = argument6;
var blockHalfW = blockW / 2;

var colour  = argument0;
var string1 = argument1;
var string2 = argument2;

var stringColour = iuCream;

if (colBrightness(colour) > 130)
    stringColour = iuHellaDark;


draw_set_halign(1); draw_set_valign(1);
iui_rect(blockX, blockY, blockW, blockH - 40, colour);
iui_rect(blockX, blockY + blockH - 40, blockW, 40, colLighter(colour, -20));
iui_label(blockX + blockHalfW, blockY + 24, string1, stringColour);
iui_label(blockX + blockHalfW, blockY + blockH - 20, string2, stringColour);
draw_set_halign(0); draw_set_valign(0);
