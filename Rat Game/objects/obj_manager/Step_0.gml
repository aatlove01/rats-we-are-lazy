//Debug
#region
if keyboard_check_pressed(ord("3")) 
{
	reserves += food_gathered + trash_collected
	room_goto(rm_night_results)
}

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
	if difficulty < max_difficulty difficulty++


	if reserves < 0{
		room_goto(rm_game_over)
	}else {
		room_goto(rm_mainTester)
		alarm[0] = garbage_pickup_time
	}
}

if room == rm_game_over && keyboard_check_pressed(vk_space) room_goto(rm_start)

#endregion