/*
==============================================================================

World model VP70 Pistol

==============================================================================
*/

$modelname weapons/w_vp70.mdl
$cdmaterials models\Weapons\V_silenced_pistol
$cdmaterials "models\Weapons\v_silencer"

$body studio w_vp70_reference

$surfaceprop "weapon"

$attachment "muzzle" "ValveBiped.Weapon_bone" 6.31 -0.68 0.42 rotate 4.49 -1.17 -98.82
$attachment "1" "ValveBiped.Weapon_bone" 1.06 0.18 0.72 rotate 8.79 89.53 -85.45

$sequence idle w_silenced_pistol_reference fps 1 loop

$sequence attack_viewmodel w_silenced_pistol_reference ACT_VM_PRIMARYATTACK -1 { event 5003 0 0 } { event 6001 0 0 } snap

$sequence attack_npc idle01 ACT_RANGE_ATTACK_PISTOL 1 frame 0 1 snap {
	{ event 3014 1 }
	{ event AE_NPC_MUZZLEFLASH 0 "PISTOL MUZZLE" }
	{ event 6001 0 "0" }
}

$collisionmodel w_vp70_physics.smd
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
