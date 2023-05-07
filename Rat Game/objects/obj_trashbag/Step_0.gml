/// @description Insert description here
// You can write your code in this editor
//placing this in an if statement to run code only the first time player enters trashbag
if (place_meeting(x,y, obj_player)){
	playerInTrigger = true;
	global.lastTrashbagInPlayer = id;
}
else
	playerInTrigger = false

if(!destroyed && playerInTrigger && keyboard_check(ord("X"))){
	destroyed = true;
	obj_manager.food_gathered+=1;
	show_debug_message(obj_manager.food_gathered);
	trashSprite = TrashbagDestroyed;
	variation = irandom(1);
}