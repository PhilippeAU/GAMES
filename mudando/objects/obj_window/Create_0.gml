/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 305B764C
/// @DnDComment : ID of fire instance created$(13_10)on this window$(13_10)$(13_10)If there is no fire, this is$(13_10)equal to noone
/// @DnDArgument : "expr" "noone"
/// @DnDArgument : "var" "my_fire"
my_fire = noone;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1FBC1E18
/// @DnDComment : Alpha for the fire frame$(13_10)used to fade away$(13_10)when fire is extinguished
/// @DnDArgument : "var" "fire_fade_alpha"
fire_fade_alpha = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0D5BEFCF
/// @DnDComment : Y offset for the smoke$(13_10)instance to appear on$(13_10)this window
/// @DnDArgument : "expr" "-268"
/// @DnDArgument : "var" "smoke_y_offset"
smoke_y_offset = -268;

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 4649196E
/// @DnDComment : Create smoke instance$(13_10)and store its ID in the$(13_10)my_smoke variable
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos" "smoke_y_offset"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "var" "my_smoke"
/// @DnDArgument : "objectid" "obj_smoke"
/// @DnDArgument : "layer" ""Spawns""
/// @DnDSaveInfo : "objectid" "obj_smoke"
my_smoke = instance_create_layer(x + 0, y + smoke_y_offset, "Spawns", obj_smoke);

/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 6788EC8C
/// @DnDComment : Set the alpha of my_smoke$(13_10)to 0 so it's not visible$(13_10)by default
/// @DnDApplyTo : my_smoke
/// @DnDArgument : "instvar" "13"
with(my_smoke) {
image_alpha = 0;
}