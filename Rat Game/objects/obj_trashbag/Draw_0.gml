if(!destroyed && playerInTrigger){
	draw_set_halign(fa_center);
	draw_text(x, y - 50, "E to tear up trash bag");
}

draw_sprite_ext(trashSprite, 0, x, y, 0.5,0.5, 0, c_white, 1);