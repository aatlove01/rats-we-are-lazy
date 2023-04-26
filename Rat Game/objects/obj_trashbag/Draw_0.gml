if(!destroyed && playerInTrigger){
	draw_set_halign(fa_center);
	draw_text(x, y - 50, "E to tear up trash bag");
}

if(trashSprite == TrashbagDestroyed) {
	draw_sprite_ext(trashSprite, variation, x, y, 1,1, 0, c_white, 1);
} else {
	draw_sprite_ext(trashSprite, 0, x, y, 1,1, 0, c_white, 1);
}