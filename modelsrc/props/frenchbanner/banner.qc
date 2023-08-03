// Created by Crowbar 0.74

$modelname "props_ffl/banner.mdl"

$staticprop

$bodygroup "Body"
{
	studio "banner_ref.smd"
}

$texturegroup banners
{
{"carpetfloor001a"}
{"carpetfloor001b"}
{"carpetfloor001c"}
{"carpetfloor001d"}
}

$surfaceprop "plaster"

$contents "solid"

$illumposition 0 0 0

$cdmaterials "models\props_ffl\banner\"

$cbox 0 0 0 0 0 0

$bbox -71.25 -312.26 -169.25 71.25 0 169.252

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"banner_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "banner_physics.smd"
{
	$mass 1205.639
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 13

}
