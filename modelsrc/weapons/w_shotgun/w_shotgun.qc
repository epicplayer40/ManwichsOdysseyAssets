/*
==============================================================================

w_shotgun
Model enhancements by Xinus22

==============================================================================
*/

$modelname weapons/w_shotgun.mdl

$cdmaterials models/weapons/w_shotgun

// whole body
$body studio "shotgun_reference.smd"
$surfaceprop "weapon"

//Muzzle flash
$attachment "muzzle" "Valvebiped.muzzle" 0 0 0 RIGID
//Shell eject
$attachment 1 "Valvebiped.w_shotgun" 0.0 -0.5 -1.0 RIGID

$sequence idle1	"Idle"  	loop fps 30			activity ACT_VM_IDLE 1
$sequence fire	"Idle"  	frame 0 10 fps 5	activity ACT_RANGE_ATTACK_SHOTGUN 1  { event AE_NPC_MUZZLEFLASH 0 "SHOTGUN MUZZLE" } { event 6001 0 "2" } { event 3004 0 } 
$sequence draw	"Idle"  	fps 30				activity ACT_VM_DRAW 1
$sequence holster	"Idle" 	fps 30				activity ACT_VM_HOLSTER 1


$lod 25
{
	replacemodel "shotgun_reference" "shotgun_lod1"
}

$collisionmodel "shotgun_physbox.smd" {
	// Mass in kilograms
	$mass 10.0
	$rollingdrag 1
	$concave
}
