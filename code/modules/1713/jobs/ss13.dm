/datum/job/var/is_ss13_training = FALSE

/datum/job/russian/semsono_pmc
	title = "Panela SemSono/bando de viados PMC"
	rank_abbreviation = "PMC"
	default_language = "Portuguese"
	spawn_location = "JoinLateSS1"

	is_ss13_training = TRUE
	can_be_female = TRUE

	min_positions = 1
	max_positions = 60

/datum/job/russian/semsono_pmc/equip(var/mob/living/human/H)
	if (!H)	return FALSE
//under
	if (prob(60))
		H.equip_to_slot_or_del(new /obj/item/clothing/under/russian(H), slot_w_uniform)
	else
		H.equip_to_slot_or_del(new /obj/item/clothing/under/rus_vsr93(H), slot_w_uniform)
//head
	var/obj/item/clothing/under/uniform = H.w_uniform
	if (prob(60))
		H.equip_to_slot_or_del(new /obj/item/clothing/head/helmet/modern/a6b47(H), slot_head)
		var/obj/item/clothing/accessory/armor/coldwar/plates/b45/armor = new /obj/item/clothing/accessory/armor/coldwar/plates/b45(null)
		uniform.attackby(armor, H)
	else
		H.equip_to_slot_or_del(new /obj/item/clothing/head/helmet/modern/a6b47(H), slot_head)
		var/obj/item/clothing/accessory/armor/coldwar/plates/b5/armor = new /obj/item/clothing/accessory/armor/coldwar/plates/b5(null)
		uniform.attackby(armor, H)
	if (prob(70))
		H.equip_to_slot_or_del(new /obj/item/clothing/glasses/tactical_goggles/ballistic(H), slot_eyes)
	else
		H.equip_to_slot_or_del(new /obj/item/clothing/glasses/thermal/modern(H), slot_eyes)
//shoes
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/jackboots/modern(H), slot_shoes)
//clothes

	H.equip_to_slot_or_del(new /obj/item/weapon/radio/walkietalkie/faction1(H), slot_wear_id)
	H.equip_to_slot_or_del(new /obj/item/weapon/attachment/bayonet(H), slot_l_store)
	var/obj/item/clothing/accessory/storage/webbing/khaki_webbing/web = new /obj/item/clothing/accessory/storage/webbing/khaki_webbing(null)
	uniform.attackby(web, H)
//back
	H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/submachinegun/srm(H), slot_shoulder)
	H.equip_to_slot_or_del(new /obj/item/weapon/storage/belt/tacpouches/srm(H), slot_belt)
	web.attackby(new/obj/item/ammo_magazine/srm, H)
	web.attackby(new/obj/item/ammo_magazine/srm, H)
	web.attackby(new/obj/item/ammo_magazine/srm, H)
	web.attackby(new/obj/item/ammo_magazine/srm, H)

	H.add_note("Role", "Voc� � um <b>[title]</b>, TU JA DEU A BUNDA PRA 2050 HOMENS DIFERENTES!!!1")
	H.setStat("strength", STAT_MEDIUM_HIGH)
	H.setStat("crafting", STAT_MEDIUM_LOW)
	H.setStat("rifle", STAT_MEDIUM_LOW)
	H.setStat("dexterity", STAT_MEDIUM_HIGH)
	H.setStat("swords", STAT_MEDIUM_HIGH)
	H.setStat("pistol", STAT_NORMAL)
	H.setStat("bows", STAT_NORMAL)
	H.setStat("medical", STAT_MEDIUM_LOW)
	H.setStat("machinegun", STAT_MEDIUM_LOW)

	return TRUE


//Skull Skorcher << Gays do Caveirinha
//semsono << jogadores de lol viados

/datum/job/german/skullskorcher_pmc
	title = "seguidores de carlinhos PMC"
	rank_abbreviation = "PMC"
	default_language = "Portuguese"
	spawn_location = "JoinLateSS2"

	is_ss13_training = TRUE
	can_be_female = TRUE

	min_positions = 1
	max_positions = 60

/datum/job/german/skullskorcher_pmc/equip(var/mob/living/human/H)
	if (!H)	return FALSE
//under
	if (prob(60))
		H.equip_to_slot_or_del(new /obj/item/clothing/under/russian(H), slot_w_uniform)
	else
		H.equip_to_slot_or_del(new /obj/item/clothing/under/rus_vsr93(H), slot_w_uniform)
//head
	var/obj/item/clothing/under/uniform = H.w_uniform
	if (prob(60))
		H.equip_to_slot_or_del(new /obj/item/clothing/head/helmet/modern/a6b47(H), slot_head)
		var/obj/item/clothing/accessory/armor/coldwar/plates/b45/armor = new /obj/item/clothing/accessory/armor/coldwar/plates/b45(null)
		uniform.attackby(armor, H)
	else
		H.equip_to_slot_or_del(new /obj/item/clothing/head/helmet/modern/a6b47(H), slot_head)
		var/obj/item/clothing/accessory/armor/coldwar/plates/b5/armor = new /obj/item/clothing/accessory/armor/coldwar/plates/b5(null)
		uniform.attackby(armor, H)
	if (prob(70))
		H.equip_to_slot_or_del(new /obj/item/clothing/glasses/tactical_goggles/ballistic(H), slot_eyes)
	else
		H.equip_to_slot_or_del(new /obj/item/clothing/glasses/thermal/modern(H), slot_eyes)
//shoes
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/jackboots/modern(H), slot_shoes)
//clothes

	H.equip_to_slot_or_del(new /obj/item/weapon/radio/walkietalkie/faction2(H), slot_wear_id)
	H.equip_to_slot_or_del(new /obj/item/weapon/attachment/bayonet(H), slot_l_store)
	var/obj/item/clothing/accessory/storage/webbing/khaki_webbing/web = new /obj/item/clothing/accessory/storage/webbing/khaki_webbing(null)
	uniform.attackby(web, H)
//back
	H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/submachinegun/srm(H), slot_shoulder)
	H.equip_to_slot_or_del(new /obj/item/weapon/storage/belt/tacpouches/srm(H), slot_belt)
	web.attackby(new/obj/item/ammo_magazine/srm, H)
	web.attackby(new/obj/item/ammo_magazine/srm, H)
	web.attackby(new/obj/item/ammo_magazine/srm, H)
	web.attackby(new/obj/item/ammo_magazine/srm, H)

	H.add_note("Role", "Voc� � um <b>[title]</b>, SALVE O MATAGAL!!!!1")
	H.setStat("strength", STAT_MEDIUM_HIGH)
	H.setStat("crafting", STAT_MEDIUM_LOW)
	H.setStat("rifle", STAT_MEDIUM_LOW)
	H.setStat("dexterity", STAT_MEDIUM_HIGH)
	H.setStat("swords", STAT_MEDIUM_HIGH)
	H.setStat("pistol", STAT_NORMAL)
	H.setStat("bows", STAT_NORMAL)
	H.setStat("medical", STAT_MEDIUM_LOW)
	H.setStat("machinegun", STAT_MEDIUM_LOW)

	return TRUE

//TREINO

/datum/job/german/skullskorcher_recruit
	title = "Seguidores de carlinhos Recruit"
	rank_abbreviation = "Recruit"
	default_language = "Portuguese"
	spawn_location = "JoinLateSS2"

	can_be_female = TRUE
	is_ss13_training = TRUE

	min_positions = 1
	max_positions = 60

/datum/job/german/skullskorcher_recruit/equip(var/mob/living/human/H)
	if (!H)	return FALSE
//under
	H.equip_to_slot_or_del(new /obj/item/clothing/under/milrus2(H), slot_w_uniform)
//shoes
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/jackboots/modern(H), slot_shoes)
//clothes
	H.equip_to_slot_or_del(new /obj/item/weapon/radio/walkietalkie/faction2(H), slot_wear_id)

	H.add_note("Role", "Voc� � um <b>[title]</b>, treine para lutar contra os fudidos da sem sono!!!1")
	H.setStat("strength", STAT_MEDIUM_HIGH)
	H.setStat("crafting", STAT_MEDIUM_LOW)
	H.setStat("rifle", STAT_MEDIUM_LOW)
	H.setStat("dexterity", STAT_MEDIUM_HIGH)
	H.setStat("swords", STAT_MEDIUM_HIGH)
	H.setStat("pistol", STAT_NORMAL)
	H.setStat("bows", STAT_NORMAL)
	H.setStat("medical", STAT_MEDIUM_LOW)
	H.setStat("machinegun", STAT_MEDIUM_LOW)

	return TRUE

/datum/job/german/skullskorcher_trainer
	title = "Seguidores de carlinhos Instructor"
	rank_abbreviation = "Instructor"
	default_language = "Portuguese"
	spawn_location = "JoinLateSS2"

	is_ss13_training = TRUE

	min_positions = 1
	max_positions = 10

/datum/job/german/skullskorcher_trainer/equip(var/mob/living/human/H)
	if (!H)	return FALSE
//under
	H.equip_to_slot_or_del(new /obj/item/clothing/under/russian(H), slot_w_uniform)
//shoes
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/jackboots/modern(H), slot_shoes)
//helmet
	H.equip_to_slot_or_del(new /obj/item/clothing/head/beret_black/insig(H), slot_head)
//clothes
	H.equip_to_slot_or_del(new /obj/item/weapon/radio/walkietalkie/faction2(H), slot_wear_id)

	H.add_note("Role", "Voc� � um <b>[title]</b>, treine para lutar contra os fudidos da sem sono!!!1")
	H.setStat("strength", STAT_MEDIUM_HIGH)
	H.setStat("crafting", STAT_MEDIUM_LOW)
	H.setStat("rifle", STAT_MEDIUM_LOW)
	H.setStat("dexterity", STAT_MEDIUM_HIGH)
	H.setStat("swords", STAT_MEDIUM_HIGH)
	H.setStat("pistol", STAT_NORMAL)
	H.setStat("bows", STAT_NORMAL)
	H.setStat("medical", STAT_MEDIUM_LOW)
	H.setStat("machinegun", STAT_MEDIUM_LOW)

	return TRUE