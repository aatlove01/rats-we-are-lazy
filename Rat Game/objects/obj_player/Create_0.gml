/// @description Insert description here
// You can write your code in this editor
moveSpeed = 10
directionFacing = 0
turnSpeed = 0.35
sprite = ratAnimated
isHit = false
isInvulnerable = false
iFrames = 120
iFrameCounter = iFrames
spriteIdx = 0
dashingTimer = 0;
dashDuration = 3;
dashDelay = 3;
maxHP = 5
currentHP = maxHP
blinkBlendNormal = true

with (obj_manager) {
	reserves += food_gathered
	food_gathered = 0
	reserves -= 5
	other.x = spawn_x
	other.y = spawn_y
}