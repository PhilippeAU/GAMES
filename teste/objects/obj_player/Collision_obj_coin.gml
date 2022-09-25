/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 71AC8F0E
/// @DnDComment : Increase the coins variable of the$(13_10)player by 1
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "coins"
coins += 1;

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 4FA4297B
/// @DnDComment : Create an instance of$(13_10)obj_coin_collect_effect at the position$(13_10)of the 'other' instance, which is the$(13_10)coin that the player touched.
/// @DnDArgument : "xpos" "other.x"
/// @DnDArgument : "ypos" "other.y"
/// @DnDArgument : "objectid" "obj_coin_collect_effect"
instance_create_layer(other.x, other.y, "Instances", obj_coin_collect_effect);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 6CC76BFD
/// @DnDComment : Play the coin collect sound
/// @DnDArgument : "soundid" "snd_coin_collect_01"
audio_play_sound(snd_coin_collect_01, 0, 0, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 4D8569B1
/// @DnDComment : Destroy the 'other' instance, which is$(13_10)the coin. Click on the down arrow next$(13_10)to the X to see that the action is applied$(13_10)to the 'other' instance.
/// @DnDApplyTo : other
with(other) instance_destroy();