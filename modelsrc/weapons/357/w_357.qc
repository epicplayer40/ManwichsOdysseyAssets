//357 Magnum Worldmodel
//Model by Valve, QC edits by Sgt Stacker and The One Epicplayer

$modelname weapons/W_357.mdl
$cdmaterials models\weapons\w_357

$body studio HL2DM_357_reference

$surfaceprop "weapon"

$attachment "muzzle" "ValveBiped.Muzzle" 0 0 0 rotate -90 -90 0
$attachment "0" "ValveBiped.Muzzle" 0 0 0 rotate -90 -90 0
$attachment "1" "ValveBiped.Muzzle" 0 -0.5 -10 rotate 90 0 0

$sequence idle HL2DM_357_reference ACT_VM_IDLE 1 loop
$sequence attack1 attack1 ACT_RANGE_ATTACK_PISTOL 1 {
	{ event 3014 1 }
	{ event AE_NPC_MUZZLEFLASH 0 "357 MUZZLE" }
//	{ event 6001 0 "0" }
	{ event 5003 0 "2" }
}

$sequence reload attack1 ACT_RELOAD_PISTOL 1 {
	{ event 6001 0 "0" }
	{ event 6001 0 "0" }
	{ event 6001 0 "0" }
	{ event 6001 0 "0" }
	{ event 6001 0 "0" }
	{ event 6001 0 "0" }
}

$collisionmodel "HL2DM_357_reference.smd"
{
	$mass 10
	$inertia 1
}