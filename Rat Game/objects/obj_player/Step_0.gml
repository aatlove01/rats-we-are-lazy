/// @description Insert description here
// You can write your code in this editor
dt = delta_time / 100000

if(isHit){
	isHit = false
	if isInvulnerable == false{
		random_sound = irandom_range(1,2)
		random_pitch = random_range(0.75,1.1)
		if random_sound == 1 audio_play_sound(snd_player_damage_1, 0, false, 1, 0, random_pitch)
		else if random_sound == 2 audio_play_sound(snd_player_damage_2, 0, false, 1, 0, random_pitch)
		currentHP--
		isInvulnerable = true
		alarm[1] = iFrames
	}
}
if(currentHP <= 0) && playerDeathTimer == false{
	playerDeathTimer = true
	alarm[0] = 180
	moveSpeed = 0
	turnSpeed = 0
}

#region Player Movement
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
	sprite = DashingRat;
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
#endregion

