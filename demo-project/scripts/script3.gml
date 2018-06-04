///ui_str_label( STR )
/**
    Returns the label part from string formatted by IMGUI-ish style
    
    
    
    =================================
    
    STR - input string
    returns label part of string
**/

var CUTPOS = string_pos('#', argument0); // Accounts for both ### & ##
if (CUTPOS != 0)
    return string_copy(argument0, 1, CUTPOS-1);
else
    return argument0;
