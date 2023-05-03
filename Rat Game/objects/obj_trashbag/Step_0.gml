/// @description Insert description here
// You can write your code in this editor
playerInTrigger = place_meeting(x,y, obj_player);

if(!destroyed && playerInTrigger && keyboard_check(ord("E"))){
	
	destroyed = true;
	obj_manager.food_gathered+=1;
	
	show_debug_message(obj_manager.food_gathered);
	trashSprite = TrashbagDestroyed;
	variation = irandom(1);
	
	for(i = 0; i < irandom(3); i++) {
		instance_create_depth(x + random_range(-15,15), y + random_range(-15,15), 10, obj_trash);
	}
}