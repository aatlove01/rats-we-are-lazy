//Debug
#region
if keyboard_check_pressed(ord("3")) room_goto(rm_night_results)

#endregion

//Room Control and Game Reset
#region
if (room == rm_start || room == rm_night_results) && keyboard_check_pressed(vk_space)
{
	if room == rm_start 
	{
		difficulty = 0
		food_gathered = 0
		reserves = 0
		nights_survived = -1
	}
	nights_survived++
	if max_difficulty < 10 difficulty++
	{
	room_goto(rm_mainTester)
	alarm[0] = 1800
	}
}

if room == rm_game_over && keyboard_check_pressed(vk_space) room_goto(rm_start)

#endregion