/// @description Insert description here
// You can write your code in this editor
if path_position >= 1{
	alarm[0] = 10
}

if place_meeting(x,y,obj_player){
	obj_player.isHit = true
}

if distance_to_object(obj_player) < 150 && honkCooldownCounter >= honkCooldown{
	audio_play_sound(horn, 0, false)
	honkCooldownCounter = 0
}
honkCooldownCounter++