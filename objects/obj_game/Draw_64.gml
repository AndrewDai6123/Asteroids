/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 0358B51F
/// @DnDArgument : "color" "$FF0000FF"
draw_set_colour($FF0000FF & $ffffff);
var l0358B51F_0=($FF0000FF >> 24);
draw_set_alpha(l0358B51F_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 491F92C9
/// @DnDArgument : "x" "10"
/// @DnDArgument : "y" "10"
/// @DnDArgument : "caption" "points"
/// @DnDArgument : "var" ""  Points""
draw_text(10, 10, string(points) + string("  Points"));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 3E149008
/// @DnDArgument : "x" "10"
/// @DnDArgument : "y" "30"
/// @DnDArgument : "caption" "ammo"
/// @DnDArgument : "var" ""  Ammo""
draw_text(10, 30, string(ammo) + string("  Ammo"));