/// @description Phase 2 Time (Garbage Pickup)

show_debug_message("Garbage Pickup Ending")
show_night_end = true
alarm[2] = hint_message_duration
with(obj_arrow){
	visible = true
}

with(obj_grate) {
	show_tooltip = true
}