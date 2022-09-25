/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 3C66DAB9
/// @DnDComment : Run the parent's User Event 0
event_inherited();

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 233B54A5
/// @DnDComment : Create an instance of the brick block destroy$(13_10)object, which is an animation that shows the$(13_10)block being destroyed$(13_10)$(13_10)It's created at the same position and in the same$(13_10)layer as the block itself
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_block_brick_destroy"
/// @DnDArgument : "layer" "layer"
/// @DnDSaveInfo : "objectid" "obj_block_brick_destroy"
instance_create_layer(x + 0, y + 0, layer, obj_block_brick_destroy);

/// @DnDAction : YoYo Games.Random.Choose
/// @DnDVersion : 1
/// @DnDHash : 327702F1
/// @DnDComment : Choose a random block hit sound and play it
/// @DnDInput : 3
/// @DnDArgument : "var" "sound"
/// @DnDArgument : "option" "snd_dirt_block_hit_01"
/// @DnDArgument : "option_1" "snd_dirt_block_hit_02"
/// @DnDArgument : "option_2" "snd_dirt_block_hit_02"
sound = choose(snd_dirt_block_hit_01, snd_dirt_block_hit_02, snd_dirt_block_hit_02);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 11625265
/// @DnDArgument : "soundid" "sound"
audio_play_sound(sound, 0, 0, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 34C899B3
/// @DnDComment : Destroy the brick block
instance_destroy();