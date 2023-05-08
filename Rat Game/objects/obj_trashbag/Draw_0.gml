if(!destroyed && playerInTrigger && global.lastTrashbagInPlayer == id){
	draw_set_halign(fa_center)
	draw_set_font(fnt_Game)
	draw_text(x, y - 50, "X to scavenge in the trash")
}

if(destroyed) {
	draw_sprite_ext(destroyedSprite, variation, x, y, 1,1, 0, c_white, 1)
} else {
	draw_sprite_ext(trashSprite, 0, x, y, 1,1, 0, c_white, 1)
}