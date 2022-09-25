/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 39AB58F4
/// @DnDComment : If my fire instance exists,$(13_10)$(13_10)and my fire is fading away,$(13_10)$(13_10)and the window frame is the$(13_10)one for the fire (3),$(13_10)$(13_10)Change it to the empty frame$(13_10)and set fire variable to noone$(13_10)$(13_10)Also start the window's fade$(13_10)to frame 4 (see Draw event)
/// @DnDArgument : "obj" "my_fire"
var l39AB58F4_0 = false;
l39AB58F4_0 = instance_exists(my_fire);
if(l39AB58F4_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 660BC17B
	/// @DnDParent : 39AB58F4
	/// @DnDArgument : "var" "my_fire.image_alpha"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "1"
	if(my_fire.image_alpha < 1)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 459C0FF9
		/// @DnDParent : 660BC17B
		/// @DnDArgument : "var" "image_index"
		/// @DnDArgument : "value" "3"
		if(image_index == 3)
		{
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 399259A8
			/// @DnDParent : 459C0FF9
			/// @DnDArgument : "value" "4"
			/// @DnDArgument : "instvar" "11"
			image_index = 4;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5D67DA0B
			/// @DnDParent : 459C0FF9
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "var" "fire_fade_alpha"
			fire_fade_alpha = 1;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2673FC4B
			/// @DnDParent : 459C0FF9
			/// @DnDArgument : "expr" "noone"
			/// @DnDArgument : "var" "my_fire"
			my_fire = noone;
		
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 18F2246A
			/// @DnDComment : Start Alarm 0 in my smoke$(13_10)so it fades away
			/// @DnDApplyTo : my_smoke
			/// @DnDParent : 459C0FF9
			/// @DnDArgument : "steps" "1"
			with(my_smoke) {
			alarm_set(0, 1);
			
			}
		}
	}
}