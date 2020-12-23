/obj/item/clothing/mask/sack //wip to make you blind people to kidnap.
	name = "a cloth sack mask"
	desc = "A cloth bag placed on the head by force, or by choice."
	flags_inv = HIDEEARS|HIDEEYES|HIDEFACE|BLOCKHEADHAIR
	icon_state = "sack"
	item_state = "sack"
	w_class = 2

/obj/item/clothing/mask/sack/attack_hand(mob/user as mob)
	if (user.wear_mask == src && !user.IsAdvancedToolUser())
		return FALSE
	..()

/obj/item/clothing/mask/sack/scarecrow
	name = "a cloth sack mask with eyeholes"
	desc = "A cloth sack placed on the head by force, or by choice. It has crude eyeholes cut into it"
	icon_state = "scarecrow_sack"
	item_state = "scarecrow_sack"
	flags_inv = HIDEEARS|HIDEFACE|BLOCKHEADHAIR
	w_class = 2

/obj/item/clothing/mask/sack/scarecrow/attack_hand(mob/user as mob)
	if (user.wear_mask == src && !user.IsAdvancedToolUser())
		return TRUE //not as burdensome to take off, you can see what you're doing.
	..()

/obj/item/clothing/mask/rat
	name = "rat mask"
	desc = "A plastic mask in the form of a verminous rat."
	icon_state = "rat"
	item_state = "rat"
	flags_inv = HIDEFACE
	body_parts_covered = FACE
	w_class = 1
	blocks_scope = TRUE
	restricts_view = 1

/obj/item/clothing/mask/raven
	name = "raven mask"
	desc = "A plastic mask in the form of a carrion eating raven."
	icon_state = "raven"
	item_state = "raven"
	flags_inv = HIDEFACE
	body_parts_covered = FACE
	w_class = 1
	blocks_scope = TRUE
	restricts_view = 1

/obj/item/clothing/mask/bat
	name = "bat mask"
	desc = "A plastic mask in the form of a frightening bat." //nana-nananananana bat-mask!
	icon_state = "bat"
	item_state = "bat"
	flags_inv = HIDEFACE
	body_parts_covered = FACE
	w_class = 1
	blocks_scope = TRUE
	restricts_view = 1

/obj/item/clothing/mask/bear
	name = "bear mask"
	desc = "A plastic mask in the form of a not so cuddly bear."
	icon_state = "bear"
	item_state = "bear"
	flags_inv = HIDEFACE
	body_parts_covered = FACE
	w_class = 1
	blocks_scope = TRUE
	restricts_view = 1

/obj/item/clothing/mask/owl
	name = "owl mask"
	desc = "A plastic mask in the form of a all seeing owl."
	icon_state = "owl"
	item_state = "owl"
	flags_inv = HIDEFACE
	body_parts_covered = FACE
	w_class = 1
	blocks_scope = TRUE
	restricts_view = 1

/*According to all known laws of aviation, there is no way a bee should be able to fly.
Its wings are too small to get its fat little body off the ground.
The bee, of course, flies anyway because bees don't care what humans think is impossible.*/

/obj/item/clothing/mask/bee
	name = "bee mask"
	desc = "A plastic mask in the form of a buzzy bee."
	icon_state = "bee"
	item_state = "bee"
	flags_inv = HIDEFACE
	body_parts_covered = FACE
	w_class = 1
	blocks_scope = TRUE
	restricts_view = 1

/obj/item/clothing/mask/jackal
	name = "jackal mask"
	desc = "A plastic mask in the form of a scavenging jackal."
	icon_state = "jackal"
	item_state = "jackal"
	flags_inv = HIDEFACE
	body_parts_covered = FACE
	w_class = 1
	blocks_scope = TRUE
	restricts_view = 1

/obj/item/clothing/mask/fox
	name = "fox mask"
	desc = "A plastic mask in the form of a crafty fox."
	icon_state = "fox"
	item_state = "fox"
	flags_inv = HIDEFACE
	body_parts_covered = FACE
	w_class = 1
	blocks_scope = TRUE
	restricts_view = 1

/obj/item/clothing/mask/frog
	name = "frog mask"
	desc = "A plastic mask in the form of a slimy frog. 'Ribbit!'" //unlike tg's version this one doesn't have a voicebox to scream.
	icon_state = "frog"
	item_state = "frog"
	body_parts_covered = FACE
	w_class = 1
	blocks_scope = TRUE
	restricts_view = 1

/obj/item/clothing/mask/cow
	name = "cow mask"
	desc = "A plastic mask in the form of a cow. 'Moo!'"
	icon_state = "cowmask"
	item_state = "cowmask"
	flags_inv = HIDEEARS|HIDEFACE|BLOCKHEADHAIR
	body_parts_covered = FACE
	w_class = 1
	blocks_scope = TRUE
	restricts_view = 1

/obj/item/clothing/mask/pig
	name = "pig mask"
	desc = "A plastic mask in the form of a pig. 'Oink!'"
	icon_state = "pig"
	item_state = "pig"
	flags_inv = HIDEEARS|HIDEFACE|BLOCKHEADHAIR
	body_parts_covered = FACE
	w_class = 1
	blocks_scope = TRUE
	restricts_view = 1

/obj/item/clothing/mask/joy
	name = "joy"
	desc = "A plastic mask in the form of a joy emojii."
	icon_state = "joy"
	item_state = "joy"
	flags_inv = HIDEFACE
	body_parts_covered = FACE
	w_class = 1
	blocks_scope = TRUE
	restricts_view = 1

/obj/item/clothing/mask/gorilla
	name = "gorilla mask"
	desc = "A plastic mask in the form of a gorilla. 'Oook ook!'"
	icon_state = "gorilla"
	item_state = "gorilla"
	flags_inv = HIDEEARS|HIDEFACE|BLOCKHEADHAIR
	body_parts_covered = FACE
	w_class = 1
	blocks_scope = TRUE
	restricts_view = 1