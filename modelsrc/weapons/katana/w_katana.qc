// Created by Crowbar 0.74

$modelname "weapons/W_katana.mdl"

$bodygroup "studio"
{
	studio "w_katana.smd"
}


$surfaceprop "weapon"

$contents "solid"

$illumposition -1.88 -1.59 2.24

$cdmaterials "models\weapons\w_katana\"

$cbox 0 0 0 0 0 0

$bbox -23.29 -4.82 -1.82 19.53 1.64 6.3

$hboxset "default"
$hbox 0 "ValveBiped.Bip01_R_Hand" 0 -2.1 -6.76 2.94 -2.1 0
$skipboneinbbox

$definebone "ValveBiped.Bip01_R_Hand" "" -0.631371 -6.659214 -3.65312 -74.602065 -163.121228 -102.295586 0 0 0 0 0 0


$sequence "idle" {
	"w_katana_anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "attack1" {
	"w_katana_anims\attack1.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "w_katana_physics.smd"
{
	$mass 8
	$inertia 1
	$damping 0
	$rotdamping 1
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
