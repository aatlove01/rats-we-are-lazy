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
	newDir = point_direction(0,0,x_dir,y_dir);
	//show_debug_message(angle_difference(directionFacing, di))
	directionFacing += angle_difference(newDir, directionFacing) * turnSpeed;
	//directionFacing = lerp(directionFacing, newDir, turnSpeed);
}
dt = delta_time / 100000
y += y_dir * moveSpeed * dt
x += x_dir * moveSpeed * dt