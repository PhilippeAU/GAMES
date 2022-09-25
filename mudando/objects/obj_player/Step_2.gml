/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5F927D9C
/// @DnDComment : If the player is falling down
/// @DnDArgument : "var" "vspeed"
/// @DnDArgument : "op" "2"
if(vspeed > 0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4F497AEE
	/// @DnDComment : and the current sprite$(13_10)is the in-air sprite
	/// @DnDParent : 5F927D9C
	/// @DnDArgument : "var" "sprite_index"
	/// @DnDArgument : "value" "sprite_air"
	if(sprite_index == sprite_air)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 3D86A2F6
		/// @DnDComment : Start in-air to fall$(13_10)transition
		/// @DnDParent : 4F497AEE
		/// @DnDArgument : "spriteind" "sprite_air_to_fall"
		sprite_index = sprite_air_to_fall;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 159613CA
		/// @DnDComment : Run Alarm 0 later$(13_10)which will check if the$(13_10)player is still falling$(13_10)and play the falling sfx
		/// @DnDParent : 4F497AEE
		/// @DnDArgument : "steps" "20"
		alarm_set(0, 20);
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 30C1A96A
/// @DnDComment : If gravity is >0$(13_10)meaning that the $(13_10)player is not$(13_10)charging for a$(13_10)jump and can move$(13_10)around
/// @DnDArgument : "var" "gravity"
/// @DnDArgument : "op" "2"
if(gravity > 0)
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 32443635
	/// @DnDComment : Use lerp to smoothly move$(13_10)the x towards target_x$(13_10)$(13_10)The third argument is how$(13_10)quick it is, range is 0-1$(13_10)$(13_10)Lower value, smoother but slower$(13_10)Higher value, snaps but faster
	/// @DnDInput : 3
	/// @DnDParent : 30C1A96A
	/// @DnDArgument : "var" "x"
	/// @DnDArgument : "function" "lerp"
	/// @DnDArgument : "arg" "x"
	/// @DnDArgument : "arg_1" "target_x"
	/// @DnDArgument : "arg_2" "0.1"
	x = lerp(x, target_x, 0.1);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 51A456A3
	/// @DnDComment : x - xprevious gets the movement$(13_10)for the current step on the x axis,$(13_10)by comparing the current and previous$(13_10)x coordinates$(13_10)$(13_10)If it's >4 it means we moved right$(13_10)$(13_10)4 is just our threshold for moving in$(13_10)a direction, also gives the player more$(13_10)weight
	/// @DnDParent : 30C1A96A
	/// @DnDArgument : "var" "x - xprevious"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "4"
	if(x - xprevious > 4)
	{
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 158D1847
		/// @DnDComment : so we set the scale to normal
		/// @DnDParent : 51A456A3
		image_xscale = 1;
		image_yscale = 1;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 2013592E
	/// @DnDComment : otherwise
	/// @DnDParent : 30C1A96A
	else
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 67C17FC6
		/// @DnDComment : if it's <-4 it means we moved left
		/// @DnDParent : 2013592E
		/// @DnDArgument : "var" "x - xprevious"
		/// @DnDArgument : "op" "1"
		/// @DnDArgument : "value" "-4"
		if(x - xprevious < -4)
		{
			/// @DnDAction : YoYo Games.Instances.Sprite_Scale
			/// @DnDVersion : 1
			/// @DnDHash : 68F14B40
			/// @DnDComment : so we flip the sprite
			/// @DnDParent : 67C17FC6
			/// @DnDArgument : "xscale" "-1"
			image_xscale = -1;
			image_yscale = 1;
		}
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 46098C33
/// @DnDComment : HERE STARTS THE HORIZONTAL SCREEN WRAPPING LOGIC$(13_10)$(13_10)If wrapping is false, it means we are not wrapping,$(13_10)so we need to test if the player is starting to$(13_10)wrap the screen
/// @DnDArgument : "var" "wrapping"
/// @DnDArgument : "value" "false"
if(wrapping == false)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4D395B7B
	/// @DnDComment : x - margin: this is the left border of$(13_10)the instance according to our margin$(13_10)value$(13_10)$(13_10)If it's less than 0 it means it's beyond$(13_10)the left border of the screen, so the player$(13_10)should be teleported to the right side$(13_10)of the screen
	/// @DnDParent : 46098C33
	/// @DnDArgument : "var" "x - wrap_margin"
	/// @DnDArgument : "op" "1"
	if(x - wrap_margin < 0)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 58FDCAA2
		/// @DnDComment : Add +room_width to x
		/// @DnDParent : 4D395B7B
		/// @DnDArgument : "value" "room_width"
		/// @DnDArgument : "value_relative" "1"
		x += room_width;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 72F6BEBF
		/// @DnDComment : Add +room_width to target_x$(13_10)to keep them in sync
		/// @DnDParent : 4D395B7B
		/// @DnDArgument : "expr" "room_width"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "target_x"
		target_x += room_width;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7B696BB7
		/// @DnDComment : The player is wrapping now so $(13_10)it will be true, until it is$(13_10)done
		/// @DnDParent : 4D395B7B
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "wrapping"
		wrapping = true;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 551908CB
	/// @DnDParent : 46098C33
	else
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 29C50D3A
		/// @DnDComment : x + margin: right border$(13_10)$(13_10)If this is greater than room width$(13_10)then it's beyond the right border$(13_10)of the screen, so we should be $(13_10)teleported to the left side of $(13_10)the screen
		/// @DnDParent : 551908CB
		/// @DnDArgument : "var" "x + wrap_margin"
		/// @DnDArgument : "op" "2"
		/// @DnDArgument : "value" "room_width"
		if(x + wrap_margin > room_width)
		{
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 57FAB62A
			/// @DnDComment : Add -room_width to x
			/// @DnDParent : 29C50D3A
			/// @DnDArgument : "value" "-room_width"
			/// @DnDArgument : "value_relative" "1"
			x += -room_width;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 653C4638
			/// @DnDComment : Add -room_width to target_x
			/// @DnDParent : 29C50D3A
			/// @DnDArgument : "expr" "-room_width"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "target_x"
			target_x += -room_width;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4F662A33
			/// @DnDComment : Start wrapping
			/// @DnDParent : 29C50D3A
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "wrapping"
			wrapping = true;
		}
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 54E65D55
/// @DnDComment : If we are wrapping then$(13_10)we need to check if it$(13_10)is finished$(13_10)$(13_10)See Draw event for what$(13_10)happens while this is $(13_10)true
/// @DnDArgument : "var" "wrapping"
/// @DnDArgument : "value" "true"
if(wrapping == true)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4FFDC313
	/// @DnDComment : If left border is >0,$(13_10)meaning it's inside the room
	/// @DnDParent : 54E65D55
	/// @DnDArgument : "var" "x - wrap_margin"
	/// @DnDArgument : "op" "2"
	if(x - wrap_margin > 0)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7728C287
		/// @DnDComment : and if right border is$(13_10)<room_width, meaning it's$(13_10)inside the room too
		/// @DnDParent : 4FFDC313
		/// @DnDArgument : "var" "x + wrap_margin"
		/// @DnDArgument : "op" "1"
		/// @DnDArgument : "value" "room_width"
		if(x + wrap_margin < room_width)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 14A8DB10
			/// @DnDComment : Now that both borders are inside$(13_10)the room, it means we are not $(13_10)wrapping anymore, so we set it to$(13_10)false
			/// @DnDParent : 7728C287
			/// @DnDArgument : "expr" "false"
			/// @DnDArgument : "var" "wrapping"
			wrapping = false;
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 240F7DFB
	/// @DnDComment : If the right border of the instance$(13_10)is beyond the left border of the room$(13_10)$(13_10)Which means the player is trying to$(13_10)come back from a "right" wrap$(13_10)$(13_10)Then we need to teleport it back$(13_10)to the right side of the room
	/// @DnDParent : 54E65D55
	/// @DnDArgument : "var" "x + wrap_margin"
	/// @DnDArgument : "op" "1"
	if(x + wrap_margin < 0)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 7C433751
		/// @DnDComment : +room_width to x and target_x$(13_10)disable wrapping
		/// @DnDParent : 240F7DFB
		/// @DnDArgument : "value" "room_width"
		/// @DnDArgument : "value_relative" "1"
		x += room_width;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 313A848B
		/// @DnDParent : 240F7DFB
		/// @DnDArgument : "expr" "room_width"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "target_x"
		target_x += room_width;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0C82888D
		/// @DnDParent : 240F7DFB
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "wrapping"
		wrapping = false;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1F6A18D2
	/// @DnDComment : If the left border of the instance$(13_10)is beyond the right border of the room$(13_10)$(13_10)Which means the player is trying to$(13_10)come back from a "left" wrap$(13_10)$(13_10)Then we need to teleport it back$(13_10)to the left side of the room
	/// @DnDParent : 54E65D55
	/// @DnDArgument : "var" "x - wrap_margin"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "room_width"
	if(x - wrap_margin > room_width)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 24E41C07
		/// @DnDComment : -room_width to x and target_x$(13_10)disable wrapping
		/// @DnDParent : 1F6A18D2
		/// @DnDArgument : "value" "-room_width"
		/// @DnDArgument : "value_relative" "1"
		x += -room_width;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 02F2607E
		/// @DnDParent : 1F6A18D2
		/// @DnDArgument : "expr" "-room_width"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "target_x"
		target_x += -room_width;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 11EEC590
		/// @DnDParent : 1F6A18D2
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "wrapping"
		wrapping = false;
	}
}