//Debug
#region
if keyboard_check_pressed(ord("3")) room_goto(rm_night_results)

#endregion

//Room Control
#region
if room == rm_start && keyboard_check_pressed(vk_space)
{
	room_goto(rm_mainTester)
	alarm[0] = 1800
}

#endregion