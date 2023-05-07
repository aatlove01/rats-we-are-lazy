/// @description Insert description here
// You can write your code in this editor
if min(distance_to_object(obj_trashcan), distance_to_object(obj_trashbag)) < minTrashDist {
	path_speed = lerp(path_speed, 0, 0.01)
}
else{
	path_speed = lerp(path_speed, carSpeed, 0.01)
}
if path_speed < 0.01{
	instance = noone
	//find nearest trashcan or trashbag
	if distance_to_object(obj_trashcan) < distance_to_object(obj_trashbag)
		instance = instance_nearest(x,y,obj_trashcan)
	else
		instance = instance_nearest(x,y,obj_trashbag)
		
	//smoothly move garbage into garbagetruck
	with(instance){
		x = lerp(x, other.x, 0.01)
		y = lerp(y, other.y, 0.01)
		//destroy the garbage once it reaches the truck
		if distance_to_point(other.x, other.y) < 10
			instance_destroy(self)
	}
}
