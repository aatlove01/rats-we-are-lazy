/// @description Insert description here
// You can write your code in this editor

x_dir = 0
y_dir = 0

if(keyboard_check(vk_up)) {
	y_dir -= 1
}
if(keyboard_check(vk_down)) {
	y_dir += 1
}
if(keyboard_check(vk_left)) {
	x_dir -= 1
}
if(keyboard_check(vk_right)) {
	x_dir += 1
}

directionFacing = arctan2(x_dir, y_dir) * 180 / pi;

y += y_dir * moveSpeed
x += x_dir * moveSpeed