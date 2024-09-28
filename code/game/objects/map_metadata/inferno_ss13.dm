#define MAP_SPACESTATION13 "SPACESTATION13"

//Vai se fuder caveirinha e o gabriel é um arrombado
/obj/map_metadata/ss13warfare
	ID = MAP_SPACESTATION13
	title = "Sem Sono bando de viados VS seguidores de carlinhos"
	lobby_icon = "icons/lobby/caveirinhapreto.png"
	no_winner ="a batalha continua."
	caribbean_blocking_area_types = list(/area/caribbean/no_mans_land/invisible_wall/temperate,/area/caribbean/no_mans_land/invisible_wall/temperate/one,/area/caribbean/no_mans_land/invisible_wall/temperate/two)

	faction_organization = list(
		GERMAN,
		RUSSIAN)

	roundend_condition_sides = list(
		list(RUSSIAN) = /area/caribbean/german/reichstag/roof/objective,
		list(GERMAN) = /area/caribbean/german/reichstag/roof/objective,
		)
	age = "2024"
	ordinal_age = 6
	faction_distribution_coeffs = list(GERMAN = 100, RUSSIAN = 100)
	battle_name = "Batalha pelo Space Station 13"
	mission_start_message = "<font size=4>Todas as facções tem vending de armas e munição, se preparem e acabe com os Slots do Inimigo!"
	faction1 = GERMAN
	faction2 = RUSSIAN
	valid_weather_types = list(WEATHER_NONE, WEATHER_WET, WEATHER_EXTREME)
	songs = list(
		"Counter Strike:1" = "sound/music/cs.ogg",)
	gamemode = "Team Deathmatch"
	grace_wall_timer = 3000
	victory_time = 36000
	time_to_end_round_after_both_sides_locked = 36000

/obj/map_metadata/ss13warfare/job_enabled_specialcheck(var/datum/job/J)
	..()
	if (J.is_ss13 == TRUE)
		. = TRUE

/obj/map_metadata/ss13warfare/roundend_condition_def2name(define)
	..()
	switch (define)
		if (GERMAN)
			return "Seguidores de carlinhos"
		if (RUSSIAN)
			return "Sem Sono"
/obj/map_metadata/ss13warfare/roundend_condition_def2army(define)
	..()
	switch (define)
		if (GERMAN)
			return "Seguidores de carlinhos"
		if (RUSSIAN)
			return "Sem Sono"

/obj/map_metadata/ss13warfare/army2name(army)
	..()
	switch (army)
		if ("Seguidores de carlinhos")
			return "Seguidores de carlinhos"
		if ("Sem Sono")
			return "Sem Sono"


/obj/map_metadata/ss13warfare/cross_message(faction)
	if (faction == RUSSIAN)
		return "<font size = 4>Both teams may now cross the invisible wall!</font>"
	else if (faction == GERMAN)
		return ""
	else
		return ""

/obj/map_metadata/ss13warfare/reverse_cross_message(faction)
	if (faction == RUSSIAN)
		return "<span class = 'userdanger'>Both teams may no longer cross the invisible wall!</span>"
	else if (faction == GERMAN)
		return ""
	else
		return ""

/obj/map_metadata/ss13warfare/check_caribbean_block(var/mob/living/human/H, var/turf/T)
	if (!istype(H) || !istype(T))
		return FALSE
	var/area/A = get_area(T)
	if (istype(A, /area/caribbean/no_mans_land/invisible_wall))
		if (istype(A, /area/caribbean/no_mans_land/invisible_wall/temperate/one))
			if (H.faction != "RUSSIAN")
				return TRUE
		else if (istype(A, /area/caribbean/no_mans_land/invisible_wall/temperate/two))
			if (H.faction != "GERMAN")
				return TRUE
		return !faction2_can_cross_blocks() && !faction1_can_cross_blocks()
	return FALSE

/obj/structure/vending/ss13war
	name = "Armas & outras coisas"
	desc = "Vending de armas, todas de graça."
	icon_state = "equipment_russia"
	products = list(
		/obj/item/weapon/gun/projectile/semiautomatic/svd = 200,
		/obj/item/weapon/gun/projectile/submachinegun/ak74 = 200,
		/obj/item/weapon/gun/projectile/submachinegun/aug = 200,
		/obj/item/weapon/gun/projectile/submachinegun/g3 = 200,
		/obj/item/weapon/gun/projectile/submachinegun/m16 = 200,
		/obj/item/weapon/gun/projectile/submachinegun/mp40/mp5 = 200,
		/obj/item/weapon/gun/projectile/submachinegun/p90 = 200,
		/obj/item/weapon/gun/projectile/shotgun/pump/ks23 = 200,
		/obj/item/weapon/gun/projectile/submachinegun/uzi = 200,
		/obj/item/weapon/gun/projectile/submachinegun/victor = 200,
		/obj/item/weapon/gun/projectile/automatic/m249 = 200,
		/obj/item/weapon/gun/projectile/automatic/pkm = 200,

		/obj/item/weapon/gun/projectile/pistol/tt30 = 200,
		/obj/item/weapon/gun/projectile/pistol/m9beretta = 200,
		/obj/item/weapon/gun/projectile/pistol/glock17 = 200,
		/obj/item/weapon/gun/projectile/pistol/deagle = 200,
		/obj/item/weapon/gun/projectile/pistol/m1911 = 200,
		/obj/item/weapon/gun/projectile/pistol/makarov = 200,

		/obj/item/weapon/grenade/coldwar/m26 = 200,
		/obj/item/weapon/grenade/coldwar/m67 = 200,
		/obj/item/weapon/grenade/flashbang/m84 = 200,
		/obj/item/weapon/grenade/smokebomb/m18smoke = 200,

		/obj/item/weapon/shield/metal_riot = 200,
		/obj/item/clothing/accessory/holster/tactical = 200,
		/obj/item/clothing/accessory/armor/coldwar/plates/b45 = 200,
		/obj/item/clothing/head/helmet/modern/pasgt = 200,
		/obj/item/weapon/storage/belt/smallpouches = 200,
		/obj/item/weapon/storage/backpack/rucksack = 200
)

/obj/structure/vending/ss13war_ammo
	name = "Munição"
	desc = "Vending de munição, todas de graça."
	icon_state = "equipment_russia"
	products = list(
		/obj/item/ammo_magazine/svd = 300,
		/obj/item/ammo_magazine/ak74 = 300,
		/obj/item/ammo_magazine/m16 = 300,
		/obj/item/ammo_magazine/hk = 300,
		/obj/item/ammo_magazine/m16 = 300,
		/obj/item/ammo_magazine/mp40/mp5 = 300,
		/obj/item/ammo_magazine/p90 = 300,
		/obj/item/ammo_casing/shotgun/buckshot = 500,
		/obj/item/ammo_magazine/uzi = 300,
		/obj/item/ammo_magazine/glock17 = 300,
		/obj/item/ammo_magazine/m249 = 300,
		/obj/item/ammo_magazine/pkm = 200,

		/obj/item/ammo_magazine/tt30 = 300,
		/obj/item/ammo_magazine/m9beretta = 300,
		/obj/item/ammo_magazine/glock17 = 300,
		/obj/item/ammo_magazine/deagle = 200,
		/obj/item/ammo_magazine/m1911 = 200,
		/obj/item/ammo_magazine/makarov = 200
)