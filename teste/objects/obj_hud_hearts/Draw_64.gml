/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 6D6B2A5D
/// @DnDComment : If the player instance does not exist,
/// @DnDArgument : "obj" "obj_player"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "obj" "obj_player"
var l6D6B2A5D_0 = false;
l6D6B2A5D_0 = instance_exists(obj_player);
if(!l6D6B2A5D_0)
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 3238EF15
	/// @DnDComment : Exit the event so it does not run
	/// @DnDParent : 6D6B2A5D
	exit;
}

/// @DnDAction : YoYo Games.Drawing.Draw_Sprites_Stacked
/// @DnDVersion : 1
/// @DnDHash : 139026B2
/// @DnDComment : Draw the empty heart sprites up to the$(13_10)player's max hp value
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "sprite" "spr_hud_heart_empty"
/// @DnDArgument : "number" "obj_player.max_hp"
/// @DnDSaveInfo : "sprite" "spr_hud_heart_empty"
var l139026B2_0 = sprite_get_width(spr_hud_heart_empty);
var l139026B2_1 = 0;
for(var l139026B2_2 = obj_player.max_hp; l139026B2_2 > 0; --l139026B2_2) {
	draw_sprite(spr_hud_heart_empty, 0, x + 0 + l139026B2_1, y + 0);
	l139026B2_1 += l139026B2_0;
}

/// @DnDAction : YoYo Games.Drawing.Draw_Sprites_Stacked
/// @DnDVersion : 1
/// @DnDHash : 20F3CE44
/// @DnDComment : Draw the full heart sprites up to the$(13_10)player's hp
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "sprite" "spr_hud_heart_full"
/// @DnDArgument : "number" "obj_player.hp"
/// @DnDSaveInfo : "sprite" "spr_hud_heart_full"
var l20F3CE44_0 = sprite_get_width(spr_hud_heart_full);
var l20F3CE44_1 = 0;
for(var l20F3CE44_2 = obj_player.hp; l20F3CE44_2 > 0; --l20F3CE44_2) {
	draw_sprite(spr_hud_heart_full, 0, x + 0 + l20F3CE44_1, y + 0);
	l20F3CE44_1 += l20F3CE44_0;
}