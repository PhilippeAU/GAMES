/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 2F043B96
/// @DnDComment : Assign a random number between$(13_10)0 and image_number - 1 (the last frame)$(13_10)to the image index, so the animation$(13_10)starts at a random frame$(13_10)
/// @DnDArgument : "var" "image_index"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "max" "image_number - 1"
image_index = floor(random_range(0, image_number - 1 + 1));