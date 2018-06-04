#define script17
///iui_button(x, y, w, h, string)
/**
    Button for clicky things
    
    Usage : iui_button(pos_x, pos_y, width, height, "Button test!");
    
    ===============================
    
    x, y, w, h - position, and size of the button
    string - the string (id and label) for button
**/

/// Setup
var bl, bt, br, bb;
bl = argument0; bt = argument1; br = bl+argument2; bb = bt+argument3;

/// Get label and ID.
var ID     = 0xDEADBEEF;
var LABEL  = iui_str_label(argument4);
var _IDSTR = iui_str_id(argument4);
var _tmpID = iui_idMap[? _IDSTR];
if (_tmpID == undefined) // first timer; Make new ID.
{
    iui_idMap[? _IDSTR] = iui_idx;
    ID                  = iui_idx++;
    //show_debug_message("CREATED ID : "+string(iui_idx-1));
}
else // get ID from map...
    ID = _tmpID;


/// Button logic
var isClicky = false;
// is hover
if (point_in_rectangle(iui_inputX, iui_inputY, bl, bt, br, bb))
{
    iui_hotItem = ID;
    
    // ... and is clicked
    if (iui_activeItem == -1 && iui_inputDown)
        iui_activeItem = ID;
}
// is 'Pressed" (AKA The user pressed and released the button)
if (iui_hotItem == ID && iui_activeItem == ID && !iui_inputDown)
    isClicky = true;


/// Button draw
var isActive = (iui_activeItem==ID);
var isHot    = (iui_hotItem==ID);
if (iuiButtonShadow)
    iui_rect(argument0+8, argument1+8, argument2, argument3, iuiColButtonShadow);

// Hovering
if (isHot)
{
    // and clicked
    if (isActive)
    {
        iui_rect(argument0, argument1, argument2, argument3, iuiColButtonActiveBackdrop); // backdrop
        iui_rect(argument0, argument1, argument2, 9, iuiColButtonActiveBackdropTop); // top line / box for style?
    }
    else // nope
    {
        iui_rect(argument0, argument1, argument2, argument3, iuiColButtonHoverBackdrop);
        iui_rect(argument0, argument1, argument2, 9, iuiColButtonHoverBackdropTop);
    }
}
else // Nope
{
    // Still pressing but dragged out of the button
    if (isActive)
    {
        iui_rect(argument0, argument1, argument2, argument3, iuiColButtonActiveBackdrop);
        iui_rect(argument0, argument1, argument2, 9, iuiColButtonActiveBackdropTop2);
    }
    else // default
    {
        iui_rect(argument0, argument1, argument2, argument3, iuiColButtonBackdrop);
        iui_rect(argument0, argument1, argument2, 5, iuiColButtonBackdropTop);
    }
}
// label
draw_set_halign(1); draw_set_valign(1);
draw_text_colour(argument0 + (argument2>>1), argument1 + (argument3>>1), LABEL, iuiColButtonLabel, iuiColButtonLabel, iuiColButtonLabel, iuiColButtonLabel, 1);
draw_set_halign(0); draw_set_valign(0);

return isClicky;

#define script18
///iui_button_nodraw(x, y, w, h, string)
/**
    Same as button, But without drawing. (= invisible button)
    
    ===============================
    
    x, y, w, h - position, and size of the button
    string - the string (id) for button
**/

/// Setup
var bl, bt, br, bb;
bl = argument0; bt = argument1; br = bl+argument2; bb = bt+argument3;

/// Get label and ID.
var ID     = 0xDEADBEEF;
var _IDSTR = iui_str_id(argument4);
var _tmpID = iui_idMap[? _IDSTR];
if (_tmpID == undefined) // first timer; Make new ID.
{
    iui_idMap[? _IDSTR] = iui_idx;
    ID                  = iui_idx++;
}
else // get ID from map...
    ID = _tmpID;


/// Button logic
var isClicky = false;
// is hover
if (point_in_rectangle(iui_inputX, iui_inputY, bl, bt, br, bb))
{
    iui_hotItem = ID;
    
    // ... and is clicked
    if (iui_activeItem == -1 && iui_inputDown)
        iui_activeItem = ID;
}
// is 'Pressed" (AKA The user pressed and released the button)
if (iui_hotItem == ID && iui_activeItem == ID && !iui_inputDown)
    isClicky = true;

return isClicky;