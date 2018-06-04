var R = sqr(argument0&$0000FF);
var G = sqr((argument0&$00FF00)>>8);
var B = sqr((argument0&$FF0000)>>16);

return sqrt(R*0.241 + G*0.691 + B*0.068);
