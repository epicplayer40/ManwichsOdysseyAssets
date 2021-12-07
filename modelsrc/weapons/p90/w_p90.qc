//P90 Worldmodel
//Model by Valve, QC edits by Sgt Stacker and The One Epicplayer

$modelname weapons/w_p90.mdl
$cdmaterials models\weapons\CSS\

$body studio w_p90

$surfaceprop "weapon"

$attachment "muzzle" "ValveBiped.Weapon_bone" 12.12 -0.2 -1.5 rotate 9.02 -0.33 -91.94
$attachment "1" "ValveBiped.Weapon_bone" -6 0 5.5 rotate -80 0 0

$definebone "ValveBiped" "" 0 0 0 0 0 89.999982 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Hand" "ValveBiped" 0.267086 -2.58952 10.171795 78.841283 -102.773508 -9.262035 0 0 0 0 0 0
$definebone "ValveBiped.Weapon_bone" "ValveBiped.Bip01_R_Hand" 5 -1.5 -4.999998 0.000001 0 0 0 0 0 0 0 0


$sequence idle w_p90 ACT_VM_IDLE 1 loop
$sequence attack1 attack1 ACT_RANGE_ATTACK_SMG1 1 {
	{ event AE_NPC_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 3002 0 }
	{ event 6001 0 "0" }
}

$collisionmodel "w_p90.smd"
{
	$mass 8
	$inertia 1
}