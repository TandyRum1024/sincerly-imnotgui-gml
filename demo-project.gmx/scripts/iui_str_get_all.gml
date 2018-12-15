///iui_str_get_all( STR )
/**
    Seperates ID and LABEL(displayable?) from STR.
    
    ==========================
    
    STR - ID
    
    returns :
    returnArray - Array holding LABEL part and ID part
    returnArray[0] - ID
    returnArray[1] - LABEL
**/

var returnArray;
var _TMPID     = iui_str_id(argument0);
var _MAPID     = iui_idMap[? _TMPID];

if (_MAPID != undefined) // the ID doesn't exist -- Make a new one and put into the map
    returnArray[0] = _MAPID;
else // ID already exists... Take that.
{
    returnArray[0]      = iui_idx;
    iui_idMap[? _TMPID] = iui_idx++;
}

returnArray[1] = iui_str_label(argument0);

return returnArray;
