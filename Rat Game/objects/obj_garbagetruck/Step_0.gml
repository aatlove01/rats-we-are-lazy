/// @description Insert description here
// You can write your code in this editor
if min(distance_to_object(obj_trashcan), distance_to_object(obj_trashbag)) < minTrashDist{
	path_speed = lerp(path_speed, 0, 0.1)
}
else{
	path_speed = lerp(path_speed, carSpeed, 0.1)
}