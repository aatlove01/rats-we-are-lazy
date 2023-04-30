/// @description Insert description here
// You can write your code in this editor
if(distance_to_object(obj_player) < viewDistance){
	if(place_meeting(x,y,obj_player) && player_dead == false){
		obj_player.isDead = true;
		player_dead = true
		alarm[0] = 180
	} else {
		mp_potential_step(obj_player.x, obj_player.y, walkSpeed, pointer_null);
	}
}

if(y-yprevious != 0 || x-xprevious != 0){
	directionFacing = radtodeg(arctan2(x-xprevious, y-yprevious));
}