/// @description Insert description here
// You can write your code in this editor
dt = delta_time / 100000

if(isDead){
	sprite = DeadRat
	return
}
x_dir = 0
y_dir = 0
new_x = x
new_y = y
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


if(dashingTimer > 0){
	sprite = JumpingRat;
	new_y += sin(degtorad(directionFacing)) * moveSpeed * 3 * dt;
	new_x -= cos(degtorad(directionFacing)) * moveSpeed * 3 * dt;
	dashingTimer -= dt;
	moved = false;
	dashDelay = 3;
}
else {
	dashDelay -= dt;
	sprite = ratAnimated;
	if(dashDelay <= 0 && keyboard_check(ord("Z"))){
		dashingTimer = dashDuration;
	}
}

if(moved){
	newDir = point_direction(0,0,x_dir,y_dir) + 180;
	directionFacing += angle_difference(newDir, directionFacing) * turnSpeed
	spriteIdx += dt;
	
	new_y = y + y_dir * moveSpeed * dt
	new_x = x + x_dir * moveSpeed * dt
}
if(!place_meeting(new_x,y,obj_collide)){
	x = new_x
}
if(!place_meeting(x,new_y,obj_collide)){
	y = new_y
}