/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 1085FF57
/// @DnDArgument : "key" "vk_up"
var l1085FF57_0;
l1085FF57_0 = keyboard_check(vk_up);
if (l1085FF57_0)
{
	/// @DnDAction : YoYo Games.Movement.Add_Motion
	/// @DnDVersion : 1
	/// @DnDHash : 05A6DDC0
	/// @DnDParent : 1085FF57
	/// @DnDArgument : "dir" "image_angle"
	/// @DnDArgument : "speed" "0.1"
	motion_add(image_angle, 0.1);
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 75B26388
/// @DnDArgument : "key" "vk_left"
var l75B26388_0;
l75B26388_0 = keyboard_check(vk_left);
if (l75B26388_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 60CF2E93
	/// @DnDParent : 75B26388
	/// @DnDArgument : "expr" "4"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "image_angle"
	image_angle += 4;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 311AA86F
/// @DnDArgument : "key" "vk_right"
var l311AA86F_0;
l311AA86F_0 = keyboard_check(vk_right);
if (l311AA86F_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 28167F7D
	/// @DnDParent : 311AA86F
	/// @DnDArgument : "expr" "-4"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "image_angle"
	image_angle += -4;
}

/// @DnDAction : YoYo Games.Movement.Wrap_Room
/// @DnDVersion : 1
/// @DnDHash : 5D480F6F
move_wrap(1, 1, 0);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 530847F4
/// @DnDArgument : "var" "obj_game.ammo"
/// @DnDArgument : "op" "2"
if(obj_game.ammo > 0)
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Pressed
	/// @DnDVersion : 1.1
	/// @DnDHash : 7C8DD015
	/// @DnDParent : 530847F4
	var l7C8DD015_0;
	l7C8DD015_0 = mouse_check_button_pressed(mb_left);
	if (l7C8DD015_0)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 081DEF25
		/// @DnDParent : 7C8DD015
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_bullet"
		/// @DnDSaveInfo : "objectid" "obj_bullet"
		instance_create_layer(x + 0, y + 0, "Instances", obj_bullet);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0C7C7499
		/// @DnDParent : 7C8DD015
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "obj_game.ammo"
		obj_game.ammo += -1;
	}
}