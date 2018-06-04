///draw_scroller(ID, x, y, width, height, offset, lineHeight, strings, colours)
/**
    IUI plugin? maybe.
    Draws scroller, Y'see?
**/

/// setup vars
// scroller box dimensions
var boxX = argument1, boxY = argument2;
var boxW = argument3, boxH = argument4;
var scrollOffset = argument5;
var lineH        = argument6; // Size of single line
var stringList   = argument7; // List of strings
var colourList   = argument8; // List of colours
var lines        = array_length_1d(stringList); // Size of stringList
var colourSize   = array_length_1d(colourList); // Size of colourList


/**
    THE BACKDROP PART
    
    ==================================
**/
/// backdrop stripey colours
var backdropColour;
backdropColour[0] = iuHellaDark;
backdropColour[1] = colLighter_adv(iuDark2, -30, 1, 1.32, 1.45);
//backdropColour[2] = iuMint;

/// Scroller text related
// (+2 spare lines for top and bottom to avoid the disappearing lines artifact)
var maxLines    = (boxH div lineH) + 2;  // How much can we display?
var scrollOffY  = (argument5 % lineH);     // How much we're far from the last line(?)
var scrollBaseY = (argument5 div lineH);   // How many lines we scrolled?

/// Surface related
var SURFID; // surface ID to draw on
var ID = iui_get_id(argument0);

// check if we already created the surface?
if (iui_varmap[? string(ID) + "-scroller-surf"] == undefined)
{
    // -8 in size for border
    SURFID = surface_create(boxW - 8, boxH - 8);
    iui_varmap[? string(ID) + "-scroller-surf"] = SURFID;
}
else // nah make a new one
{
    SURFID = iui_varmap[? string(ID) + "-scroller-surf"];
    
    // It broke
    if (!surface_exists(SURFID))
    {
        SURFID = surface_create(boxW - 8, boxH - 8);
        iui_varmap[? string(ID) + "-scroller-surf"] = SURFID;
        
        show_debug_message("NEW SURF!");
    }
}


/// Draw the backdrop first, for outline.
iui_rect(boxX, boxY, boxW, boxH, iuHellaDark);

    
/**
    THE SURFACE PART
    
    ==================================
**/
var textInd; // Index used for string array
var lineHalfH   = (lineH / 2);                 // half height of single line
var lineOffsetY = (scrollOffY - 4);            // -4 pixel offset for border
var strOffsetX  = (boxW / 2) - 4;            // X offset of string from each line
var strOffsetY  = (lineOffsetY + lineHalfH);   // Y offset of string from each line
var currentCol, currentStr;
var i;

//////////////////////////////////////////////////////
surface_set_target(SURFID);


// draw the stripe blocky thingy for BG
for (i = 0; i < maxLines; i++)
{
    textInd    = (scrollBaseY + i);
    currentCol = backdropColour[textInd % 2];
    
    // we offset it by 4 pixels for border.
    iui_rect(-4, (lineH * i) - lineOffsetY, boxW, lineH, currentCol);
}

// draw the strings
draw_set_halign(1);
draw_set_valign(1);

for (i = 0; i < maxLines; i++)
{
    textInd = (scrollBaseY + i);
    
    // get current colour and string
    currentCol = colourList[textInd % colourSize];
    currentStr = stringList[textInd % lines];
    
    // we offset it by 4 pixels for border.
    draw_text_colour(strOffsetX, (lineH * i) - strOffsetY, currentStr, currentCol, currentCol, currentCol, currentCol, 1);
}

draw_set_halign(0);
draw_set_valign(0);


surface_reset_target();
//////////////////////////////////////////////////////


/// draw the surface
draw_surface(SURFID, boxX + 4, boxY + 4);
