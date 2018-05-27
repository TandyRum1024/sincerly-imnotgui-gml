///smootherstep(x)
var poly = argument0;//clamp((argument0 - argument1) / (argument2 - argument1), 0.0, 1.0);;
return poly * poly * poly * (poly * (poly * 6 - 15) + 10);
