/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5DD824C5
/// @DnDComment : If the player is falling down$(13_10)$(13_10)Switch to jump animation$(13_10)Once that animation ends$(13_10)the player jumps$(13_10)$(13_10)See the Animation End event
/// @DnDArgument : "var" "vspeed"
/// @DnDArgument : "op" "2"
if(vspeed > 0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 0491EDE6
	/// @DnDParent : 5DD824C5
	/// @DnDArgument : "spriteind" "sprite_jump"
	sprite_index = sprite_jump;
	image_index = 0;

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 6D1B5D81
	/// @DnDComment : Stop player until Animation End
	/// @DnDParent : 5DD824C5
	/// @DnDArgument : "type" "2"
	vspeed = 0;

	/// @DnDAction : YoYo Games.Movement.Set_Gravity_Force
	/// @DnDVersion : 1
	/// @DnDHash : 1973134D
	/// @DnDComment : Disable gravity so the player$(13_10)stays stopped
	/// @DnDParent : 5DD824C5
	/// @DnDArgument : "force" "0"
	gravity = 0;

	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 39E37858
	/// @DnDComment : Position player relative to window$(13_10)so no matter where the collision happens$(13_10)vertically it's always in the correct$(13_10)position for the jump animation
	/// @DnDParent : 5DD824C5
	/// @DnDArgument : "value" "other.y - (bbox_bottom - y)"
	/// @DnDArgument : "instvar" "1"
	y = other.y - (bbox_bottom - y);
}