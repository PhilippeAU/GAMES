/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 34054575
/// @DnDComment : This section flips the character's sprite depending$(13_10)on whether it's moving left or right.$(13_10)$(13_10)This condition checks if the X velocity is less than 0,$(13_10)meaning the character is moving left.
/// @DnDArgument : "var" "vel_x"
/// @DnDArgument : "op" "1"
if(vel_x < 0)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 57CAEC63
	/// @DnDComment : In that case, the horizontal scale of the instance$(13_10)is set to -1. This flips the sprite the other way around,$(13_10)making it face left.
	/// @DnDParent : 34054575
	/// @DnDArgument : "xscale" "-1"
	image_xscale = -1;
	image_yscale = 1;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 01D3626A
/// @DnDComment : Otherwise - if the character is not moving left,
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 019BA8C9
	/// @DnDComment : This checks if the X velocity is greater than 0,$(13_10)meaning the character is moving right.
	/// @DnDParent : 01D3626A
	/// @DnDArgument : "var" "vel_x"
	/// @DnDArgument : "op" "2"
	if(vel_x > 0)
	{
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 3D480770
		/// @DnDComment : In that case, the horizontal scale is set to 1,$(13_10)so the character faces right again.
		/// @DnDParent : 019BA8C9
		image_xscale = 1;
		image_yscale = 1;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 397AD0CB
/// @DnDComment : This checks if the character's health is$(13_10)at, or below, 0, meaning it has been defeated.$(13_10)$(13_10)In that case we want to replace the character$(13_10)instance with its defeated object.
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "op" "3"
if(hp <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 71B0C035
	/// @DnDComment : This creates an instance of the$(13_10)character's 'defeated_object'. E.g.$(13_10)it will be obj_player_defeated$(13_10)for obj_player.$(13_10)$(13_10)It's created at the same position$(13_10)as the character itself, because$(13_10)of the 'Relative' options.$(13_10)$(13_10)It's created in the same layer as$(13_10)the character, by using its 'layer'$(13_10)variable.
	/// @DnDParent : 397AD0CB
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "defeated_object"
	/// @DnDArgument : "layer" "layer"
	instance_create_layer(x + 0, y + 0, layer, defeated_object);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7DBB56A0
	/// @DnDComment : This destroys the character instance itself.
	/// @DnDParent : 397AD0CB
	instance_destroy();
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 60CBBE2F
/// @DnDComment : This checks if no_hurt_frames is greater than 1,$(13_10)meaning the character is currently invincible and$(13_10)can't be hurt.
/// @DnDArgument : "var" "no_hurt_frames"
/// @DnDArgument : "op" "2"
if(no_hurt_frames > 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0F629B52
	/// @DnDComment : In that case we reduce the variable by 1,$(13_10)as one frame as passed. Eventually it will$(13_10)reach 0 again and the character will be able$(13_10)to be hurt.
	/// @DnDParent : 60CBBE2F
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "no_hurt_frames"
	no_hurt_frames += -1;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 10399A3F
	/// @DnDComment : This part handles making the character flash on and$(13_10)off when it's invincible, by changing its alpha$(13_10)between 0 and 1.$(13_10)$(13_10)If the remainder of no_hurt_frames divided by 12$(13_10)is above 6, we'll set the alpha to 0.$(13_10)Otherwise we'll set it to 1.$(13_10)
	/// @DnDParent : 60CBBE2F
	/// @DnDArgument : "var" "no_hurt_frames % 12"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "6"
	if(no_hurt_frames % 12 > 6)
	{
		/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
		/// @DnDVersion : 1
		/// @DnDHash : 3DFFAFC7
		/// @DnDComment : This makes the character invisible.
		/// @DnDParent : 10399A3F
		/// @DnDArgument : "alpha" "0"
		image_alpha = 0;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 0C0D9ADB
	/// @DnDParent : 60CBBE2F
	else
	{
		/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
		/// @DnDVersion : 1
		/// @DnDHash : 7C47E445
		/// @DnDComment : This makes the character visible again.
		/// @DnDParent : 0C0D9ADB
		image_alpha = 1;
	}
}