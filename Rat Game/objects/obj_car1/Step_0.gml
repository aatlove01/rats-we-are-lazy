/// @description Insert description here
// You can write your code in this editor
if path_position >= 1{
	randomize()
	sprite = choose(Car_1, Car_2, Car_3)
	path = choose(CarPath, CarPath2, CarPath3, CarPath4)
	path_start(path, carSpeed, path_action_stop, true)
}

if place_meeting(x,y,obj_player){
	obj_player.isDead = true
}

if place_meeting(x,y,obj_car1){
	alarm[0] = 1;
}