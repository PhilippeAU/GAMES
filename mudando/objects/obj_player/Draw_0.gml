/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 5E508DE8
draw_self();

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 353A43B0
/// @DnDComment : If the player is wrapping, then we need$(13_10)to draw the sprite on the other side of$(13_10)the screen so we can see the player on$(13_10)both sides
/// @DnDArgument : "var" "wrapping"
/// @DnDArgument : "value" "true"
if(wrapping == true)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 64CFEE77
	/// @DnDComment : If the player is currently on$(13_10)the right side of the screen
	/// @DnDParent : 353A43B0
	/// @DnDArgument : "var" "x + wrap_margin"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "room_width"
	if(x + wrap_margin > room_width)
	{
		/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 04B29DA9
		/// @DnDComment : draw the player sprite$(13_10)but with a -room_width$(13_10)offset on the x axis,$(13_10)so it draws on the left$(13_10)side of the screen
		/// @DnDParent : 64CFEE77
		/// @DnDArgument : "x" "-room_width"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "xscale" "image_xscale"
		/// @DnDArgument : "rot_relative" "1"
		/// @DnDArgument : "sprite" "sprite_index"
		/// @DnDArgument : "frame" "image_index"
		draw_sprite_ext(sprite_index, image_index, x + -room_width, y + 0, image_xscale, 1, image_angle + 0, $FFFFFF & $ffffff, 1);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 6980CBEC
	/// @DnDComment : otherwise
	/// @DnDParent : 353A43B0
	else
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7CC70B53
		/// @DnDComment : if the player is currently on$(13_10)the left side of the screen
		/// @DnDParent : 6980CBEC
		/// @DnDArgument : "var" "x - wrap_margin"
		/// @DnDArgument : "op" "1"
		if(x - wrap_margin < 0)
		{
			/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
			/// @DnDVersion : 1
			/// @DnDHash : 60C23696
			/// @DnDComment : draw the player sprite$(13_10)with a +room_width offset$(13_10)on the x axis, so it draws$(13_10)on the right side of the$(13_10)screen
			/// @DnDParent : 7CC70B53
			/// @DnDArgument : "x" "room_width"
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "xscale" "image_xscale"
			/// @DnDArgument : "rot_relative" "1"
			/// @DnDArgument : "sprite" "sprite_index"
			/// @DnDArgument : "frame" "image_index"
			draw_sprite_ext(sprite_index, image_index, x + room_width, y + 0, image_xscale, 1, image_angle + 0, $FFFFFF & $ffffff, 1);
		}
	}
}