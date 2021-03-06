/obj/item/ammo_casing/magic
	name = "rocket"
	desc = "a rocket for the rocket launcher"
	projectile_type = /obj/item/projectile/magic

/obj/item/ammo_casing/magic/change
	projectile_type = /obj/item/projectile/magic/change

/obj/item/ammo_casing/magic/animate
	projectile_type = /obj/item/projectile/magic/animate

/obj/item/ammo_casing/magic/heal
	projectile_type = /obj/item/projectile/magic/resurrection

/obj/item/ammo_casing/magic/death
	projectile_type = /obj/item/projectile/magic/death

/obj/item/ammo_casing/magic/teleport
	projectile_type = /obj/item/projectile/magic/teleport

/obj/item/ammo_casing/magic/door
	projectile_type = /obj/item/projectile/magic/door

/obj/item/ammo_casing/magic/fireball
	projectile_type = /obj/item/projectile/magic/fireball

/obj/item/ammo_casing/magic/misslelauncher
	projectile_type = /obj/item/projectile/magic/missle

/obj/item/ammo_casing/magic/chaos
	projectile_type = /obj/item/projectile/magic

/obj/item/ammo_casing/magic/chaos/newshot()
	var/list/candidates = typesof(/obj/item/projectile/magic)
	candidates.Remove(/obj/item/projectile/magic/missle/plasma, /obj/item/projectile/magic/missle/khorne, /obj/item/projectile/magic/baneblade) //No. Just no.
	projectile_type = pick(candidates)
	..()

/obj/item/ammo_casing/syringegun
	name = "syringe gun spring"
	desc = "A high-power spring that throws syringes."
	projectile_type = null