/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2E085B3A
/// @DnDComment : If the player is on$(13_10)the bottom boundary$(13_10)of the room, defeat$(13_10)it
/// @DnDArgument : "var" "y"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "room_height"
if(y >= room_height)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5991E3B8
	/// @DnDParent : 2E085B3A
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var" "defeated"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "objectid" "obj_player_defeated"
	/// @DnDArgument : "layer" ""Player""
	/// @DnDSaveInfo : "objectid" "obj_player_defeated"
	var defeated = instance_create_layer(x + 0, y + 0, "Player", obj_player_defeated);

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 1C635875
	/// @DnDComment : Set the frame of the$(13_10)defeated player instance$(13_10)to 1 because we lost by$(13_10)falling (its default$(13_10)frame is the fire one)
	/// @DnDApplyTo : defeated
	/// @DnDParent : 2E085B3A
	/// @DnDArgument : "imageind" "1"
	/// @DnDArgument : "spriteind" "sprite_index"
	with(defeated) {
	sprite_index = sprite_index;
	image_index = 1;
	}

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 17F4CC6B
	/// @DnDComment : Play sound for when the$(13_10)player loses by touching$(13_10)the bottom of the room
	/// @DnDParent : 2E085B3A
	/// @DnDArgument : "soundid" "snd_player_defeat_bottom"
	/// @DnDSaveInfo : "soundid" "snd_player_defeat_bottom"
	audio_play_sound(snd_player_defeat_bottom, 0, 0, 1.0, undefined, 1.0);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 59D37CCE
	/// @DnDParent : 2E085B3A
	instance_destroy();
}