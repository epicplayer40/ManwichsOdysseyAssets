//Silencer edit by Akis_02
//
//

$ModelName weapons/w_mp5k.mdl

$cdmaterials "models\Weapons\v_mp5k"
$cdmaterials "models\Weapons\v_silencer"

$Body "studio" "w_mp5k_reference.smd"
$SurfaceProp "weapon"

$opaque

//Muzzle flash
$attachment "muzzle" "ValveBiped.Weapon_bone" 22.61 0.20 -4.50 rotate 12 -0 -92

//Shell eject
$attachment "1" "ValveBiped.Weapon_bone" 5.20 0.57 -2.60 rotate 2 90 -81

$sequence idle "Idle" fps 30 loop LX rotate 180 activity ACT_VM_IDLE 1

$sequence attack1 "Idle" fps 20 frames 0 20 LX rotate 180 activity ACT_RANGE_ATTACK_SMG1 1 { 
//	{ event AE_NPC_MUZZLEFLASH 0 "SMG1 MUZZLE" } 
	{ event 3002 0 } 
	{ event 6001 0 "0" } 
}

// E3 HACK: This fires the bullets from the NPC's "lefthand" attachment point.
//			Do we need a better solution for shooting from a far off-center scripted sequence?
$sequence attackoffcenter "Idle" fps 20 frames 0 20 LX rotate 180 { 
//	{ event AE_NPC_MUZZLEFLASH 0 "SMG1 MUZZLE" } 
	{ event 3002 0 "lefthand" } 
	{ event 6001 0 "0" } 
}

$CollisionModel "w_mp5k_reference.smd" {
	$mass 8.0
}
