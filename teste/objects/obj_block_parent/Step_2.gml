/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 066C9669
/// @DnDComment : This condition checks if the player is found$(13_10)1 pixel below the block.$(13_10)$(13_10)If the player is there, we'll check if it's$(13_10)jumping up, and run the block's User Event 0$(13_10)(which means the block has been hit).$(13_10)
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_player"
/// @DnDSaveInfo : "object" "obj_player"
var l066C9669_0 = instance_place(x + 0, y + 1, obj_player);
if ((l066C9669_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0F6B77D0
	/// @DnDComment : To hit a block, the player has to be jumping up.$(13_10)However after a collision was found, then the Y velocity$(13_10)will already have been set to 0, so we can't use that$(13_10)to check if the player is jumping.$(13_10)$(13_10)We instead check if the player's previous Y position$(13_10)(from the last frame) was greater than its current Y$(13_10)position, meaning it moved upwards. This satisfies our$(13_10)conditions for hitting a block.
	/// @DnDParent : 066C9669
	/// @DnDArgument : "var" "obj_player.yprevious"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "obj_player.y"
	if(obj_player.yprevious > obj_player.y)
	{
		/// @DnDAction : YoYo Games.Instances.Call_User_Event
		/// @DnDVersion : 1
		/// @DnDHash : 3F99A9BC
		/// @DnDComment : This runs User Event 0 for this block.
		/// @DnDParent : 0F6B77D0
		event_user(0);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 54FEA473
		/// @DnDComment : This changes the Y velocity of the player so it$(13_10)falls faster, as feedback for hitting the block.
		/// @DnDParent : 0F6B77D0
		/// @DnDArgument : "expr" "4"
		/// @DnDArgument : "var" "obj_player.vel_y"
		obj_player.vel_y = 4;
	}
}