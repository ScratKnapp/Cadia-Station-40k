
/*
Ordo Hereticus
*/
/mob/living/carbon/human/OHstormtrooper
	name = "Unknown"
	real_name = "Unknown"
	universal_speak = 1
	gender = "male"
	factions = list("imperium")
/mob/living/carbon/human/OHstormtrooper/New()
	..()
	sleep (5)
	var/obj/item/device/radio/headset/R = new /obj/item/device/radio/headset/headset_cent
	R.set_frequency(1441)
	equip_to_slot_or_del(R, slot_ears)
	spawn(20)
		var/weaponchoice = input("Loadout.","Select a Loadout") as null|anything in list("Rifleman", "Close Quarters", "Marksman", "Medicae", "Body Guard", "Grenadier", "Slaved Psyker")
		switch(weaponchoice)
			if("Rifleman")
				equip_to_slot_or_del(new /obj/item/clothing/under/stormtroop, slot_w_uniform)
				equip_to_slot_or_del(new /obj/item/clothing/shoes/cadianboots, slot_shoes)
				equip_to_slot_or_del(new /obj/item/clothing/gloves/combat/inquisitor, slot_gloves)
				equip_to_slot_or_del(new /obj/item/clothing/mask/gas/stormtroop, slot_wear_mask)
				equip_to_slot_or_del(new /obj/item/clothing/suit/armor/shocktrooper, slot_wear_suit)
				equip_to_slot_or_del(new /obj/item/clothing/head/cadianhelmet, slot_head)
				equip_to_slot_or_del(new /obj/item/clothing/glasses/night, slot_glasses)
				equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/stormtropper, slot_back)
				equip_to_slot_or_del(new /obj/item/weapon/complexknife/combatknife, slot_in_backpack)
				equip_to_slot_or_del(new /obj/item/weapon/storage/box/hellgunmag, slot_in_backpack)
				equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/automatic/hellgun, slot_s_store)
				var/obj/item/weapon/card/id/ordohereticus/W = new
				W.access = get_all_accesses()
				W.access += get_centcom_access("Inquisitor")
				W.assignment = "StormTrooper"
				W.registered_name = real_name
				W.update_label()
				equip_to_slot_or_del(W, slot_wear_id)
				sleep(20)
				regenerate_icons()
				rename_self("[name]")
				verbs += /mob/living/carbon/human/proc/renderaid
			if("Close Quarters")
				equip_to_slot_or_del(new /obj/item/clothing/under/stormtroop, slot_w_uniform)
				equip_to_slot_or_del(new /obj/item/clothing/shoes/cadianboots, slot_shoes)
				equip_to_slot_or_del(new /obj/item/clothing/gloves/combat/inquisitor, slot_gloves)
				equip_to_slot_or_del(new /obj/item/clothing/mask/gas/stormtroop, slot_wear_mask)
				equip_to_slot_or_del(new /obj/item/clothing/suit/armor/shocktrooper, slot_wear_suit)
				equip_to_slot_or_del(new /obj/item/clothing/head/cadianhelmet, slot_head)
				equip_to_slot_or_del(new /obj/item/clothing/glasses/night, slot_glasses)
				equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/stormtropper, slot_back)
				equip_to_slot_or_del(new /obj/item/weapon/powersword/pknife, slot_in_backpack)
				equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/shotgun/combat/voxlegis, slot_r_hand)
				equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/automatic/hellpistol, slot_in_backpack)
				var/obj/item/weapon/card/id/ordohereticus/W = new
				W.access = get_all_accesses()
				W.access += get_centcom_access("Inquisitor")
				W.assignment = "StormTrooper"
				W.registered_name = real_name
				W.update_label()
				equip_to_slot_or_del(W, slot_wear_id)
				sleep(20)
				regenerate_icons()
				rename_self("[name]")
				verbs += /mob/living/carbon/human/proc/renderaid
			if("Marksman")
				equip_to_slot_or_del(new /obj/item/clothing/under/stormtroop, slot_w_uniform)
				equip_to_slot_or_del(new /obj/item/clothing/shoes/cadianboots, slot_shoes)
				equip_to_slot_or_del(new /obj/item/clothing/gloves/combat/inquisitor, slot_gloves)
				equip_to_slot_or_del(new /obj/item/clothing/mask/gas/stormtroop, slot_wear_mask)
				equip_to_slot_or_del(new /obj/item/clothing/suit/armor/shocktrooper, slot_wear_suit)
				equip_to_slot_or_del(new /obj/item/clothing/head/cadianhelmet, slot_head)
				equip_to_slot_or_del(new /obj/item/clothing/glasses/night, slot_glasses)
				equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/stormtropper, slot_back)
				equip_to_slot_or_del(new /obj/item/weapon/complexknife/combatknife, slot_in_backpack)
				equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/automatic/hellpistol, slot_in_backpack)
				equip_to_slot_or_del(new /obj/item/weapon/gun/energy/longlas, slot_r_hand)
				equip_to_slot_or_del(new /obj/item/weapon/storage/box/lasgunmag, slot_in_backpack)
				var/obj/item/weapon/card/id/ordohereticus/W = new
				W.access = get_all_accesses()
				W.access += get_centcom_access("Inquisitor")
				W.assignment = "Stormtrooper"
				W.registered_name = real_name
				W.update_label()
				equip_to_slot_or_del(W, slot_wear_id)
				sleep(20)
				regenerate_icons()
				rename_self("[name]")
				verbs += /mob/living/carbon/human/proc/renderaid
			if("Medicae")
				equip_to_slot_or_del(new /obj/item/clothing/under/stormtroop, slot_w_uniform)
				equip_to_slot_or_del(new /obj/item/clothing/shoes/cadianboots, slot_shoes)
				equip_to_slot_or_del(new /obj/item/clothing/gloves/combat/inquisitor, slot_gloves)
				equip_to_slot_or_del(new /obj/item/clothing/mask/gas/stormtroop, slot_wear_mask)
				equip_to_slot_or_del(new /obj/item/clothing/suit/armor/shocktrooper, slot_wear_suit)
				equip_to_slot_or_del(new /obj/item/clothing/head/cadianhelmet, slot_head)
				equip_to_slot_or_del(new /obj/item/clothing/glasses/hud/health/night, slot_glasses)
				equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/stormtropper, slot_back)
				equip_to_slot_or_del(new /obj/item/weapon/complexknife/combatknife, slot_in_backpack)
				equip_to_slot_or_del(new /obj/item/weapon/storage/firstaid/tactical, slot_in_backpack)
				equip_to_slot_or_del(new /obj/item/weapon/storage/firstaid/advanced, slot_in_backpack)
				equip_to_slot_or_del(new /obj/item/weapon/storage/firstaid/advanced, slot_in_backpack)
				var/obj/item/weapon/card/id/ordohereticus/W = new
				W.access = get_all_accesses()
				W.access += get_centcom_access("Inquisitor")
				W.assignment = "StormTrooper Medicae"
				W.registered_name = real_name
				W.update_label()
				equip_to_slot_or_del(W, slot_wear_id)
				sleep(20)
				regenerate_icons()
				rename_self("[name]")
				verbs += /mob/living/carbon/human/proc/renderaid
			if("Body Guard")
				equip_to_slot_or_del(new /obj/item/clothing/under/stormtroop, slot_w_uniform)
				equip_to_slot_or_del(new /obj/item/clothing/shoes/cadianboots, slot_shoes)
				equip_to_slot_or_del(new /obj/item/clothing/gloves/combat/inquisitor, slot_gloves)
				equip_to_slot_or_del(new /obj/item/clothing/suit/armor/bodyguard, slot_wear_suit)
				equip_to_slot_or_del(new /obj/item/clothing/head/bodyguard, slot_head)
				equip_to_slot_or_del(new /obj/item/clothing/glasses/night, slot_glasses)
				equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/inq, slot_back)
				equip_to_slot_or_del(new /obj/item/weapon/complexknife/combatknife, slot_in_backpack)
				var/obj/item/weapon/card/id/ordohereticus/W = new
				W.access = get_all_accesses()
				W.access += get_centcom_access("Inquisitor")
				W.assignment = "Body Guard"
				W.registered_name = real_name
				W.update_label()
				equip_to_slot_or_del(W, slot_wear_id)
				sleep(20)
				regenerate_icons()
				rename_self("[name]")
				verbs += /mob/living/carbon/human/proc/renderaid
			if("Grenadier")
				equip_to_slot_or_del(new /obj/item/clothing/under/stormtroop, slot_w_uniform)
				equip_to_slot_or_del(new /obj/item/clothing/shoes/cadianboots, slot_shoes)
				equip_to_slot_or_del(new /obj/item/clothing/glasses/night, slot_glasses)
				equip_to_slot_or_del(new /obj/item/clothing/gloves/combat/inquisitor, slot_gloves)
				equip_to_slot_or_del(new /obj/item/clothing/mask/gas/stormtroop, slot_wear_mask)
				equip_to_slot_or_del(new /obj/item/clothing/suit/armor/shocktrooper, slot_wear_suit)
				equip_to_slot_or_del(new /obj/item/clothing/head/cadianhelmet, slot_head)
				equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/stormtropper, slot_back)
				equip_to_slot_or_del(new /obj/item/weapon/complexknife/combatknife, slot_in_backpack)
				equip_to_slot_or_del(new /obj/item/weapon/grenade/krak, slot_r_store)
				equip_to_slot_or_del(new /obj/item/weapon/grenade/krak, slot_l_store)
				var/obj/item/weapon/card/id/ordohereticus/W = new
				W.access = get_all_accesses()
				W.access += get_centcom_access("Inquisitor")
				W.assignment = "Grenadier"
				W.registered_name = real_name
				W.update_label()
				equip_to_slot_or_del(W, slot_wear_id)
				sleep(20)
				regenerate_icons()
				rename_self("[name]")
				verbs += /mob/living/carbon/human/proc/renderaid
			if("Slaved Psyker")
				equip_to_slot_or_del(new /obj/item/clothing/under/stormtroop, slot_w_uniform)
				equip_to_slot_or_del(new /obj/item/clothing/shoes/cadianboots, slot_shoes)
				equip_to_slot_or_del(new /obj/item/clothing/gloves/combat/inquisitor, slot_gloves)
				equip_to_slot_or_del(new /obj/item/clothing/suit/armor/bodyguard, slot_wear_suit)
				equip_to_slot_or_del(new /obj/item/clothing/head/bodyguard, slot_head)
				equip_to_slot_or_del(new /obj/item/clothing/glasses/night, slot_glasses)
				equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/inq, slot_back)
				equip_to_slot_or_del(new /obj/item/weapon/complexknife/combatknife, slot_in_backpack)
				var/obj/item/weapon/card/id/ordohereticus/W = new
				W.access = get_all_accesses()
				W.access += get_centcom_access("Inquisitor")
				W.assignment = "Slaved Psyker"
				W.registered_name = real_name
				W.update_label()
				equip_to_slot_or_del(W, slot_wear_id)
				sleep(20)
				regenerate_icons()
				rename_self("[name]")
				verbs += /mob/living/carbon/human/proc/renderaid
				maxPsyk += 500 // Primaris Psykers are powerful, but not as powerful as Librarians, so they get half the amount Librarians do.
				verbs += /mob/living/carbon/human/proc/imprisonn
				verbs += /mob/living/carbon/human/proc/smitee
				verbs += /mob/living/carbon/human/proc/quickeningg
				verbs += /mob/living/carbon/human/proc/telepathh
	//extra letters added on end to avoid duplicate definitions/clash with Librarians, real goose tape code I know - Wel								 //This is how we get the verb!
/mob/living/carbon/human/OHstormtrooper/leader/New()
	..()
	var/obj/item/device/radio/headset/R = new /obj/item/device/radio/headset/headset_cent
	R.set_frequency(1441)
	equip_to_slot_or_del(R, slot_ears)
	spawn(20)
		equip_to_slot_or_del(new /obj/item/clothing/under/stormtroop, slot_w_uniform)
		equip_to_slot_or_del(new /obj/item/clothing/shoes/cadianboots, slot_shoes)
		equip_to_slot_or_del(new /obj/item/clothing/glasses/night, slot_glasses)
		equip_to_slot_or_del(new /obj/item/clothing/gloves/combat/inquisitor, slot_gloves)
		equip_to_slot_or_del(new /obj/item/clothing/mask/gas/stormtroop, slot_wear_mask)
		equip_to_slot_or_del(new /obj/item/clothing/suit/armor/shocktrooper, slot_wear_suit)
		equip_to_slot_or_del(new /obj/item/clothing/head/cadianhelmet, slot_head)
		equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/stormtropper, slot_back)
		equip_to_slot_or_del(new /obj/item/weapon/complexknife/combatknife, slot_in_backpack)
	var/obj/item/weapon/card/id/ordohereticus/W = new
	W.access = get_all_accesses()
	W.access += get_centcom_access("Inquisitor")
	W.assignment = "StormTrooper (Captain)"
	W.registered_name = real_name
	W.update_label()
	equip_to_slot_or_del(W, slot_wear_id)
	sleep(20)
	regenerate_icons()
	rename_self("[name]")
/mob/living/carbon/human/OHinq
	name = "Unknown"
	real_name = "Unknown"
	universal_speak = 1
	gender = "male"
	faction = "Inquisitor"
/mob/living/carbon/human/OHinq/leader
/mob/living/carbon/human/OHinq/New()
	..()
	sleep (5)
	verbs += /mob/living/carbon/human/proc/ohshuttle
	equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/inq, slot_back)
	equip_to_slot_or_del(new /obj/item/clothing/under/inq, slot_w_uniform)
	equip_to_slot_or_del(new /obj/item/clothing/glasses/night, slot_glasses)
	equip_to_slot_or_del(new /obj/item/clothing/suit/armor/inq, slot_wear_suit)
	equip_to_slot_or_del(new /obj/item/clothing/shoes/jackboots, slot_shoes)
	equip_to_slot_or_del(new /obj/item/clothing/head/inqhat, slot_head)
	equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/automatic/laspistol2, slot_s_store)
	equip_to_slot_or_del(new /obj/item/device/pda/lawyer, slot_in_backpack)
	equip_to_slot_or_del(new /obj/item/weapon/powersword/pknife, slot_belt)
	equip_to_slot_or_del(new /obj/item/device/hdetector, slot_in_backpack)
	equip_to_slot_or_del(new /obj/item/clothing/gloves/combat/inquisitor, slot_gloves)
	var/obj/item/device/radio/headset/R = new /obj/item/device/radio/headset/headset_cent
	R.set_frequency(1441)
	equip_to_slot_or_del(R, slot_ears)
	var/obj/item/weapon/card/id/ordohereticus/W = new
	W.access = get_all_accesses()
	W.access += get_centcom_access("Inquisitor")
	W.registered_name = real_name
	W.update_label()
	equip_to_slot_or_del(W, slot_wear_id)
	sleep(20)
	regenerate_icons()
	rename_self("[name]")
	verbs += /mob/living/carbon/human/proc/renderaid
/*
Shuttle verb
*/
/mob/living/carbon/human/proc/ohshuttle()
	set category = "Ordo Hereticus"
	set name = "Move ship"
	set desc = "Like an obediant dog... your ship comes on command."
	//set src in usr
	var/mob/living/carbon/human/U = src
	if(!ishuman(src))
		usr << text("<span class='notice'>Wait.. what are you?.</span>")
		return
	if(U.stat == DEAD)
		U <<"Pffft! Your dead! They aren't sending a ship for a dead man."							//user is dead
		return
	if(!U.canmove || U.stat || U.restrained())
		U.say("Must... reach... implant...")	//user is tied up
		return
	if(U.brainloss >= 60)
		U << text("<span class='notice'>You have no idea where you even are right now.</span>")		//user is stupid
		U.visible_message(text("<span class='alert'>[U] stares blankly.</span>"))
		U << text("<span class='notice'>Your head feels funny.")
		U << text("<span class='notice'>Oh crap. You need to call an adult!")
		U.say("HERESY!")
		return
	else
		U.visible_message(text("<span class='alert'>[U] activates a tiny wrist mounted control panel. Implants are so useful!</span>"))
		var/datum/shuttle_manager/s = shuttles["stargazer"]
		if(istype(s)) s.move_shuttle(0,1)
		return