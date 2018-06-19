#define draw_textbubble_left
///draw_textbubble_left(x, y, w, h, text, colour, textColour, arrowPos, arrowSize)
/**
    Draws speech / text bubble, with arrow on the left.
    
    ===================================================
    
    x, y, w, h - the position and size of text bubble
    text - the text to draw in
    colour, textColour - the colour of bubble and text
    arrowPos - The position of arrow (y-position in this case)
    arrowSize - The size of arrow
**/

var bx = argument0;
var by = argument1;
var bw = argument2;
var bh = argument3;

// TOP SECRET : Arrow is actually a square rotated 45 degrees.
var arrowSize = argument8;
var arrowHypo = IUI_SINE_LUT_45DEG * arrowSize; // The size of hypotenuse? on the arrow square
var arrowPos  = clamp(argument7, arrowHypo, bh - arrowHypo); // clamp the arrow position to avoid the arrow peeking out of the box
var bubbleCol = argument5;

var label    = argument4;
var labelCol = argument6;
var labelWid = string_width(label);
var labelHei = string_height(label);


iui_align_center();

// arrow square
iui_rect_rot_center(bx, by + arrowPos, arrowSize, arrowSize, bubbleCol, 45);

// box
iui_rect(bx, by, bw, bh, bubbleCol);

// text
iui_label(bx + (bw / 2), by + (bh / 2), label, labelCol);

iui_align_pop();

#define draw_textbubble_top
///draw_textbubble_top(x, y, w, h, text, colour, textColour, arrowPos, arrowSize)
/**
    Draws speech / text bubble, with arrow on the top.
    
    ===================================================
    
    x, y, w, h - the position and size of text bubble
    text - the text to draw in
    colour, textColour - the colour of bubble and text
    arrowPos - The position of arrow (x-position in this case)
    arrowSize - The size of arrow
**/

var bx = argument0;
var by = argument1;
var bw = argument2;
var bh = argument3;

// TOP SECRET : Arrow is actually a square rotated 45 degrees.
var arrowSize = argument8;
var arrowHypo = IUI_SINE_LUT_45DEG * arrowSize; // The size of hypotenuse? on the arrow square
var arrowPos  = clamp(argument7, arrowHypo, bw - arrowHypo); // clamp the arrow position to avoid the arrow peeking out of the box
var bubbleCol = argument5;

var label    = argument4;
var labelCol = argument6;
var labelWid = string_width(label);
var labelHei = string_height(label);


iui_align_center();

// arrow square
iui_rect_rot_center(bx + arrowPos, by, arrowSize, arrowSize, bubbleCol, 45);

// box
iui_rect(bx, by, bw, bh, bubbleCol);

// text
iui_label(bx + (bw / 2), by + (bh / 2), label, labelCol);

iui_align_pop();
#define draw_textbubble_right
///draw_textbubble_right(x, y, w, h, text, colour, textColour, arrowPos, arrowSize)
/**
    Draws speech / text bubble, with arrow on the right.
    
    ===================================================
    
    x, y, w, h - the position and size of text bubble
    text - the text to draw in
    colour, textColour - the colour of bubble and text
    arrowPos - The position of arrow (y-position in this case)
    arrowSize - The size of arrow
**/

var bx = argument0;
var by = argument1;
var bw = argument2;
var bh = argument3;

// TOP SECRET : Arrow is actually a square rotated 45 degrees.
var arrowSize = argument8;
var arrowHypo = IUI_SINE_LUT_45DEG * arrowSize; // The size of hypotenuse? on the arrow square
var arrowPos  = clamp(argument7, arrowHypo, bh - arrowHypo); // clamp the arrow position to avoid the arrow peeking out of the box
var bubbleCol = argument5;

var label    = argument4;
var labelCol = argument6;
var labelWid = string_width(label);
var labelHei = string_height(label);


iui_align_center();

// arrow square
iui_rect_rot_center(bx + bw, by + arrowPos, arrowSize, arrowSize, bubbleCol, 45);

// box
iui_rect(bx, by, bw, bh, bubbleCol);

// text
iui_label(bx + (bw / 2), by + (bh / 2), label, labelCol);

iui_align_pop();

#define draw_textbubble_bottom
///draw_textbubble_bottom(x, y, w, h, text, colour, textColour, arrowPos, arrowSize)
/**
    Draws speech / text bubble, with arrow on the bottom.
    
    ===================================================
    
    x, y, w, h - the position and size of text bubble
    text - the text to draw in
    colour, textColour - the colour of bubble and text
    arrowPos - The position of arrow (x-position in this case)
    arrowSize - The size of arrow
**/

var bx = argument0;
var by = argument1;
var bw = argument2;
var bh = argument3;

// TOP SECRET : Arrow is actually a square rotated 45 degrees.
var arrowSize = argument8;
var arrowHypo = IUI_SINE_LUT_45DEG * arrowSize; // The size of hypotenuse? on the arrow square
var arrowPos  = clamp(argument7, arrowHypo, bw - arrowHypo); // clamp the arrow position to avoid the arrow peeking out of the box
var bubbleCol = argument5;

var label    = argument4;
var labelCol = argument6;
var labelWid = string_width(label);
var labelHei = string_height(label);


iui_align_center();

// arrow square
iui_rect_rot_center(bx + arrowPos, by + bh, arrowSize, arrowSize, bubbleCol, 45);

// box
iui_rect(bx, by, bw, bh, bubbleCol);

// text
iui_label(bx + (bw / 2), by + (bh / 2), label, labelCol);

iui_align_pop();

#define draw_textbubble_topbottom
///draw_textbubble_topbottom(x, y, w, h, text, colour, textColour, arrowPos, arrowSize)
/**
    Draws speech / text bubble, with arrow on both top and bottom.
    
    ===================================================
    
    x, y, w, h - the position and size of text bubble
    text - the text to draw in
    colour, textColour - the colour of bubble and text
    arrowPos - The position of arrow (x-position in this case)
    arrowSize - The size of arrow
**/

var bx = argument0;
var by = argument1;
var bw = argument2;
var bh = argument3;

// TOP SECRET : Arrow is actually a square rotated 45 degrees.
var arrowSize = argument8;
var arrowHypo = IUI_SINE_LUT_45DEG * arrowSize; // The size of hypotenuse? on the arrow square
var arrowPos  = clamp(argument7, arrowHypo, bw - arrowHypo); // clamp the arrow position to avoid the arrow peeking out of the box
var bubbleCol = argument5;

var label    = argument4;
var labelCol = argument6;
var labelWid = string_width(label);
var labelHei = string_height(label);


iui_align_center();

// arrow square
iui_rect_rot_center(bx + arrowPos, by, arrowSize, arrowSize, bubbleCol, 45);
iui_rect_rot_center(bx + arrowPos, by + bh, arrowSize, arrowSize, bubbleCol, 45);

// box
iui_rect(bx, by, bw, bh, bubbleCol);

// text
iui_label(bx + (bw / 2), by + (bh / 2), label, labelCol);

iui_align_pop();