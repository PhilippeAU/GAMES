/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 56B9B4BE
/// @DnDComment : 'obj_end_gate' is the goal of every level, so when$(13_10)the player collides with this, the level should end.$(13_10)$(13_10)This action creates an instance of obj_player_fade,$(13_10)at the player's position.$(13_10)$(13_10)This new instance will fade away over time and once it$(13_10)has faded, it will start the next room.
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_player_end_level"
/// @DnDArgument : "layer" "layer"
instance_create_layer(x + 0, y + 0, layer, obj_player_end_level);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 397BB688
/// @DnDComment : This destroys the player instance as it's no longer$(13_10)needed.
instance_destroy();