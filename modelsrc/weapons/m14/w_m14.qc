/*
==============================================================================

World model M14
Initial mesh by CarterG4, adjustements and compiling by epicplayer.

==============================================================================
*/

$modelname weapons/w_m14.mdl

$cdmaterials models\Weapons\W_m14

// whole body
$body studio "w_m14_reference.smd"

//Muzzle flash
$attachment "muzzle" "ValveBiped.muzzle" 0.00 -0.37 -0.20 rotate 0 0 -90

//Shell eject
$attachment 1 "ValveBiped.w_shotgun" 0.20 -0.10 0

$sequence idle1	"w_m14_Idle" loop fps 30 activity ACT_VM_IDLE 1

$sequence fire	"w_m14_Idle" fps 30 activity ACT_RANGE_ATTACK_AR2 1 {
{ event 5003 0 "0" } { event 6001 0 "1" } { event 3007 0 "1" }
}

$surfaceprop "weapon"
$collisionmodel "w_m14_reference.smd" {
	// Mass in kilograms
	$mass 18.0
}
