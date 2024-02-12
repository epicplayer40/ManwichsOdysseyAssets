// Rebel MG Turret
// Original meshes by Valve, MG edit by Stacker, bunker gun version by epicplayer

$modelname "props_citizen_tech\bunker_gun_rebelmg.mdl"

$body studio bunker_gun_rebelmg_reference.smd

$surfaceprop "metal"
$noforcedfade

$cdmaterials models\gibs\metalgibs models\weapons\w_AR2 models\items

$attachment "muzzle" "Bunker_Gun.Gun_Pitch" 29.27 0.10 -1.00 rotate -0 -0 0
$attachment "1" "Bunker_Gun.Gun_Pitch" 6.44 -1.37 0.00 rotate 3 -90 0
$attachment "light" "Bunker_Gun.Gun_Pitch" 25.46 0.45 -2.28 rotate 0 0 0
$attachment "L_hand" "RebelMG.L_hand" 0 0 0 rotate 0 0 0 rigid
$attachment "R_hand" "RebelMG.R_hand" 0 0 0 rotate 0 0 0 rigid
$attachment "aimrotation" "Bunker_Gun.Base" 0 15 0 rotate -83 90 180


$poseparameter "aim_yaw" -60 60 loop 0
$poseparameter "aim_pitch" -35 50 loop 0
//$weightlist nohands "Bunker_Gun.Base" 1.0 "RebelMG.L_hand" 0.0 "RebelMG.R_hand" 0.0

$sequence "idle" {
	"bunker_gun01_anims\idle.smd"
	activity "ACT_BUNKER_GUN_ACTIVE_IDLE" 1
	loop
}

$sequence "activate" {
	"bunker_gun01_anims\activate.smd"
	activity "ACT_BUNKER_GUN_ACTIVATE" 1
}

$sequence "fire" {
	"bunker_gun01_anims\fire.smd"
	activity "ACT_BUNKER_GUN_FIRE" 1
	{ event 6001 0 "1" }
}

$sequence "retract" {
	"bunker_gun01_anims\retract.smd"
	activity "ACT_BUNKER_GUN_RETRACT" 1
}

$sequence "idle_inactive" {
	"bunker_gun01_anims\idle_inactive.smd"
	activity "ACT_BUNKER_GUN_INACTIVE_IDLE" 1
}

/*
$sequence "aim" {
	"up_right" 		"up_center" 	"up_left"
	"mid_right" 	"mid_center" 	"mid_left"
	"down_right" 	"down_center" 	"down_left"
	autoplay
	blend "aim_yaw" -60 60
	blend "aim_pitch" -35 50
	delta
	hidden
//	weightlist nohands
}
*/

//=============================================================================================
// MAN_GUN AIMING
//=============================================================================================

$pushd rebelmg_anims

$animation Man_Gun_neutral "Man_Gun" frame 0 0

$animation Man_Gun_down_left "Man_Gun" frame 6 6 subtract Man_Gun_neutral 0
$animation Man_Gun_down_center "Man_Gun" frame 1 1 subtract Man_Gun_neutral 0
$animation Man_Gun_down_right "Man_Gun" frame 9 9 subtract Man_Gun_neutral 0
$animation Man_Gun_mid_left "Man_Gun" frame 4 4 subtract Man_Gun_neutral 0
$animation Man_Gun_mid_center "Man_Gun" frame 0 0 subtract Man_Gun_neutral 0
$animation Man_Gun_mid_right "Man_Gun" frame 3 3 subtract Man_Gun_neutral 0
$animation Man_Gun_up_left "Man_Gun" frame 5 5 subtract Man_Gun_neutral 0
$animation Man_Gun_up_center "Man_Gun" frame 2 2 subtract Man_Gun_neutral 0
$animation Man_Gun_up_right "Man_Gun" frame 8 8 subtract Man_Gun_neutral 0

$sequence aim  {
			Man_Gun_up_right Man_Gun_up_center Man_Gun_up_left 
		    Man_Gun_mid_right Man_Gun_mid_center Man_Gun_mid_left 
			Man_Gun_down_right Man_Gun_down_center Man_Gun_down_left 
			blendwidth 3 blend aim_yaw -60 60 blend aim_pitch -35 50 delta } autoplay hidden

$popd

$collisionjoints "bunker_gun01_physics.smd"
{
	$mass 1

}

$keyvalues
{
	bone_followers 
	{
		"bone"		"Bunker_Gun.Gun_Pitch"
	}
}
