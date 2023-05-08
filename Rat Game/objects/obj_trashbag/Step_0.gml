/// @description Insert description here
// You can write your code in this editor
//placing this in an if statement to run code only the first time player enters trashbag
if !visible { return }

if (place_meeting(x,y, obj_player)){
	playerInTrigger = true;
	global.lastTrashbagInPlayer = id;
}
else
	playerInTrigger = false

if(!destroyed && playerInTrigger && keyboard_check_pressed(ord("X"))){
	destroyed = true;
	obj_manager.food_gathered+=1;
	show_debug_message(obj_manager.food_gathered);
	variation = irandom(1);
	
	for(i = 0; i < irandom(5); i++) {
		instance_create_depth(x+irandom_range(-4,4),y+irandom_range(-4,4),-5, obj_trash)
	}
	
	if canPlaySound == true
	{
		canPlaySound = false
		random_rip = irandom_range(1,4)
		random_pitch = random_range(0.75,1.25)
		if random_rip == 1 audio_play_sound(snd_trash_rip_1, 0, false, 1, 0, random_pitch)
		else if random_rip == 2 audio_play_sound(snd_trash_rip_2, 0, false, 1, 0, random_pitch)
		else if random_rip == 3 audio_play_sound(snd_trash_rip_3, 0, false, 1, 0, random_pitch)
		else if random_rip == 4 audio_play_sound(snd_trash_rip_4, 0, false, 1, 0, random_pitch)
	}
}