/// @description Insert description here
// You can write your code in this editor

x_dir = 0
y_dir = 0
moved = false
if(keyboard_check(vk_up)) {
	y_dir -= 1
	moved = true
}
if(keyboard_check(vk_down)) {
	y_dir += 1
	moved = true
}
if(keyboard_check(vk_left)) {
	x_dir -= 1
	moved = true
}
if(keyboard_check(vk_right)) {
	x_dir += 1
	moved = true
}

if(moved){
	newDir = point_direction(0,0,x_dir,y_dir) + 180;
	directionFacing += angle_difference(newDir, directionFacing) * turnSpeed
	dt = delta_time / 100000
	new_y = y + y_dir * moveSpeed * dt
	new_x = x + x_dir * moveSpeed * dt
	if(!place_meeting(new_x,y,obj_collide)){
		x = new_x
	}
	if(!place_meeting(x,new_y,obj_collide)){
		y = new_y
	}
}