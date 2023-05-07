/// @description Phase 1 Time (Early Feeding)

show_debug_message("Begin Garbage Pickup")
alarm[1] = 3600
with (obj_garbagetruck) event_user(0)
