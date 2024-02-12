
$modelname "props_combine\bunker_gun01.mdl"

$bodygroup "studio"
{
	studio "bunker_gun01_reference.smd"
}

$lod 10
{
	replacemodel "bunker_gun01_reference.smd" "bunker_gun01_reference_lod1.smd"
	replacebone "Bunker_Gun.L_hand" "Bunker_Gun.Gun_Pitch"
	replacebone "Bunker_Gun.R_hand" "Bunker_Gun.Gun_Pitch"
	nofacial
}
$lod 13
{
	replacemodel "bunker_gun01_reference.smd" "bunker_gun01_reference_lod2.smd"
	replacebone "Bunker_Gun.L_hand" "Bunker_Gun.Gun_Pitch"
	replacebone "Bunker_Gun.R_hand" "Bunker_Gun.Gun_Pitch"
	nofacial
}
$lod 16
{
	replacemodel "bunker_gun01_reference.smd" "bunker_gun01_reference_lod3.smd"
	replacebone "Bunker_Gun.L_hand" "Bunker_Gun.Gun_Pitch"
	replacebone "Bunker_Gun.R_hand" "Bunker_Gun.Gun_Pitch"
	nofacial
}
$lod 20
{
	replacemodel "bunker_gun01_reference.smd" "bunker_gun01_reference_lod4.smd"
	replacebone "Bunker_Gun.L_hand" "Bunker_Gun.Gun_Pitch"
	replacebone "Bunker_Gun.R_hand" "Bunker_Gun.Gun_Pitch"
	nofacial
}

$surfaceprop "metal"

$contents "solid"

$illumposition -0.174 1.67 10.144

$noforcedfade

$cdmaterials "models\props_combine\"

$attachment "muzzle" "Bunker_Gun.Gun_Pitch" 26.27 0.01 0 rotate 0 0 0
$attachment "light" "Bunker_Gun.Gun_Pitch" 25.46 0.45 -2.28 rotate 0 0 0
$attachment "L_hand" "Bunker_Gun.L_hand" 0 0 0 rotate 0 0 0
$attachment "R_hand" "Bunker_Gun.R_hand" 0 0 0 rotate 0 0 0
$attachment "aimrotation" "Bunker_Gun.Base" 0 15 0 rotate -83 90 180

$cbox 0 0 0 0 0 0

$bbox -24.557 -8.073 0 21.216 7.726 20.288


$poseparameter "aim_yaw" -60 60 loop 0
$poseparameter "aim_pitch" -35 50 loop 0

$animation "neutral" "bunker_gun01_anims\neutral.smd" {
	fps 30
}

$animation "down_left" "bunker_gun01_anims\down_left.smd" {
	fps 30
}

$animation "down_center" "bunker_gun01_anims\down_center.smd" {
	fps 30
}

$animation "down_right" "bunker_gun01_anims\down_right.smd" {
	fps 30
}

$animation "mid_left" "bunker_gun01_anims\mid_left.smd" {
	fps 30
}

$animation "mid_center" "bunker_gun01_anims\mid_center.smd" {
	fps 30
}

$animation "mid_right" "bunker_gun01_anims\mid_right.smd" {
	fps 30
}

$animation "up_left" "bunker_gun01_anims\up_left.smd" {
	fps 30
}

$animation "up_center" "bunker_gun01_anims\up_center.smd" {
	fps 30
}

$animation "up_right" "bunker_gun01_anims\up_right.smd" {
	fps 30
}

$sequence "idle" {
	"bunker_gun01_anims\idle.smd"
	activity "ACT_BUNKER_GUN_ACTIVE_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "activate" {
	"bunker_gun01_anims\activate.smd"
	activity "ACT_BUNKER_GUN_ACTIVATE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "fire" {
	"bunker_gun01_anims\fire.smd"
	activity "ACT_BUNKER_GUN_FIRE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "retract" {
	"bunker_gun01_anims\retract.smd"
	activity "ACT_BUNKER_GUN_RETRACT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "idle_inactive" {
	"bunker_gun01_anims\idle_inactive.smd"
	activity "ACT_BUNKER_GUN_INACTIVE_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "aim" {
	"up_right"
	"up_center"
	"up_left"
	"mid_right"
	"mid_center"
	"mid_left"
	"down_right"
	"down_center"
	"down_left"
	autoplay
	blend "aim_yaw" -60 60
	blend "aim_pitch" -35 50
	delta
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
}

$collisionjoints "bunker_gun01_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}

$keyvalues
{
	bone_followers 
	{
		"bone"		"Bunker_Gun.Gun_Pitch"
	}
}
