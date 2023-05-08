/// @description Insert description here
// You can write your code in this editor
tint = c_white
if isInvulnerable = true{
	if alarm[1] % 100 == 0{
		if tint == c_white
			tint = c_red
		else
			tint = c_white
	}
}
draw_sprite_ext(sprite, int64(spriteIdx) % image_number, x, y, 1,1, directionFacing, tint, 1);