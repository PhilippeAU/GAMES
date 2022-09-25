/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 3B65E7E7
/// @DnDComment : Run the parent's User Event 0
event_inherited();

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 7BB2CDFD
/// @DnDComment : Play the 'box hit' sound
/// @DnDArgument : "soundid" "snd_box_hit"
audio_play_sound(snd_box_hit, 0, 0, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 46B81883
/// @DnDComment : If the block is already inactive,
/// @DnDArgument : "var" "sprite_index"
/// @DnDArgument : "value" "spr_block_coins_inactive"
if(sprite_index == spr_block_coins_inactive)
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 7991812A
	/// @DnDComment : Exit the event
	/// @DnDParent : 46B81883
	exit;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 37B583F7
/// @DnDComment : Reduce the block's hits by 1$(13_10)$(13_10)(This variable is created in the Variable Definitions$(13_10)and controls how many times this block can be hit)
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "hits_left"
hits_left += -1;

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 3C4A76FF
/// @DnDComment : Play the 'box get' sound
/// @DnDArgument : "soundid" "snd_box_get"
audio_play_sound(snd_box_get, 0, 0, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 368EE422
/// @DnDComment : If the block is out of hits,
/// @DnDArgument : "var" "hits_left"
/// @DnDArgument : "op" "3"
if(hits_left <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 3523B298
	/// @DnDComment : Deactivate it by changing its sprite to$(13_10)the inactive block sprite
	/// @DnDParent : 368EE422
	/// @DnDArgument : "spriteind" "spr_block_coins_inactive"
	sprite_index = spr_block_coins_inactive;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4B452E40
/// @DnDComment : Add the block's coins value to the player's coins variable$(13_10)$(13_10)(This variable is created in the Variable Definitions)
/// @DnDArgument : "expr" "coins"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "obj_player.coins"
obj_player.coins += coins;

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 604AB32C
/// @DnDComment : Create the block 'hit animation' instance above the$(13_10)block; see the sprite "spr_block_coins_hit_animation"$(13_10)$(13_10)On the X axis, it's created at the center of the instance,$(13_10)by adding half its width to the X (which is on the left)$(13_10)$(13_10)The Y is 90 pixels below the top border
/// @DnDArgument : "xpos" "x + sprite_width / 2"
/// @DnDArgument : "ypos" "90"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_block_coins_hit_animtion"
/// @DnDArgument : "layer" "layer"
instance_create_layer(x + sprite_width / 2, y + 90, layer, obj_block_coins_hit_animtion);