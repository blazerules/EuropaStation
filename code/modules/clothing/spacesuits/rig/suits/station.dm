/obj/item/rig/light/internalaffairs
	name = "augmented tie"
	suit_type = "augmented suit"
	desc = "Prepare for paperwork."
	icon_state = "internalaffairs_rig"
	armor = list(melee = 0, bullet = 0, laser = 0,energy = 0, bomb = 0, bio = 0, rad = 0)
	siemens_coefficient = 0.9
	online_slowdown = 0
	offline_slowdown = 0
	offline_vision_restriction = 0

	allowed = list(/obj/item/flashlight,/obj/item/tank,/obj/item/suit_cooling_unit,/obj/item/storage/briefcase,/obj/item/storage/secure/briefcase)

	req_access = list()
	req_one_access = list()

	glove_type = null
	helm_type = null
	boot_type = null

	hides_uniform = 0

/obj/item/rig/light/internalaffairs/equipped

	req_access = list(access_lawyer)

	initial_modules = list(
		/obj/item/rig_module/ai_container,
		/obj/item/rig_module/device/flash,
		/obj/item/rig_module/device/paperdispenser,
		/obj/item/rig_module/device/pen,
		/obj/item/rig_module/device/stamp
		)

	glove_type = null
	helm_type = null
	boot_type = null

/obj/item/rig/industrial
	name = "industrial suit control module"
	suit_type = "industrial hardsuit"
	desc = "A heavy, powerful rig used by construction crews and mining corporations."
	icon_state = "engineering_rig"
	armor = list(melee = 60, bullet = 50, laser = 30,energy = 15, bomb = 30, bio = 100, rad = 50)
	online_slowdown = 3
	offline_slowdown = 10
	vision_restriction = TINT_HEAVY
	offline_vision_restriction = TINT_BLIND
	emp_protection = -20

	chest_type = /obj/item/clothing/suit/space/rig/industrial
	helm_type = /obj/item/clothing/head/helmet/space/rig/industrial
	boot_type = /obj/item/clothing/shoes/magboots/rig/industrial
	glove_type = /obj/item/clothing/gloves/rig/industrial

	allowed = list(/obj/item/flashlight,/obj/item/tank,/obj/item/suit_cooling_unit,/obj/item/stack/flag,/obj/item/storage/ore,/obj/item/t_scanner,/obj/item/pickaxe, /obj/item/rcd)

	req_access = list()
	req_one_access = list()

/obj/item/clothing/head/helmet/space/rig/industrial
	camera_networks = list(NETWORK_EXPEDITION)
	species_restricted = list("Human")

/obj/item/clothing/suit/space/rig/industrial
	species_restricted = list("Human")

/obj/item/clothing/shoes/magboots/rig/industrial
	species_restricted = list("Human")

/obj/item/clothing/gloves/rig/industrial
	species_restricted = list("Human")

/obj/item/rig/industrial/equipped

	initial_modules = list(
		/obj/item/rig_module/device/plasmacutter,
		/obj/item/rig_module/maneuvering_jets,
		/obj/item/rig_module/vision/meson
		)

/obj/item/rig/eva
	name = "EVA suit control module"
	suit_type = "EVA hardsuit"
	desc = "A light rig for repairs and maintenance to the outside of habitats and vessels."
	icon_state = "eva_rig"
	armor = list(melee = 30, bullet = 10, laser = 20,energy = 25, bomb = 20, bio = 100, rad = 100)
	online_slowdown = 0
	offline_slowdown = 1
	offline_vision_restriction = TINT_HEAVY

	chest_type = /obj/item/clothing/suit/space/rig/eva
	helm_type = /obj/item/clothing/head/helmet/space/rig/eva
	boot_type = /obj/item/clothing/shoes/magboots/rig/eva
	glove_type = /obj/item/clothing/gloves/rig/eva

	allowed = list(/obj/item/flashlight,/obj/item/tank,/obj/item/suit_cooling_unit,/obj/item/storage/toolbox,/obj/item/storage/briefcase/inflatable,/obj/item/t_scanner,/obj/item/rcd)

	req_access = list()
	req_one_access = list()

/obj/item/clothing/head/helmet/space/rig/eva
	light_overlay = "helmet_light_dual"
	camera_networks = list(NETWORK_ENGINEERING)
	species_restricted = list("Human")

/obj/item/clothing/suit/space/rig/eva
	species_restricted = list("Human")

/obj/item/clothing/shoes/magboots/rig/eva
	species_restricted = list("Human")

/obj/item/clothing/gloves/rig/eva
	species_restricted = list("Human")

/obj/item/rig/eva/equipped

	initial_modules = list(
		/obj/item/rig_module/device/plasmacutter,
		/obj/item/rig_module/maneuvering_jets,
		/obj/item/rig_module/vision/meson
		)

//Chief Engineer's rig. This is sort of a halfway point between the old hardsuits (voidsuits) and the rig class.
/obj/item/rig/ce

	name = "advanced pressure suit control module"
	suit_type = "advanced pressure suit"
	desc = "An advanced suit that protects against hazardous environments. Shines with a high polish."
	icon_state = "ce_rig"
	armor = list(melee = 40, bullet = 10, laser = 30,energy = 25, bomb = 40, bio = 100, rad = 100)
	online_slowdown = 0
	offline_slowdown = 0
	offline_vision_restriction = TINT_HEAVY

	chest_type = /obj/item/clothing/suit/space/rig/ce
	helm_type = /obj/item/clothing/head/helmet/space/rig/ce
	boot_type = null
	glove_type = null

	allowed = list(/obj/item/flashlight,/obj/item/tank,/obj/item/suit_cooling_unit,/obj/item/storage/ore,/obj/item/t_scanner,/obj/item/pickaxe, /obj/item/rcd)

	req_access = list()
	req_one_access = list()

/obj/item/rig/ce/equipped

	req_access = list(access_ce)

	initial_modules = list(
		/obj/item/rig_module/ai_container,
		/obj/item/rig_module/maneuvering_jets,
		/obj/item/rig_module/device/plasmacutter,
		/obj/item/rig_module/device/rcd,
		/obj/item/rig_module/vision/meson
		)

/obj/item/clothing/head/helmet/space/rig/ce
	camera_networks = list(NETWORK_ENGINEERING)

/obj/item/clothing/suit/space/rig/ce
	heat_protection = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS|HANDS
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS|HANDS

/obj/item/rig/hazmat

	name = "AMI control module"
	suit_type = "hazmat hardsuit"
	desc = "An Anomalous Material Interaction hardsuit that protects against the strangest energies the universe can throw at it."
	icon_state = "science_rig"
	armor = list(melee = 45, bullet = 5, laser = 45, energy = 80, bomb = 60, bio = 100, rad = 100)
	online_slowdown = 1
	offline_vision_restriction = TINT_HEAVY

	chest_type = /obj/item/clothing/suit/space/rig/hazmat
	helm_type = /obj/item/clothing/head/helmet/space/rig/hazmat
	boot_type = /obj/item/clothing/shoes/magboots/rig/hazmat
	glove_type = /obj/item/clothing/gloves/rig/hazmat

	allowed = list(/obj/item/flashlight,/obj/item/tank,/obj/item/suit_cooling_unit,/obj/item/stack/flag,/obj/item/pickaxe,/obj/item/healthanalyzer,/obj/item/radio/beacon)

	req_access = list()
	req_one_access = list()

/obj/item/clothing/head/helmet/space/rig/hazmat
	light_overlay = "helmet_light_dual"
	camera_networks = list(NETWORK_RESEARCH)
	species_restricted = list("Human")

/obj/item/clothing/suit/space/rig/hazmat
	species_restricted = list("Human")

/obj/item/clothing/shoes/magboots/rig/hazmat
	species_restricted = list("Human")

/obj/item/clothing/gloves/rig/hazmat
	species_restricted = list("Human")

/obj/item/rig/hazmat/equipped

	req_access = list(access_rd)

	initial_modules = list(
		/obj/item/rig_module/ai_container,
		/obj/item/rig_module/maneuvering_jets
		)

/obj/item/rig/medical

	name = "rescue suit control module"
	suit_type = "rescue hardsuit"
	desc = "A durable suit designed for medical rescue in high risk areas."
	icon_state = "medical_rig"
	armor = list(melee = 30, bullet = 15, laser = 20, energy = 60, bomb = 30, bio = 100, rad = 100)
	online_slowdown = 1
	offline_vision_restriction = TINT_HEAVY

	chest_type = /obj/item/clothing/suit/space/rig/medical
	helm_type = /obj/item/clothing/head/helmet/space/rig/medical
	boot_type = /obj/item/clothing/shoes/magboots/rig/medical
	glove_type = /obj/item/clothing/gloves/rig/medical

	allowed = list(/obj/item/flashlight,/obj/item/tank,/obj/item/suit_cooling_unit,/obj/item/storage/firstaid,/obj/item/healthanalyzer,/obj/item/stack/medical,/obj/item/roller )

	req_access = list()
	req_one_access = list()

/obj/item/clothing/head/helmet/space/rig/medical
	camera_networks = list(NETWORK_MEDICAL)
	species_restricted = list("Human")

/obj/item/clothing/suit/space/rig/medical
	species_restricted = list("Human")

/obj/item/clothing/shoes/magboots/rig/medical
	species_restricted = list("Human")

/obj/item/clothing/gloves/rig/medical
	species_restricted = list("Human")

/obj/item/rig/medical/equipped

	req_access = list(access_medical_equip)

	initial_modules = list(
		/obj/item/rig_module/chem_dispenser/injector,
		/obj/item/rig_module/maneuvering_jets,
		/obj/item/rig_module/device/healthscanner,
		/obj/item/rig_module/vision/medhud
		)

/obj/item/rig/hazard
	name = "hazard hardsuit control module"
	suit_type = "hazard hardsuit"
	desc = "A Security hardsuit designed for prolonged EVA in dangerous environments."
	icon_state = "hazard_rig"
	armor = list(melee = 60, bullet = 40, laser = 30, energy = 15, bomb = 60, bio = 100, rad = 30)
	online_slowdown = 1
	offline_slowdown = 3
	offline_vision_restriction = TINT_BLIND

	chest_type = /obj/item/clothing/suit/space/rig/hazard
	helm_type = /obj/item/clothing/head/helmet/space/rig/hazard
	boot_type = /obj/item/clothing/shoes/magboots/rig/hazard
	glove_type = /obj/item/clothing/gloves/rig/hazard

	allowed = list(/obj/item/gun,/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/handcuffs,/obj/item/flashlight,/obj/item/tank,/obj/item/suit_cooling_unit,/obj/item/melee/baton)

	req_access = list()
	req_one_access = list()

/obj/item/clothing/head/helmet/space/rig/hazard
	light_overlay = "helmet_light_dual"
	camera_networks = list(NETWORK_SECURITY)
	species_restricted = list("Human")

/obj/item/clothing/suit/space/rig/hazard
	species_restricted = list("Human")

/obj/item/clothing/shoes/magboots/rig/hazard
	species_restricted = list("Human")

/obj/item/clothing/gloves/rig/hazard
	species_restricted = list("Human")

/obj/item/rig/hazard/equipped

	initial_modules = list(
		/obj/item/rig_module/vision/sechud,
		/obj/item/rig_module/maneuvering_jets,
		/obj/item/rig_module/grenade_launcher
		)
