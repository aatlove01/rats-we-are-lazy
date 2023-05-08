/// @description Insert description here
// You can write your code in this editor
if(distance_to_object(obj_player) < viewDistance){
	if(place_meeting(x,y,obj_player)){
		obj_player.isHit = true;
	} else {
		mp_potential_step(obj_player.x, obj_player.y, walkSpeed, pointer_null);
	}
}

if distance_to_object(obj_player) < 150 && barkCooldownCounter >= barkCooldown{
	bark = irandom_range(1,4)
	if bark == 1 audio_play_sound(snd_dog_bark_1, 0, false,1,0,barkPitch)
	else if bark == 2 audio_play_sound(snd_dog_bark_2, 0, false,1,0,barkPitch)
	else if bark == 3 audio_play_sound(snd_dog_bark_3, 0, false,1,0,barkPitch)
	else if bark == 4 audio_play_sound(snd_dog_bark_4, 0, false,1,0,barkPitch)
	
	barkCooldownCounter = irandom_range(-90,10)
}
barkCooldownCounter++