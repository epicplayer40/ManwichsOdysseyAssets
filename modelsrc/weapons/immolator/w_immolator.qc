/*
==============================================================================

World model Immolator

==============================================================================
*/

$modelname weapons/w_immolator.mdl
$cdmaterials models\cremator\

$body studio w_immolator_reference

$surfaceprop "weapon"

$attachment "muzzle" "ValveBiped.Weapon_bone" 6.31 -0.68 0.42 rotate 4.49 -1.17 -98.82
$attachment "1" "ValveBiped.Weapon_bone" 1.06 0.18 0.72 rotate 8.79 89.53 -85.45

$sequence idle w_immolator_reference fps 1 loop

$collisionmodel w_immolator_reference.smd
{
	$mass 10
	$inertia 1
}
