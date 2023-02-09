/*
==============================================================================

World model ml

==============================================================================
*/

$modelname weapons/W_ml.mdl
$cdmaterials models/weapons/v_ML
$surfaceprop "weapon"

$attachment "muzzle" "ValveBiped.muzzle" 0.00 0.00 -0.00 rotate 0 0 -90 RIGID
$attachment "missile" "ValveBiped.muzzle" 8.00 0.00 -0.00 rotate 0 0 -90 RIGID
$attachment "exhaust" "ValveBiped.muzzle" -60.00 0.00 0.00 rotate -0 -180 90 RIGID

$body studio "w_ml_reference.smd"

$sequence "idle" "w_ml_reference" fps 30 ACT_VM_IDLE 1

$sequence attack1 "w_ml_reference" fps 30 numframes 5 activity ACT_RANGE_ATTACK_RPG 1 { 
	 { event AE_NPC_MUZZLEFLASH 0 "RPG MUZZLE" } { event 3002 0 } { event AE_NPC_MUZZLEFLASH 0 "RPG EXHAUST" } 
}

$collisionmodel "w_rpg_physbox.smd" {
	$mass 20.0
}