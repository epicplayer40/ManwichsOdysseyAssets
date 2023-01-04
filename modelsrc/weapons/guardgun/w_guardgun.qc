// Guard Gun Worldmodel

$modelname "weapons/w_guardgun.mdl"

$body studio W_Guardgun_reference.smd

$surfaceprop "weapon"

$cdmaterials models\combine_guard

$attachment "muzzle" "ValveBiped.Weapon_bone" 12.12 0.03 -3.18 rotate 9.02 -0.33 -91.94
$attachment "1" "ValveBiped.Weapon_bone" 2.4 0.57 -1.96 rotate 1.92 89.98 -80.98

$hboxset "default"
$hbox 0 "ValveBiped.Bip01_R_Hand" 0 -1.5 -5 5 -1.5 0
$hbox 0 "ValveBiped.Weapon_bone" -4.71 -2.01 -5.99 12.54 -2.01 8.27
$skipboneinbbox

$definebone "ValveBiped.Bip01_R_Hand" "" 0.267086 -10.171795 -2.58952 10.87915 92.497277 -176.250641 0 0 0 0 0 0
$definebone "ValveBiped.Weapon_bone" "ValveBiped.Bip01_R_Hand" 5 -1.5 -5 0.000001 0 0 0 0 0 0 0 0


$sequence idle w_idle ACT_VM_IDLE 1 loop

$sequence attack1 w_idle ACT_RANGE_ATTACK_SMG1 1 {
	{ event 3002 0 }
	{ event 6001 0 "0" }
	fps 10
}

$sequence attackoffcenter w_idle {
	{ event AE_NPC_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 3002 0 "lefthand" }
	{ event 6001 0 "0" }
	fps 20
}

$collisionmodel "W_Guardgun_reference.smd"
{
	$mass 90
	$inertia 1
}