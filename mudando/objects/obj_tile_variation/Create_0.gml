/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 41B488B2
/// @DnDComment : This object is placed in the room$(13_10)in the TileVariations layer so it$(13_10)can show up as different kinds of$(13_10)background tiles.$(13_10)$(13_10)It's a child of obj_respawn_parent so$(13_10)it moves down with the view and $(13_10)respawns after it goes below the room.
event_inherited();

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 07AB2237
/// @DnDComment : Assign a random frame$(13_10)to this instance,$(13_10)from the ones$(13_10)available in the $(13_10)sprite.$(13_10)$(13_10)image_number is the number$(13_10)of frames in the sprite.
/// @DnDArgument : "var" "image_index"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "max" "image_number - 1"
image_index = floor(random_range(0, image_number - 1 + 1));