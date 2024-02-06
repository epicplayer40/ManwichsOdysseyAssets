// Rebel MG Turret
// Original meshes by Valve, edit by Stacker, modified by epicplayer

$ModelName "weapons\w_rebelmg.mdl"
$Body studio w_resistancemg2.smd

$SurfaceProp "weapon"

$Contents "solid"

$IllumPosition -0.393 -1.19 -0.299

$CDMaterials models\weapons\w_AR2 models\items

$attachment "0" "ValveBiped.Weapon_bone" 19.57 0.74 -0.26 rotate 2.27 -0.02 176.56
$attachment "1" "ValveBiped.Weapon_bone" 4.44 1.37 0.00 rotate 3 90 -180 //I don't know how, I don't know why, but the brass always ejects BACKWARDS!

$Sequence "idle" w_ar2_anims\idle.smd ACT_VM_IDLE 1
$Sequence "attack1" { 
	"w_ar2_anims\attack1.smd"
//	activity "ACT_RANGE_ATTACK_AR2" 1
	{ event 5003 0 "0" }
//	{ event 3007 0 "1" }
	{ event 6001 0 "1" }
}

$Sequence "attack2" {
	"w_ar2_anims\attack2.smd"
	activity "ACT_RANGE_ATTACK_AR2_GRENADE" 1
	{ event 3012 1 "" }
	loop
}

$Sequence "attack3" {
	"w_ar2_anims\attack1.smd"
	activity "ACT_RANGE_ATTACK_AR2" 1
	{ event 5003 0 "0" }
	{ event 3007 0 "1" }
	{ event 6001 0 "1" }
}

$CollisionModel "w_ar2_physics.smd"
{
	$mass 10
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
