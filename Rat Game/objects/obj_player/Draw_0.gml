/// @description Insert description here
// You can write your code in this editor

if isInvulnerable = true{
	if invulnerableBlinkCounter >= invulnerableBlinkFrames{
		if blink_alpha == 0{
			blink_alpha = 1
			invulnerableBlinkCounter = 0
		}
		else if blink_alpha == 1{
			blink_alpha = 0
			invulnerableBlinkCounter = 0
		}
	}
	invulnerableBlinkCounter++
	show_debug_message(invulnerableBlinkCounter)
}
draw_sprite_ext(sprite, int64(spriteIdx) % image_number, x, y, 1,1, directionFacing, c_white, blink_alpha);

if(currentHP <= 0){
	sprite = DeadRat
}