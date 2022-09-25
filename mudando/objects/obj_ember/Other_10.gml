/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 08A3DA8B
/// @DnDComment : Random base direction
/// @DnDArgument : "var" "base_direction"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "-50"
/// @DnDArgument : "max" "-54"
base_direction = floor(random_range(-50, -54 + 1));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 449B958B
/// @DnDComment : Random xscale
/// @DnDArgument : "var" "image_xscale"
/// @DnDArgument : "min" "0.3"
image_xscale = (random_range(0.3, 1));

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 56D22572
/// @DnDComment : 1/3rd chance of getting$(13_10)a larger xscale$(13_10)$(13_10)choose() is a GML function$(13_10)A DnD equivalent action exists too
/// @DnDArgument : "expr" "choose(0, 0, 1)"
if(choose(0, 0, 1))
{
	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 69E821FD
	/// @DnDComment : See the range is larger here
	/// @DnDParent : 56D22572
	/// @DnDArgument : "var" "image_xscale"
	/// @DnDArgument : "min" "0.6"
	/// @DnDArgument : "max" "4"
	image_xscale = (random_range(0.6, 4));
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6D2188AB
/// @DnDComment : If xscale is >1.5 then$(13_10)the ember should get thinner$(13_10)the longer it gets
/// @DnDArgument : "var" "image_xscale"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "1"
if(image_xscale > 1)
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 7D3CD771
	/// @DnDParent : 6D2188AB
	/// @DnDArgument : "value" "1 / image_xscale"
	/// @DnDArgument : "instvar" "16"
	image_yscale = 1 / image_xscale;

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 5E613D3C
	/// @DnDComment : Different sprite for longer embers
	/// @DnDParent : 6D2188AB
	/// @DnDArgument : "spriteind" "spr_ember_long"
	/// @DnDSaveInfo : "spriteind" "spr_ember_long"
	sprite_index = spr_ember_long;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 2DD56E7C
else
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 0562C68B
	/// @DnDComment : Match yscale to xscale
	/// @DnDParent : 2DD56E7C
	/// @DnDArgument : "value" "image_xscale"
	/// @DnDArgument : "instvar" "16"
	image_yscale = image_xscale;

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 42BD570D
	/// @DnDComment : Different sprite for shorter embers
	/// @DnDParent : 2DD56E7C
	/// @DnDArgument : "spriteind" "spr_ember_short"
	/// @DnDSaveInfo : "spriteind" "spr_ember_short"
	sprite_index = spr_ember_short;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 2D2B91C9
/// @DnDComment : Random speed$(13_10)higher for longer embers
/// @DnDArgument : "var" "speed"
/// @DnDArgument : "min" "5 * image_xscale"
/// @DnDArgument : "max" "8 * image_xscale"
speed = (random_range(5 * image_xscale, 8 * image_xscale));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 2ED0D8C7
/// @DnDComment : Random alpha
/// @DnDArgument : "var" "image_alpha"
/// @DnDArgument : "min" "0.6"
/// @DnDArgument : "max" "2"
image_alpha = (random_range(0.6, 2));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 20DE1CD9
/// @DnDComment : Random oscillation amount$(13_10)$(13_10)This can be higher for smaller$(13_10)embers
/// @DnDArgument : "var" "osc_amount"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "4"
/// @DnDArgument : "max" "8 / image_xscale"
osc_amount = floor(random_range(4, 8 / image_xscale + 1));

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 13DB91B4
/// @DnDComment : Set oscillation speed
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "osc_speed"
osc_speed = 1;

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 568A9E93
/// @DnDComment : Random fade rate
/// @DnDArgument : "var" "fade_rate"
/// @DnDArgument : "min" "0.001"
/// @DnDArgument : "max" "0.01"
fade_rate = (random_range(0.001, 0.01));