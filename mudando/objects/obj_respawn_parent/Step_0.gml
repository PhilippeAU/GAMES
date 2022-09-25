/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6600A769
/// @DnDComment : This condition checks if the $(13_10)top boundary of the instance$(13_10)is below the room
/// @DnDArgument : "var" "bbox_top"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "room_height"
if(bbox_top > room_height)
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 7ED0D08D
	/// @DnDComment : Subtract room_height from y$(13_10)so the instance moves back $(13_10)above the room to enter again$(13_10)and keep being recycled
	/// @DnDParent : 6600A769
	/// @DnDArgument : "value" "-room_height"
	/// @DnDArgument : "value_relative" "1"
	/// @DnDArgument : "instvar" "1"
	y += -room_height;

	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 7D934994
	/// @DnDComment : Also subtract its sprite_height$(13_10)from y so it doesn't appear$(13_10)in the room first but above it
	/// @DnDParent : 6600A769
	/// @DnDArgument : "value" "-sprite_height"
	/// @DnDArgument : "value_relative" "1"
	/// @DnDArgument : "instvar" "1"
	y += -sprite_height;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5E4DDAD2
	/// @DnDComment : If the instance needs to get$(13_10)a new random x position on$(13_10)respawning, get a random x$(13_10)and apply it
	/// @DnDParent : 6600A769
	/// @DnDArgument : "var" "random_x_on_respawn"
	/// @DnDArgument : "value" "true"
	if(random_x_on_respawn == true)
	{
		/// @DnDAction : YoYo Games.Random.Get_Random_Number
		/// @DnDVersion : 1
		/// @DnDHash : 4B775494
		/// @DnDParent : 5E4DDAD2
		/// @DnDArgument : "var" "x"
		/// @DnDArgument : "type" "1"
		/// @DnDArgument : "max" "room_width"
		x = floor(random_range(0, room_width + 1));
	}
}