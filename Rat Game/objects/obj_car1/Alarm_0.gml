/// @description Insert description here
// You can write your code in this editor
sprite = choose(Car_1, Car_2, Car_3)
path = choose(CarPath, CarPath2, CarPath3, CarPath4)

with (other) path_start(path, carSpeed, path_action_stop, true)
show_debug_message("car on path")
show_debug_message(path)
if place_meeting(x,y,obj_car1){
	alarm[0] = 1;
}
