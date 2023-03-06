/*
==============================================================================

M60 Machine Gun
Original m60 model by Sgt Stacker, mesh fixes by Xinus, QC edits by The One Epicplayer and Akis_02

==============================================================================
*/

$modelname weapons/v_M60.mdl
$cdmaterials models\Weapons\V_hand models\Weapons\


// whole body
$body studio "M60_reference.smd"

$origin 0 0 68

//Muzzle flash
$attachment muzzle "Bip01 R Hand" 24 2 8.5
 
//Shell eject
$attachment 1 "Bip01 R Hand" 10.0 2 6.0 rotate -25 -90 0

$sequence AR2_idle "Idle01" loop fps 30 ACT_VM_IDLE 1 node 0

$Sequence "AR2_primary_fire" {
	"fire01"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "SHOTGUN MUZZLE" }
	{ event AE_MUZZLEFLASH 0 "SHOTGUN MUZZLE" }
	{ event AE_MUZZLEFLASH 0 "SHOTGUN MUZZLE" }
	{ event AE_MUZZLEFLASH 0 "357 MUZZLE" }
	{ event AE_MUZZLEFLASH 0 "357 MUZZLE" }
	{ event AE_MUZZLEFLASH 0 "357 MUZZLE" }
	{ event 6001 0 "1" }
	snap
}

$Sequence "AR2_primary_fire2" {
	"fire02"
	activity "ACT_VM_HITLEFT" 1
	{ event AE_MUZZLEFLASH 0 "SHOTGUN MUZZLE" }
	{ event AE_MUZZLEFLASH 0 "SHOTGUN MUZZLE" }
	{ event AE_MUZZLEFLASH 0 "SHOTGUN MUZZLE" }
	{ event AE_MUZZLEFLASH 0 "357 MUZZLE" }
	{ event AE_MUZZLEFLASH 0 "357 MUZZLE" }
	{ event AE_MUZZLEFLASH 0 "357 MUZZLE" }
	{ event 6001 0 "1" }
	snap
}

$Sequence "AR2_primary_fire3" {
	"fire03"
	activity "ACT_VM_HITLEFT2" 1
	{ event AE_MUZZLEFLASH 0 "SHOTGUN MUZZLE" }
	{ event AE_MUZZLEFLASH 0 "SHOTGUN MUZZLE" }
	{ event AE_MUZZLEFLASH 0 "SHOTGUN MUZZLE" }
	{ event AE_MUZZLEFLASH 0 "357 MUZZLE" }
	{ event AE_MUZZLEFLASH 0 "357 MUZZLE" }
	{ event AE_MUZZLEFLASH 0 "357 MUZZLE" }
	{ event 6001 0 "1" }
	snap
}

$Sequence "AR2_primary_fire4" {
	"fire04"
	activity "ACT_VM_HITRIGHT" 1
	{ event AE_MUZZLEFLASH 0 "SHOTGUN MUZZLE" }
	{ event AE_MUZZLEFLASH 0 "SHOTGUN MUZZLE" }
	{ event AE_MUZZLEFLASH 0 "SHOTGUN MUZZLE" }
	{ event AE_MUZZLEFLASH 0 "357 MUZZLE" }
	{ event AE_MUZZLEFLASH 0 "357 MUZZLE" }
	{ event AE_MUZZLEFLASH 0 "357 MUZZLE" }
	{ event 6001 0 "1" }
	snap
}

$sequence AR2_primary_dry "Fire01_dry" fps 30 snap activity ACT_VM_DRYFIRE 1 node 0
//$sequence AR2_secondary_fire "alt_fire01" fps 30 snap activity ACT_VM_SECONDARYATTACK 1 { event 5001 0 "2" } node 0
$sequence AR2_draw "Draw" fps 40 snap activity ACT_VM_DRAW 1 node 0
$sequence AR2_reload "M60_Reload" fps 24 activity ACT_VM_RELOAD 1 node 0
$sequence nothreatidle "Non_threatning_idle01" loop fps 30 activity ACT_VM_IDLE_LOWERED 1 node 1
$sequence nothreattoidle "Non_threat_to_idle01" fps 30 activity ACT_VM_LOWERED_TO_IDLE 1 transition 1 0
$sequence idletonothreat "Idle01_to_non_threat" fps 30 activity ACT_VM_IDLE_TO_LOWERED 1 transition 0 1

// ================================
//  Dummy sequences for NPCs
// ================================

$sequence attack1	"Fire01" fps 30 LX rotate 180 frames 0 3 activity ACT_RANGE_ATTACK_AR2 1 { event 5001 0 "0" } { event 3007 0 } { event 6001 0 "0" }
$sequence attack2	"Fire02" fps 30 LX rotate 180 activity ACT_RANGE_ATTACK_AR2_GRENADE 1 { event 3012 0 }