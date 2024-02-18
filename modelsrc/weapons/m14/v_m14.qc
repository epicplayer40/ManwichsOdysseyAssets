/*
==============================================================================

View model M14
Initial mesh by CarterG4, animations by epicplayer.

==============================================================================
*/

$modelname weapons/v_m14.mdl
$cdmaterials models\Weapons\V_hand models\Weapons\V_m14 models\Weapons\V_grenade


// whole body
$body studio "v_m14_reference_update.smd" 

$origin 1 2 66.5

//Muzzle flash
$attachment "0" "ValveBiped.muzzle" 0 0 0 rotate 0 -90 0
$attachment "1" "ValveBiped.garand_base" -2.90 -0.80 7.90 rotate 0 -98 0

$sequence aim_idle01 "v_m14_anims" frames 25 55 loop fps 10 activity ACT_VM_IDLE 1 node Ready
$sequence aim_fire "v_m14_anims" frames 56 70 snap fps 30 activity ACT_VM_PRIMARYATTACK 1 { event AE_MUZZLEFLASH 0 "AR2 0" } { event 6001 0 "1" } node Fire
$sequence aim_draw "v_m14_anims" frames 0 25 snap fps 30 activity ACT_VM_DRAW 1 node Ready
$sequence aim_reload "v_m14_anims" frames 70 110 fps 25 activity ACT_VM_RELOAD 1 node Ready {
	{ event AE_CL_PLAYSOUND 9 "Weapon_M14.Magrelease" }
	{ event AE_CL_PLAYSOUND 12 "Weapon_M14.Magout" }
	{ event AE_CL_PLAYSOUND 28 "Weapon_M14.Magin" }
	{ event AE_CL_PLAYSOUND 30 "Weapon_M14.Maghit" }
}
$sequence aim_holster "v_m14_anims" frames 110 120 fps 30 activity ACT_VM_HOLSTER 1 node Ready

$sequence grenade_idle01 "v_m14_anims" frames 165 200 loop fps 20 activity ACT_VM_IDLE_DEPLOYED 1 node Ready
$sequence grenade_fire "v_m14_anims" frames 201 220 snap fps 30 activity ACT_VM_PRIMARYATTACK_DEPLOYED 1 { event AE_MUZZLEFLASH 0 "AR2 0" } { event 6001 0 "1" } node Fire
$sequence grenade_draw "v_m14_anims" frames 121 165 fps 30 activity ACT_VM_DEPLOY 1 node Ready {
	{ event AE_CL_PLAYSOUND 19 "Weapon_M14.Grenadeattach" }
	{ event AE_CL_PLAYSOUND 16 "Weapon_M14.Grenadepin" }
}
$sequence grenade_reload "v_m14_anims" frames 311 351 fps 25 activity ACT_VM_RELOAD_DEPLOYED 1 node Ready {
	{ event AE_CL_PLAYSOUND 9 "Weapon_M14.Magrelease" }
	{ event AE_CL_PLAYSOUND 12 "Weapon_M14.Magout" }
	{ event AE_CL_PLAYSOUND 28 "Weapon_M14.Magin" }
	{ event AE_CL_PLAYSOUND 30 "Weapon_M14.Maghit" }
}
$sequence grenade_attach "v_m14_anims" frames 220 264 fps 30 activity ACT_VM_DEPLOY_1 1 node Ready {
	{ event AE_CL_PLAYSOUND 19 "Weapon_M14.Grenadeattach" }
	{ event AE_CL_PLAYSOUND 16 "Weapon_M14.Grenadepin" }
}
$sequence grenade_toaim "v_m14_anims" frames 281 310 fps 25 activity ACT_VM_UNDEPLOY 1 node Ready {
	{ event AE_CL_PLAYSOUND 8 "Weapon_M14.Grenadedetach" }
}
$sequence grenade_toaim_empty "v_m14_anims" frames 265 280 fps 30 activity ACT_VM_UNDEPLOY_EMPTY 1 node Ready

/*===================================================================================
	ANIMATION DESCRIPTIONS

When we are in normal shooting mode:
	aim_idle01			ACT_VM_IDLE						Idle animation (Without grenade)
	aim_fire			ACT_VM_PRIMARYATTACK			Firing animation (Without grenade)
	aim_reload			ACT_VM_RELOAD					Reload animation (Without grenade)
	aim_draw			ACT_VM_DRAW						Draw the weapon	
	aim_holster			ACT_VM_HOLSTER					Holster the weapon

When we are in grenade launch mode:
	grenade_idle01		ACT_VM_IDLE_DEPLOYED			Idle animation (With grenade)
	grenade_fire 		ACT_VM_PRIMARYATTACK_DEPLOYED	Firing animation (With grenade)
	grenade_reload		ACT_VM_RELOAD_DEPLOYED			Reload animation (With grenade)
	grenade_draw		ACT_VM_DEPLOY					Transition from shooting to grenade mode	
	grenade_attach		ACT_VM_DEPLOY_1					Attach grenade after firing (if we have ammo)
	grenade_toaim		ACT_VM_UNDEPLOY					Transition from grenade to shooting mode
	grenade_toaim_empty	ACT_VM_UNDEPLOY_EMPTY 			Transition from grenade to shooting mode after firing (no ammo)
	
*/