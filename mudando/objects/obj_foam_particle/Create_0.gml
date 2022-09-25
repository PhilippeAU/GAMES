/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 1FF125D5
/// @DnDArgument : "var" "speed"
/// @DnDArgument : "max" "4"
speed = (random_range(0, 4));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 2A9E940B
/// @DnDArgument : "var" "direction"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "max" "360"
direction = floor(random_range(0, 360 + 1));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 447EBC12
/// @DnDArgument : "var" "image_alpha"
/// @DnDArgument : "min" "0.1"
image_alpha = (random_range(0.1, 1));

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 6B1687AC
/// @DnDArgument : "angle" "direction"
image_angle = direction;

/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 7FE8DB79
/// @DnDArgument : "xscale" "random_range(0.5, 0.7)"
/// @DnDArgument : "yscale" "random_range(0.5, 0.7)"
image_xscale = random_range(0.5, 0.7);
image_yscale = random_range(0.5, 0.7);