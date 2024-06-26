/mob/Logout()
	GLOB.nanomanager.user_logout(src) // this is used to clean up (remove) this user's Nano UIs
	player_list -= src
	log_access("Logout: [key_name(src)]")

	if (admin_datums[ckey])
		if (ticker && ticker.current_state == GAME_STATE_PLAYING) //Only report this stuff if we are currently playing.
			message_admins("Staff logout: [key_name(src)]", key_name(src))

	..()
	return TRUE
