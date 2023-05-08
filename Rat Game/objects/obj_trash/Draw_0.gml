/// @description Insert description here
// You can write your code in this editor
if(playerInTrigger && !obj_player.holding) {
	draw_sprite_ext(spr_trashCollection, variation, x+ offset,y + offset, 1.2,1.2, 1*Rvariation, c_yellow, 1)
	draw_sprite_ext(spr_trashCollection, variation, x+ offset,y + offset, 1,1, 1*Rvariation, c_white, 1)
}
if(playerInTrigger && obj_player.holding) {
	draw_sprite_ext(spr_trashCollection, variation, x+ offset,y + offset, 1.1,1.1, 1*Rvariation, c_green, 1)
	draw_sprite_ext(spr_trashCollection, variation, x+ offset,y + offset, .9,.9, 1*Rvariation, c_white, 1)
}

draw_sprite_ext(spr_trashCollection, variation, x+ offset,y + offset, 1,1, 1*Rvariation, c_white, 1)