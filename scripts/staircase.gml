///staircase(t, curve, flat)
/**
    Returns stair-like graph
**/

var width  = argument1 + argument2;
var base   = floor(argument0 / width);
var offset = argument0 % width;
var stair;

if (offset < argument2)
    stair = 0;
else
    stair = smootherstep((offset - argument2) / argument1);

return base + stair;
