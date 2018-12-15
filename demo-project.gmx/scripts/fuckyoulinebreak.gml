///fuckyoulinebreak(str)
/**
    # -> \#
**/

var origin = argument0;
for (var i=0; i<string_length(origin); i++)
{
    if (string_char_at(origin, i) == '#')
        origin = string_insert('\', origin, i++);
}

return origin;
