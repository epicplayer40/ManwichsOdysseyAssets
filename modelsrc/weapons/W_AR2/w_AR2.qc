/*
==============================================================================

w_ar2 but properly aligned like the irifle worldmodel

==============================================================================
*/

$modelname weapons/w_ar2.mdl

$cdmaterials models/weapons/w_ar2

// whole body
$body studio "W_AR2_Reference.smd"

//Muzzle flash
$attachment "muzzle" "ValveBiped.muzzle" -9.80 -0.80 -0.15 rotate 0 0 -90

//Shell eject
$attachment 1 "ValveBiped.w_shotgun" 0.50 -0.10 0

$sequence idle1	"Idle" loop fps 30 activity ACT_VM_IDLE 1

$sequence fire	"Idle" fps 30 activity ACT_RANGE_ATTACK_AR2 1 {
{ event 5003 0 "0" } { event 6001 0 "1" } { event 3007 0 "1" }
}

$surfaceprop "weapon"
$collisionmodel "W_AR2_Reference.smd" {
	// Mass in kilograms
	$mass 20.0
}
