/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5B354989
/// @DnDComment : If the window is below the room,$(13_10)we are going to move it back above the room$(13_10)so it can show up again$(13_10)$(13_10)In this way we recycle windows$(13_10)instead of spawning new ones
/// @DnDArgument : "var" "y"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "room_height + 360"
if(y > room_height + 360)
{
	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 3F4D2F5F
	/// @DnDComment : Random x value in room, with 250 pixel margin
	/// @DnDParent : 5B354989
	/// @DnDArgument : "var" "new_x"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "min" "250"
	/// @DnDArgument : "max" "room_width - 250"
	var new_x = floor(random_range(250, room_width - 250 + 1));

	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 1E878ECB
	/// @DnDComment : Go to that position
	/// @DnDParent : 5B354989
	/// @DnDArgument : "x" "new_x"
	/// @DnDArgument : "y" "-200"
	x = new_x;
	y = -200;

	/// @DnDAction : YoYo Games.Common.Apply_To
	/// @DnDVersion : 1
	/// @DnDHash : 0360D22E
	/// @DnDApplyTo : my_smoke
	/// @DnDParent : 5B354989
	with(my_smoke) {
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 540DD3EB
		/// @DnDComment : Move the my_smoke instance$(13_10)back on the window
		/// @DnDParent : 0360D22E
		/// @DnDArgument : "x" "other.x"
		/// @DnDArgument : "y" "other.y + other.smoke_y_offset"
		x = other.x;
		y = other.y + other.smoke_y_offset;
	
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 71E645E3
		/// @DnDComment : Change its alpha$(13_10)It will be random$(13_10)so it's visible now$(13_10)$(13_10)unless it's changed in the default$(13_10)case at the bottom
		/// @DnDParent : 0360D22E
		/// @DnDArgument : "value" "random_range(0.4, 1)"
		/// @DnDArgument : "instvar" "13"
		image_alpha = random_range(0.4, 1);
	}

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 7AE208E0
	/// @DnDComment : Roll a dice for what happens to this window$(13_10)Value is between 0 and 3 (inclusive)$(13_10)$(13_10)0 - Civilian on this window$(13_10)1 - Fire on this window$(13_10)2 & 3 - Nothing
	/// @DnDParent : 5B354989
	/// @DnDArgument : "var" "chance"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "max" "3"
	var chance = floor(random_range(0, 3 + 1));

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 4828A124
	/// @DnDComment : Change frame to close window$(13_10)Either 0 or 1
	/// @DnDParent : 5B354989
	/// @DnDArgument : "imageind" "choose(0, 1)"
	/// @DnDArgument : "spriteind" "spr_window"
	/// @DnDSaveInfo : "spriteind" "spr_window"
	sprite_index = spr_window;
	image_index = choose(0, 1);

	/// @DnDAction : YoYo Games.Switch.Switch
	/// @DnDVersion : 1
	/// @DnDHash : 6B01BFAD
	/// @DnDParent : 5B354989
	/// @DnDArgument : "expr" "chance"
	var l6B01BFAD_0 = chance;
	switch(l6B01BFAD_0)
	{
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 1A81EFC3
		/// @DnDComment : Create civilian and change frame to 2 which is used for civilians
		/// @DnDParent : 6B01BFAD
		case 0:
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 3EEA9C06
			/// @DnDParent : 1A81EFC3
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "obj_fire_civilian"
			/// @DnDArgument : "layer" ""Spawns""
			/// @DnDSaveInfo : "objectid" "obj_fire_civilian"
			instance_create_layer(x + 0, y + 0, "Spawns", obj_fire_civilian);
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 71AA6632
			/// @DnDParent : 1A81EFC3
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos" "10"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "obj_civilian"
			/// @DnDArgument : "layer" ""Spawns""
			/// @DnDSaveInfo : "objectid" "obj_civilian"
			instance_create_layer(x + 0, y + 10, "Spawns", obj_civilian);
		
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 7681E65D
			/// @DnDParent : 1A81EFC3
			/// @DnDArgument : "imageind" "2"
			/// @DnDArgument : "spriteind" "spr_window"
			/// @DnDSaveInfo : "spriteind" "spr_window"
			sprite_index = spr_window;
			image_index = 2;
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 1B1C77D3
		/// @DnDComment : Create fire and change frame to 3 which is used for fire
		/// @DnDParent : 6B01BFAD
		/// @DnDArgument : "const" "1"
		case 1:
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 19298222
			/// @DnDParent : 1B1C77D3
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "my_fire"
			/// @DnDArgument : "objectid" "obj_fire"
			/// @DnDArgument : "layer" ""Spawns""
			/// @DnDSaveInfo : "objectid" "obj_fire"
			my_fire = instance_create_layer(x + 0, y + 0, "Spawns", obj_fire);
		
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 3AE79C84
			/// @DnDParent : 1B1C77D3
			/// @DnDArgument : "imageind" "3"
			/// @DnDArgument : "spriteind" "spr_window"
			/// @DnDSaveInfo : "spriteind" "spr_window"
			sprite_index = spr_window;
			image_index = 3;
			break;
	
		/// @DnDAction : YoYo Games.Switch.Default
		/// @DnDVersion : 1
		/// @DnDHash : 475A04D7
		/// @DnDComment : If neither of the other cases ran
		/// @DnDParent : 6B01BFAD
		default:
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 4B02AE6F
			/// @DnDComment : Set my_smoke alpha to 0$(13_10)so it disappears as the$(13_10)window is now closed
			/// @DnDApplyTo : my_smoke
			/// @DnDParent : 475A04D7
			/// @DnDArgument : "instvar" "13"
			with(my_smoke) {
			image_alpha = 0;
			}
			break;
	}
}