///iui_tri(x1, y1, x2, y2, x3, y3, colour)
/**
    Draws triangle optimized while abusing the Gamemaker's sprite-batch.
    
    ======================================================================
    
    x1 ~ y3 - The position of triangle
    colour  - It's colour, Y'see?
**/

var _col = draw_get_colour();
draw_set_colour(argument6);
draw_sprite_pos(spr_uiwhitepixel, 0, argument0, argument1, argument2, argument3, argument4, argument5, argument4, argument5, 1);
draw_set_colour(_col);
