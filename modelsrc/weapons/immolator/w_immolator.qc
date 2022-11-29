/*
==============================================================================

World model Immolator

==============================================================================
*/

$modelname weapons/w_immolator.mdl
$cdmaterials models\cremator\

$body studio w_immolator_reference

$surfaceprop "weapon"

$attachment "muzzle" "ValveBiped.Weapon_bone" 35.00 1.50 -3.80 rotate 4 -1 -99
$attachment "1" "ValveBiped.Weapon_bone" 1.06 0.18 0.72 rotate 8.79 89.53 -85.45

$sequence idle w_immolator_reference fps 1 loop

$sequence fire idle frame 0 3 fps 30 ACT_RANGE_ATTACK_SMG1 1 { event 3002 0 }

$collisionmodel w_immolator_reference.smd
{
	$mass 10
	$inertia 1
}
