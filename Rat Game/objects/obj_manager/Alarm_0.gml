/// @description Phase 1 Time (Early Feeding)

show_debug_message("Begin Garbage Pickup")
alarm[1] = garbage_pickup_time
with (obj_garbagetruck) event_user(0)
