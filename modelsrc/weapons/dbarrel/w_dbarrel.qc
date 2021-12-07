//Double Barrel Shotgun Worldmodel
//Model by Sgt Stacker, edits by The One Epicplayer

$modelname weapons/w_dbarrel.mdl
$cdmaterials models\weapons\Dbarrel

$body studio w_DBarrel.smd

$surfaceprop "weapon"

$attachment "muzzle" "ValveBiped.Weapon_bone" 32.5 0.8 -3 rotate 3.96 -0.39 -91.97
$attachment "1" "ValveBiped.Weapon_barrel" 0 0 -0.4 rotate 180 0 0

$definebone "ValveBiped.Bip01_R_Hand" "" 0.390629 -20.899151 0.353285 12.461601 88.326319 177.528802 0 0 0 0 0 0
$definebone "ValveBiped.Weapon_bone" "ValveBiped.Bip01_R_Hand" 6.249999 -1.875018 -6.249999 -0.000171 0 0 0 0 0 0 0 0

$sequence idle w_DBarrel ACT_VM_IDLE 1 fps 1 loop
$sequence fire1 DBarrel_w_idle ACT_RANGE_ATTACK_SHOTGUN 1 fps 5 {
	{ event AE_NPC_MUZZLEFLASH 0 "SHOTGUN MUZZLE" }
//	{ event 6001 0 "2" }
	{ event 3004 0 }
}

$sequence reload w_reload ACT_RELOAD 1 {
	{ event 6001 4 "2" }
	{ event 6001 4 "2" }
}

$sequence reload2 w_reload ACT_RELOAD_SMG 1 {
	{ event 6001 4 "2" }
	{ event 6001 4 "2" }
}

$sequence reload3 w_reload ACT_RELOAD_SHOTGUN 1 {
	{ event 6001 4 "2" }
	{ event 6001 4 "2" }
}

$collisionmodel "w_dbarrel_physics.smd"
{
	$mass 10
	$inertia 1
	$concave
}